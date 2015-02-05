library("bitops", lib.loc="~/R/win-library/3.1")
library("gplots", lib.loc="~/R/win-library/3.1")
library("ggplot2", lib.loc="~/R/win-library/3.1")
library("grid", lib.loc="~/R/win-library/3.1")
library("plyr", lib.loc="~/R/win-library/3.1")
library("RCurl", lib.loc="~/R/win-library/3.1")
library("reshape2", lib.loc="~/R/win-library/3.1")
library("knitr", lib.loc="~/R/win-library/3.1")

ggplot(df, aes(x=ARTIST, y=UNIT_PRICE)) + geom_point(aes(size=UNIT_PRICE))

ggplot(df2, aes(x=CUSTOMER_STATE)) + geom_bar()

ggplot(df3, aes(x=ORDER_ID, y=CUSTOMER_ID)) + geom_violin()

ggplot(df4, aes(x=ITEM_ID)) + geom_bar()

p <- ggplot(df, aes(x=ORDER_DATE, y=SHIPPED_DATE, color=as.factor(UNIT_PRICE))) + geom_point() + facet_wrap(~CUSTOMER_STATE)
p2 <- ggplot(df, aes(x=ORDER_DATE, y=SHIPPED_DATE, color=as.factor(TITLE))) + geom_point() + facet_wrap(~CUSTOMER_STATE)
p3 <- ggplot(df, aes(x=ORDER_DATE, y=SHIPPED_DATE, color=as.factor(ARTIST))) + geom_point() + facet_wrap(~CUSTOMER_STATE)