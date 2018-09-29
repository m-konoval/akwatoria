'use strict';


var gulp = require('gulp'),
    less = require('gulp-less'),
    lessAutoprefix = require('less-plugin-autoprefix');


gulp.task('less', function () {
    var autoprefix = new lessAutoprefix({ browsers: ['last 2 versions'] });

    return gulp.src('./less/custom.less')
      .pipe(less({
        plugins: [autoprefix]
      }))
      .pipe(gulp.dest('./css'));
});


gulp.task('watch', function() {
    gulp.watch('less/**/*.less', ['less']);
});


gulp.task('default', ['watch', 'less']);