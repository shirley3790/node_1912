var gulp = require('gulp');
var replace = require('gulp-replace');
gulp.task('replaceTask', function () {
    gulp.src('src/*')
        .pipe(replace(/8884/gi, '8884/hypergraph'))
        .pipe(gulp.dest('dest/'));
});