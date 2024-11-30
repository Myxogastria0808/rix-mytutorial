library(ggplot2)

ggplot(
    data = iris,
    mapping = aes(
        x = Sepal.Length,
        y = Sepal.Width,
        color = Species
    )
) + geom_point()

ggsave("sample.png")