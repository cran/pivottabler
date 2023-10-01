## ----eval=FALSE---------------------------------------------------------------
#  library(pivottabler)
#  # arguments:  qhpvt(dataFrame, rows, columns, calculations, ...)
#  qhpvt(bhmtrains, "TOC", "TrainCategory", "n()") # TOC = Train Operating Company

## ----eval=FALSE---------------------------------------------------------------
#  library(pivottabler)
#  pt <- PivotTable$new()
#  pt$addData(bhmtrains)
#  pt$addColumnDataGroups("TrainCategory")
#  pt$addRowDataGroups("TOC")
#  pt$defineCalculation(calculationName="TotalTrains", summariseExpression="n()")
#  pt$renderPivot()

## ----eval=FALSE---------------------------------------------------------------
#  # produces no pivot table
#  library(pivottabler)
#  pt <- PivotTable$new()
#  pt$addData(bhmtrains)
#  pt$renderPivot()

## ----eval=FALSE---------------------------------------------------------------
#  # specify the column headings
#  library(pivottabler)
#  pt <- PivotTable$new()
#  pt$addData(bhmtrains)
#  pt$addColumnDataGroups("TrainCategory")   #    << **** LINE ADDED **** <<
#  pt$renderPivot()

## ----eval=FALSE---------------------------------------------------------------
#  # specify the row headings
#  library(pivottabler)
#  pt <- PivotTable$new()
#  pt$addData(bhmtrains)
#  pt$addColumnDataGroups("TrainCategory")
#  pt$addRowDataGroups("TOC")                #    << **** LINE ADDED **** <<
#  pt$renderPivot()

## ----eval=FALSE---------------------------------------------------------------
#  # specifying a calculation
#  library(pivottabler)
#  pt <- PivotTable$new()
#  pt$addData(bhmtrains)
#  pt$addColumnDataGroups("TrainCategory")
#  pt$addRowDataGroups("TOC")                #     **** LINE BELOW ADDED ****
#  pt$defineCalculation(calculationName="TotalTrains", summariseExpression="n()")
#  pt$renderPivot()

## ----eval=FALSE, comment=""---------------------------------------------------
#  library(pivottabler)
#  pt <- PivotTable$new()
#  pt$addData(bhmtrains)
#  pt$addColumnDataGroups("TrainCategory")
#  pt$addRowDataGroups("TOC")
#  pt$defineCalculation(calculationName="TotalTrains", summariseExpression="n()")
#  pt$evaluatePivot()
#  pt

## ----eval=FALSE---------------------------------------------------------------
#  library(pivottabler)
#  pt <- PivotTable$new()
#  pt$addData(bhmtrains)
#  pt$addColumnDataGroups("TrainCategory")
#  pt$addColumnDataGroups("PowerType")    #    << **** CODE CHANGE **** <<
#  pt$addRowDataGroups("TOC")
#  pt$defineCalculation(calculationName="TotalTrains", summariseExpression="n()")
#  pt$renderPivot()

## ----eval=FALSE---------------------------------------------------------------
#  library(pivottabler)
#  pt <- PivotTable$new()
#  pt$addData(bhmtrains)
#  pt$addColumnDataGroups("TrainCategory")
#  pt$addColumnDataGroups("PowerType", expandExistingTotals=TRUE) # << ** CODE CHANGE ** <<
#  pt$addRowDataGroups("TOC")
#  pt$defineCalculation(calculationName="TotalTrains", summariseExpression="n()")
#  pt$renderPivot()

## ----eval=FALSE---------------------------------------------------------------
#  library(pivottabler)
#  pt <- PivotTable$new()
#  pt$addData(bhmtrains)
#  pt$addColumnDataGroups("TrainCategory")
#  pt$addRowDataGroups("TOC")
#  pt$addRowDataGroups("PowerType")    #    << **** CODE CHANGE **** <<
#  pt$defineCalculation(calculationName="TotalTrains", summariseExpression="n()")
#  pt$renderPivot()

## ----eval=FALSE---------------------------------------------------------------
#  library(pivottabler)
#  pt <- PivotTable$new()
#  pt$addData(bhmtrains)
#  pt$addColumnDataGroups("TrainCategory")
#  pt$addRowDataGroups("TOC")
#  pt$addRowDataGroups("PowerType")
#  pt$addRowDataGroups("SchedSpeedMPH")    #    << **** CODE CHANGE **** <<
#  pt$defineCalculation(calculationName="TotalTrains", summariseExpression="n()")
#  pt$renderPivot()

## ----eval=FALSE---------------------------------------------------------------
#  library(pivottabler)
#  pt <- PivotTable$new()
#  pt$addData(bhmtrains)
#  pt$addColumnDataGroups("TrainCategory")
#  pt$addRowDataGroups("TOC", totalCaption="Grand Total")    #    << **** CODE CHANGE **** <<
#  pt$addRowDataGroups("PowerType")
#  pt$addRowDataGroups("SchedSpeedMPH", addTotal=FALSE)      #    << **** CODE CHANGE **** <<
#  pt$defineCalculation(calculationName="TotalTrains", summariseExpression="n()")
#  pt$renderPivot()

## ----eval=FALSE---------------------------------------------------------------
#  library(pivottabler)
#  pt <- PivotTable$new()
#  pt$addData(bhmtrains)
#  pt$addColumnDataGroups("TrainCategory")
#  pt$addRowDataGroups("TOC",
#                      outlineBefore=list(isEmpty=FALSE,
#                                         groupStyleDeclarations=list(color="blue")),
#                      outlineTotal=list(groupStyleDeclarations=list(color="blue")))
#  pt$addRowDataGroups("PowerType", addTotal=FALSE)
#  pt$addRowDataGroups("SchedSpeedMPH", addTotal=FALSE)
#  pt$defineCalculation(calculationName="TotalTrains", summariseExpression="n()")
#  pt$renderPivot()

## ----eval=FALSE---------------------------------------------------------------
#  library(pivottabler)
#  pt <- PivotTable$new()
#  pt$addData(bhmtrains)
#  pt$addColumnDataGroups("TrainCategory")
#  pt$addRowDataGroups("TOC",
#                      outlineBefore=list(groupStyleDeclarations=list(color="blue")),
#                      outlineAfter=list(isEmpty=FALSE,
#                                        mergeSpace="dataGroupsOnly",
#                                        caption="Total ({value})",
#                                        groupStyleDeclarations=list("font-style"="italic")),
#                      outlineTotal=list(groupStyleDeclarations=list(color="blue"),
#                                        cellStyleDeclarations=list("color"="blue")))
#  pt$addRowDataGroups("PowerType", addTotal=FALSE)
#  pt$defineCalculation(calculationName="TotalTrains", summariseExpression="n()")
#  pt$renderPivot()

## ----eval=FALSE, comment=""---------------------------------------------------
#  library(pivottabler)
#  qpvt(bhmtrains, "TOC", "TrainCategory", "n()")

## ----eval=FALSE---------------------------------------------------------------
#  library(pivottabler)
#  qhpvt(bhmtrains, c("=", "TOC"), c("TrainCategory", "PowerType"),
#      c("Number of Trains"="n()", "Maximum Speed"="max(SchedSpeedMPH, na.rm=TRUE)"))

## ----eval=FALSE---------------------------------------------------------------
#  library(pivottabler)
#  qhpvt(bhmtrains, "TOC", "TrainCategory", "mean(SchedSpeedMPH, na.rm=TRUE)", format="%.0f")

## ----eval=FALSE---------------------------------------------------------------
#  library(pivottabler)
#  qhpvt(bhmtrains, "TOC", "TrainCategory",
#       c("Mean Speed"="mean(SchedSpeedMPH, na.rm=TRUE)", "Std Dev Speed"="sd(SchedSpeedMPH, na.rm=TRUE)"),
#       formats=list("%.0f", "%.1f"))

## ----eval=FALSE---------------------------------------------------------------
#  library(pivottabler)
#  qhpvt(bhmtrains, "TOC", "TrainCategory",
#       c("Mean Speed"="mean(SchedSpeedMPH, na.rm=TRUE)", "Std Dev Speed"="sd(SchedSpeedMPH, na.rm=TRUE)"),
#       formats=list("%.0f", "%.1f"), totals=list("TOC"="All TOCs", "TrainCategory"="All Categories"))

