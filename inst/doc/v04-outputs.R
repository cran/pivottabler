## ---- message=FALSE, warning=FALSE---------------------------------------
library(pivottabler)
pt <- PivotTable$new()
pt$addData(bhmtrains)
pt$addColumnDataGroups("PowerType")
pt$addRowDataGroups("TOC")
pt$defineCalculation(calculationName="TotalTrains", summariseExpression="n()")
pt$renderPivot()

## ---- message=FALSE, warning=FALSE, comment=""---------------------------
library(pivottabler)
pt <- PivotTable$new()
pt$addData(bhmtrains)
pt$addColumnDataGroups("PowerType")
pt$addRowDataGroups("TOC")
pt$defineCalculation(calculationName="TotalTrains", summariseExpression="n()")
pt$evaluatePivot()
pt

## ---- message=FALSE, warning=FALSE, comment=""---------------------------
library(pivottabler)
pt <- PivotTable$new()
pt$addData(bhmtrains)
pt$addColumnDataGroups("PowerType")
pt$addRowDataGroups("TOC")
pt$defineCalculation(calculationName="TotalTrains", summariseExpression="n()")
pt

## ---- message=FALSE, warning=FALSE, comment=""---------------------------
library(pivottabler)
library(htmltools)
pt <- PivotTable$new()
pt$addData(bhmtrains)
pt$addColumnDataGroups("PowerType")
pt$addRowDataGroups("TOC")
pt$defineCalculation(calculationName="TotalTrains", summariseExpression="n()")
pt$evaluatePivot()
cat(paste(pt$getHtml(), sep="", collapse="\n"))
cat(pt$getCss())

## ---- message=FALSE, warning=FALSE, eval=TRUE, comment=""----------------
library(pivottabler)
pt <- PivotTable$new()
pt$addData(bhmtrains)
pt$addColumnDataGroups("PowerType")
pt$addRowDataGroups("TOC")
pt$defineCalculation(calculationName="TotalTrains", summariseExpression="n()")
pt$evaluatePivot()
pt$asMatrix()

## ---- message=FALSE, warning=FALSE, eval=TRUE, comment=""----------------
library(pivottabler)
pt <- PivotTable$new()
pt$addData(bhmtrains)
pt$addColumnDataGroups("PowerType")
pt$addRowDataGroups("TOC")
pt$defineCalculation(calculationName="TotalTrains", summariseExpression="n()")
pt$evaluatePivot()
pt$asMatrix(includeHeaders=FALSE, rawValue=TRUE)

## ---- message=FALSE, warning=FALSE, comment=""---------------------------
library(pivottabler)
pt <- PivotTable$new()
pt$addData(bhmtrains)
pt$addColumnDataGroups("TrainCategory")
pt$addColumnDataGroups("PowerType")
pt$addRowDataGroups("TOC")
pt$defineCalculation(calculationName="TotalTrains", summariseExpression="n()")
pt$renderPivot()
pt$asMatrix()

## ---- message=FALSE, warning=FALSE, comment=""---------------------------
library(pivottabler)
pt <- PivotTable$new()
pt$addData(bhmtrains)
pt$addColumnDataGroups("TrainCategory")
pt$addColumnDataGroups("PowerType")
pt$addRowDataGroups("TOC")
pt$defineCalculation(calculationName="TotalTrains", summariseExpression="n()")
pt$evaluatePivot()
pt$asMatrix(repeatHeaders=TRUE)

## ---- message=FALSE, warning=FALSE, eval=TRUE, comment=""----------------
library(pivottabler)
pt <- PivotTable$new()
pt$addData(bhmtrains)
pt$addColumnDataGroups("PowerType")
pt$addRowDataGroups("TOC")
pt$defineCalculation(calculationName="TotalTrains", summariseExpression="n()")
pt$evaluatePivot()
df <- pt$asDataFrame()
df
str(df)

## ---- message=FALSE, warning=FALSE, comment=""---------------------------
library(pivottabler)
pt <- PivotTable$new()
pt$addData(bhmtrains)
pt$addColumnDataGroups("TrainCategory")
pt$addColumnDataGroups("PowerType")
pt$addRowDataGroups("TOC")
pt$defineCalculation(calculationName="TotalTrains", summariseExpression="n()")
pt$evaluatePivot()
pt$asDataFrame()

## ---- message=FALSE, warning=FALSE, comment=""---------------------------
library(pivottabler)
pt <- PivotTable$new()
pt$addData(bhmtrains)
pt$addColumnDataGroups("TrainCategory")
pt$addColumnDataGroups("PowerType")
pt$addRowDataGroups("TOC")
pt$defineCalculation(calculationName="TotalTrains", summariseExpression="n()")
pt$evaluatePivot()
pt$asDataFrame(separator="|")

## ---- message=FALSE, warning=FALSE, eval=TRUE, comment=""----------------
library(pivottabler)
pt <- PivotTable$new()
pt$addData(bhmtrains)
pt$addColumnDataGroups("PowerType")
pt$addRowDataGroups("TOC")
pt$defineCalculation(calculationName="TotalTrains", summariseExpression="n()")
pt$evaluatePivot()
pt$asDataFrame()
df <- pt$asTidyDataFrame()
str(df)
head(df)

## ---- message=FALSE, warning=FALSE, eval=TRUE, comment=""----------------
library(pivottabler)
library(dplyr)
library(lubridate)
trains <- mutate(bhmtrains, 
                 GbttDate=if_else(is.na(GbttArrival), GbttDeparture, GbttArrival),
                 GbttMonth=make_date(year=year(GbttDate), month=month(GbttDate), day=1))

pt <- PivotTable$new()
pt$addData(trains)
pt$addColumnDataGroups("GbttMonth", dataFormat=list(format="%B %Y"))
pt$addColumnDataGroups("PowerType")
pt$addRowDataGroups("TOC")
pt$defineCalculation(calculationName="TotalTrains", summariseExpression="n()")
pt$evaluatePivot()

# convert the pivot table to a basic table, insert a new row, merge cells and highlight
bt <- pt$asBasicTable()
bt$cells$insertRow(5)
bt$cells$setCell(5, 2, rawValue="The values below are significantly higher than expected.", 
                 styleDeclarations=list("text-align"="left", "background-color"="yellow",
                                        "font-weight"="bold", "font-style"="italic"))
bt$mergeCells(rFrom=5, cFrom=2, rSpan=1, cSpan=13)
bt$setStyling(rFrom=6, cFrom=2, rTo=6, cTo=14, 
              declarations=list("text-align"="left", "background-color"="yellow"))
bt$renderTable()

