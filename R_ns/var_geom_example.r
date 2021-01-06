require(ggplot2)
dat <- mtcars

var_geom <- function(mapping = ggplot2::aes(x, y),
                     dat,
                     geom = ggplot2::geom_point){
  geom(mapping, dat)
}

## goal:
ggplot() +
  geom_point(aes(cyl, mpg), mtcars)


ggplot() +
  var_geom(aes(cyl, mpg), mtcars, geom = geom_boxplot) +
  var_geom(aes(cyl), mtcars, geom = geom_density)
