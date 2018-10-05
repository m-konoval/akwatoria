<?php
/*  
 *  Миниатюра изображения
 *  version: 1.4.6
 *  author: xspire
 *
 *  Вызов:
		xs_post_thumbnail( $args );
		
		Возможные параметры:
		$args = array(
			'post_id' 	 	  => '',        // Не обязательно (если запись находится в цмкле)
			'image_size' 	  => 'large',	// Размер изображения
			'post_link' 	  => false,     // Отображать ссылку на запись?
			'image_link' 	  => false,     // Отображать ссылку на изображение?
			'use_first_image' => true,		// Выводить первое изображение с контента, если миниатюра не задана?
			'use_no_photo' 	  => true,		// Выводить no-photo?
			'echo' 		 	  => true		// Выводить результат, или возвращать
		);
 *
 *  Алгоритм работы для no-photo:
	Функция ищет изображения в папке images в корне темы. Тип изображения не важен - png/jpg/другие.
	В первую очередь выводятся изображения с названиями для размеров - no-photo-"image_size" ( Например: no-photo-medium )
 *
 *  Список фильтров:
	add_filter( 'xs_thumbnail_image', 'your_function' ); // HTML изображения
	add_filter( 'xs_thumbnail_html', 'your_function' ); // Финальный HTML ( вместе с ссылкой, если есть )
 *
*/

/* Post thumbnails */
/* ====================================== */
function xs_post_thumbnail($args = array()) {
	
	$defaults = array(
		'post_id' 	 	  => '',
		'image_size' 	  => 'large',
		'post_link' 	  => false,
		'image_link' 	  => false,
		'use_first_image' => true,
		'use_no_photo' 	  => true,
		'echo' 		 	  => true
	);

	$params = wp_parse_args( $args, $defaults );
	extract($params);
	
	$image_exist = true;
	$image_no_found = false;
	
	
	//Check post ID
	global $post;
    if ( !$post_id && is_object($post) ) {
        $post_id = $post->ID;
	}

	/* Thumbnail image */
	if( has_post_thumbnail($post_id) ) {
		$thumbnail = get_the_post_thumbnail( $post_id, $image_size, array( 'title' => get_the_title($post_id), 'alt' => get_the_title($post_id) ) );
	}
	else{
		/* Get first image from content */
		if( $use_first_image ) {
			
			$attachments = get_children( array(
				'post_parent' 		=> $post_id,
				'post_type' 		=> 'attachment',
				'numberposts' 		=> 1,
				'post_mime_type'	=> 'image'
			) );
			$attachments = array_values($attachments);
			
			if( !empty($attachments[0]->ID) ) {
				$image_data = wp_get_attachment_image_src( $attachments[0]->ID, $image_size );
				$thumbnail = '<img src="' . $image_data[0] . '" alt="'. get_the_title($post_id) .'" width="'. $image_data[1] .'" height="'. $image_data[2] .'" />';	
			}
			else{
				$image_no_found = true;
			}
		}
		else{
			$image_no_found = true;
		}
	}
	
	
	/* No photo */
	if( $use_no_photo && ( $image_no_found || empty($thumbnail) ) ) {
		$search_sized = glob( TEMPLATEPATH . '/images/no-photo-' . $image_size . '*' );
		$search_default = glob( TEMPLATEPATH . '/images/no-photo*' );

		if( !empty($search_sized[0]) ) {
			$no_photo_name = $search_sized[0];
		}
		elseif( !empty($search_default[0]) ) {
			$no_photo_name = $search_default[0];
		}
		
		if( !empty($no_photo_name) ) {
			$no_photo_name = basename( $no_photo_name );
		}
		
		if( !empty($no_photo_name) ) {
			$thumbnail = '<img src="' . TEMPLATEDIR .'/images/' . $no_photo_name . '" />';	
		}
		else{
			$image_exist = false;
		}
	}
	elseif( empty($thumbnail) ) {
		$image_exist = false;
	}
	
	
	/* Return, if image no find */
	if( empty($image_exist) ) {
		return;
	}


	/* Thumbnail Filter */
	$thumbnail = apply_filters( 'xs_thumbnail_image', $thumbnail );


	/* HTML */
	if( $post_link == true ) {
		$html = sprintf( '<a href="%1$s" class="thumb post-link">%2$s</a>', get_permalink( $post_id ), $thumbnail );
	}
	elseif( $image_link == true ) {
		$full_thumb_url = wp_get_attachment_image_src( get_post_thumbnail_id( $post_id ), 'full' );
		$html = sprintf( '<a href="%1$s" class="thumb image-link">%2$s</a>', $full_thumb_url[0], $thumbnail );
	}
	else{
		$html = $thumbnail;
	}

	
	/* HTML Filter */
	$html = apply_filters( 'xs_thumbnail_html', $html );
	
	
	/* Output */
	if( $echo ) {
		return print( $html );
	}
		
	return $html;
}