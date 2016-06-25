library(ggplot2)
Scorecard <- read.csv("~/Desktop/data 2/scorecard/Most-Recent-Cohorts-Scorecard-Elements.csv")

attach(Scorecard)

Scorecard$SAT_AVG = as.numeric(Scorecard$SAT_AVG)

qplot(SAT_AVG,
      geom="histogram"
)





geom_boxplot(outlier.colour="black", outlier.shape=16,
             outlier.size=2, notch=FALSE)


ggplot(Scorecard, aes(x=MENONLY, y=SAT_AVG)) + geom_boxplot(outlier.shape = NA)

ggplot(Scorecard, aes(x=WOMENONLY, y=SAT_AVG)) + geom_boxplot(outlier.shape = NA)


ggplot(na.omit(Scorecard[, c("STABBR", "SAT_AVG")]), aes(x=STABBR, y=SAT_AVG)) + geom_boxplot(outlier.shape = NA)


ggplot(Scorecard, aes(x=WOMENONLY, y=DISTANCEONLY)) + geom_boxplot()


ggplot(Scorecard, aes(x = STABBR)) + geom_bar()