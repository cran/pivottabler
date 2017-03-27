## ---- echo=FALSE---------------------------------------------------------
library(pivottabler)
renderBasicTable(t(bhmtrains[1:4,]),rowNamesAsHeader=TRUE)

## ---- warning=FALSE------------------------------------------------------
library(pivottabler)
pt <- PivotTable$new()
pt$addData(bhmtrains)
pt$addColumnDataGroups("TrainCategory")
pt$addRowDataGroups("TOC")
pt$defineCalculation(calculationName="TotalTrains", summariseExpression="n()")
pt$renderPivot()

## ---- warning=FALSE------------------------------------------------------
# produces no pivot table
library(pivottabler)
pt <- PivotTable$new()
pt$addData(bhmtrains)
pt$renderPivot()

## ---- warning=FALSE------------------------------------------------------
# specify the column headings
library(pivottabler)
pt <- PivotTable$new()
pt$addData(bhmtrains)
pt$addColumnDataGroups("TrainCategory")   #    << **** LINE ADDED **** <<
pt$renderPivot()

## ---- warning=FALSE------------------------------------------------------
# specify the row headings
library(pivottabler)
pt <- PivotTable$new()
pt$addData(bhmtrains)
pt$addColumnDataGroups("TrainCategory")
pt$addRowDataGroups("TOC")                #    << **** LINE ADDED **** <<
pt$renderPivot()

## ---- warning=FALSE------------------------------------------------------
# specifying a calculation
library(pivottabler)
pt <- PivotTable$new()
pt$addData(bhmtrains)
pt$addColumnDataGroups("TrainCategory")
pt$addRowDataGroups("TOC")                #     **** LINE BELOW ADDED ****
pt$defineCalculation(calculationName="TotalTrains", summariseExpression="n()")
pt$renderPivot()

## ---- warning=FALSE------------------------------------------------------
library(pivottabler)
pt <- PivotTable$new()
pt$addData(bhmtrains)
pt$addColumnDataGroups("TrainCategory")
pt$addColumnDataGroups("PowerType")    #    << **** CODE CHANGE **** <<
pt$addRowDataGroups("TOC")
pt$defineCalculation(calculationName="TotalTrains", summariseExpression="n()")
pt$renderPivot()

## ---- warning=FALSE------------------------------------------------------
library(pivottabler)
pt <- PivotTable$new()
pt$addData(bhmtrains)
pt$addColumnDataGroups("TrainCategory")
pt$addColumnDataGroups("PowerType", expandExistingTotals=TRUE) # << ** CODE CHANGE ** <<
pt$addRowDataGroups("TOC")
pt$defineCalculation(calculationName="TotalTrains", summariseExpression="n()")
pt$renderPivot()

## ---- warning=FALSE------------------------------------------------------
library(pivottabler)
pt <- PivotTable$new()
pt$addData(bhmtrains)
pt$addColumnDataGroups("TrainCategory")
pt$addRowDataGroups("TOC")
pt$addRowDataGroups("PowerType")    #    << **** CODE CHANGE **** <<
pt$defineCalculation(calculationName="TotalTrains", summariseExpression="n()")
pt$renderPivot()

## ---- warning=FALSE------------------------------------------------------
library(pivottabler)
pt <- PivotTable$new()
pt$addData(bhmtrains)
pt$addColumnDataGroups("TrainCategory")
pt$addRowDataGroups("TOC")
pt$addRowDataGroups("PowerType")
pt$addRowDataGroups("SchedSpeedMPH")    #    << **** CODE CHANGE **** <<
pt$defineCalculation(calculationName="TotalTrains", summariseExpression="n()")
pt$renderPivot()

## ---- warning=FALSE------------------------------------------------------
library(pivottabler)
pt <- PivotTable$new()
pt$addData(bhmtrains)
pt$addColumnDataGroups("TrainCategory")
pt$addRowDataGroups("TOC", totalCaption="Grand Total")    #    << **** CODE CHANGE **** <<
pt$addRowDataGroups("PowerType")
pt$addRowDataGroups("SchedSpeedMPH", addTotal=FALSE)      #    << **** CODE CHANGE **** <<
pt$defineCalculation(calculationName="TotalTrains", summariseExpression="n()")
pt$renderPivot()

