## ---- warning=FALSE, comment="", echo=FALSE------------------------------
s <- "\\documentclass{article}\n\\begin{document}\nHello World!\n\\end{document}"
cat(s)

## ---- warning=FALSE------------------------------------------------------
library(pivottabler)
pt <- PivotTable$new()
pt$addData(bhmtrains)
pt$addColumnDataGroups("TrainCategory")
pt$addRowDataGroups("TOC")
pt$defineCalculation(calculationName="TotalTrains", summariseExpression="n()")
pt$renderPivot()

## ---- warning=FALSE, comment="", echo=FALSE------------------------------
library(pivottabler)
pt <- PivotTable$new()
pt$addData(bhmtrains)
pt$addColumnDataGroups("TrainCategory")
pt$addRowDataGroups("TOC")
pt$defineCalculation(calculationName="TotalTrains", summariseExpression="n()")
pt$evaluatePivot()
cat(pt$getLatex())

