## ---- warning=FALSE, eval=FALSE------------------------------------------
#  pivotStyles$addStyle(styleName="ColumnHeader", list(
#      font="0.75em arial",
#      padding="2px",
#      border="1px solid blue",
#      "vertical-align"="middle",
#      "text-align"="center",
#      "font-weight"="bold",
#      color="blue",
#      "background-color"="#FFFFFF"
#    ))

## ---- warning=FALSE------------------------------------------------------
# basic theme
library(pivottabler)
pt <- PivotTable$new()
pt$addData(bhmtrains)
pt$addColumnDataGroups("TrainCategory")
pt$addRowDataGroups("TOC")
pt$defineCalculation(calculationName="TotalTrains", summariseExpression="n()")
pt$theme <- "default"  # this theme is already the default, so this line isn't really needed
pt$renderPivot(styleNamePrefix="t0")

## ---- warning=FALSE------------------------------------------------------
# compact theme
library(pivottabler)
pt <- PivotTable$new()
pt$addData(bhmtrains)
pt$addColumnDataGroups("TrainCategory")
pt$addRowDataGroups("TOC")
pt$defineCalculation(calculationName="TotalTrains", summariseExpression="n()")
pt$theme <- "compact"
pt$renderPivot(styleNamePrefix="t1")

## ---- warning=FALSE------------------------------------------------------
# large plain theme
library(pivottabler)
pt <- PivotTable$new()
pt$addData(bhmtrains)
pt$addColumnDataGroups("TrainCategory")
pt$addRowDataGroups("TOC")
pt$defineCalculation(calculationName="TotalTrains", summariseExpression="n()")
pt$theme <- "largeplain"
pt$renderPivot(styleNamePrefix="t2")

## ---- warning=FALSE------------------------------------------------------
# define the colours
blue1Colors <- list(
  headerBackgroundColor = "rgb(68, 114, 196)",
  headerColor = "rgb(255, 255, 255)",
  cellBackgroundColor = "rgb(255, 255, 255)",
  cellColor = "rgb(0, 0, 0)",
  totalBackgroundColor = "rgb(186, 202, 233)",
  totalColor = "rgb(0, 0, 0)",
  borderColor = "rgb(48, 84, 150)"
)
# define the theme
theme <- getSimpleColoredTheme(parentPivot=pt, colors=blue1Colors, fontName="Verdana, Arial")
# create the pivot table
library(pivottabler)
pt <- PivotTable$new()
pt$addData(bhmtrains)
pt$addColumnDataGroups("TrainCategory")
pt$addRowDataGroups("TOC")
pt$defineCalculation(calculationName="TotalTrains", summariseExpression="n()")
pt$theme <- theme
pt$renderPivot(styleNamePrefix="t3")

## ---- warning=FALSE------------------------------------------------------
# define the colours
grayColors <- list(
  headerBackgroundColor = "rgb(128, 128, 128)",
  headerColor = "rgb(255, 255, 255)",
  cellBackgroundColor = "rgb(255, 255, 255)",
  cellColor = "rgb(0, 0, 0)",
  totalBackgroundColor = "rgb(192, 192, 192)",
  totalColor = "rgb(0, 0, 0)",
  borderColor = "rgb(64, 64, 64)"
)
# define the theme
theme <- getSimpleColoredTheme(parentPivot=pt, colors=grayColors, fontName="Courier New, Courier")
# create the pivot table
library(pivottabler)
pt <- PivotTable$new()
pt$addData(bhmtrains)
pt$addColumnDataGroups("TrainCategory")
pt$addRowDataGroups("TOC")
pt$defineCalculation(calculationName="TotalTrains", summariseExpression="n()")
pt$theme <- theme
pt$renderPivot(styleNamePrefix="t4")

## ---- warning=FALSE------------------------------------------------------
# define the colours
orangeColors <- list(
  headerBackgroundColor = "rgb(237, 125, 49)",
  headerColor = "rgb(255, 255, 255)",
  cellBackgroundColor = "rgb(255, 255, 255)",
  cellColor = "rgb(0, 0, 0)",
  totalBackgroundColor = "rgb(248, 198, 165)",
  totalColor = "rgb(0, 0, 0)",
  borderColor = "rgb(198, 89, 17)"
)
# define the theme
theme <- getSimpleColoredTheme(parentPivot=pt, colors=orangeColors, fontName="Garamond, arial")
# create the pivot table
library(pivottabler)
pt <- PivotTable$new()
pt$addData(bhmtrains)
pt$addColumnDataGroups("TrainCategory")
pt$addRowDataGroups("TOC")
pt$defineCalculation(calculationName="TotalTrains", summariseExpression="n()")
pt$theme <- theme
pt$renderPivot(styleNamePrefix="t5")

## ---- warning=FALSE------------------------------------------------------
# define the colours
greenColors <- list(
  headerBackgroundColor = "rgb(112, 173, 71)",
  headerColor = "rgb(255, 255, 255)",
  cellBackgroundColor="rgb(255, 255, 255)",
  cellColor="rgb(0, 0, 0)",
  totalBackgroundColor = "rgb(182, 216, 158)",
  totalColor="rgb(0, 0, 0)",
  borderColor = "rgb(84, 130, 53)"
)
# define the theme
theme <- getSimpleColoredTheme(parentPivot=pt, colors=greenColors, fontName="Helvetica, arial")
# create the pivot table
library(pivottabler)
pt <- PivotTable$new()
pt$addData(bhmtrains)
pt$addColumnDataGroups("TrainCategory")
pt$addRowDataGroups("TOC")
pt$defineCalculation(calculationName="TotalTrains", summariseExpression="n()")
pt$theme <- theme
pt$renderPivot(styleNamePrefix="t6")

## ---- warning=FALSE------------------------------------------------------
# define the colours
yellowColors <- list(
  headerBackgroundColor = "rgb(255, 192, 0)",
  headerColor = "rgb(255, 255, 255)",
  cellBackgroundColor="rgb(255, 255, 255)",
  cellColor="rgb(0, 0, 0)",
  totalBackgroundColor = "rgb(255, 242, 204)",
  totalColor="rgb(0, 0, 0)",
  borderColor = "rgb(255, 192, 0)"
)
# define the theme
theme <- getSimpleColoredTheme(parentPivot=pt, colors=yellowColors, fontName="Verdana")
# create the pivot table
library(pivottabler)
pt <- PivotTable$new()
pt$addData(bhmtrains)
pt$addColumnDataGroups("TrainCategory")
pt$addRowDataGroups("TOC")
pt$defineCalculation(calculationName="TotalTrains", summariseExpression="n()")
pt$theme <- theme
pt$renderPivot(styleNamePrefix="t7")

## ---- warning=FALSE------------------------------------------------------
# define the theme and styles
createCustomTheme <- function(parentPivot=NULL, themeName="myCustomTheme") {
  pivotStyles <- PivotStyles$new(parentPivot=parentPivot, themeName=themeName)
  # borders in purple
  pivotStyles$addStyle(styleName="Table", list(
      "border-collapse"="collapse",
      "border"="2px solid #B28DFF"
    ))
  # column headings in pink
  pivotStyles$addStyle(styleName="ColumnHeader", list(
      font="0.75em \"Courier New\", Courier, monospace",
      "font-weight"="bold",
      padding="2px",
      "border"="2px solid #B28DFF",
      "vertical-align"="middle",
      "text-align"="center",
      "font-weight"="bold",
      color="#DB49AC",
      "background-color"="#FFCCF9"
    ))
  # row headings in blue
  pivotStyles$addStyle(styleName="RowHeader", list(
      font="0.75em \"Courier New\", Courier, monospace",
      "font-weight"="bold",
      padding="2px 8px 2px 2px",
      "border"="1px solid #B28DFF",
      "vertical-align"="middle",
      "text-align"="left",
      "font-weight"="bold",
      color="#438EC8",
      "background-color"="#ACE7FF"
    ))
  # cells in yellow
  pivotStyles$addStyle(styleName="Cell", list(
      font="0.75em \"Courier New\", Courier, monospace",
      padding="2px 2px 2px 8px",
      "border"="1px solid #B28DFF",
      "text-align"="right",
      color="#FF800D",
      "background-color"="#FFFFD1"
    ))
  # totals in orange
  pivotStyles$addStyle(styleName="Total", list(
      font="0.75em \"Courier New\", Courier, monospace",
      "font-weight"="bold",
      padding="2px 2px 2px 8px",
      "border"="1px solid rgb(84, 130, 53)",
      "text-align"="right",
      color="#3BC6B6",
      "background-color"="#BFFCC6"
    ))
  pivotStyles$tableStyle <- "Table"
  pivotStyles$rootStyle <- "ColumnHeader"
  pivotStyles$rowHeaderStyle <- "RowHeader"
  pivotStyles$colHeaderStyle <- "ColumnHeader"
  pivotStyles$cellStyle <- "Cell"
  pivotStyles$totalStyle <- "Total"
  return(invisible(pivotStyles))
}
# create the pivot table
library(pivottabler)
pt <- PivotTable$new()
pt$addData(bhmtrains)
pt$addColumnDataGroups("TrainCategory")
pt$addRowDataGroups("TOC")
pt$defineCalculation(calculationName="TotalTrains", summariseExpression="n()")
pt$theme <- createCustomTheme(pt)
pt$renderPivot(styleNamePrefix="t8")

## ---- warning=FALSE------------------------------------------------------
# define the colours
orangeColors <- list(
  headerBackgroundColor = "rgb(237, 125, 49)",
  headerColor = "rgb(255, 255, 255)",
  cellBackgroundColor = "rgb(255, 255, 255)",
  cellColor = "rgb(0, 0, 0)",
  totalBackgroundColor = "rgb(248, 198, 165)",
  totalColor = "rgb(0, 0, 0)",
  borderColor = "rgb(198, 89, 17)"
)
# define the theme
theme <- getSimpleColoredTheme(parentPivot=pt, colors=orangeColors, fontName="Garamond, arial")
# create the pivot table
library(pivottabler)
pt <- PivotTable$new()
pt$addData(bhmtrains)
pt$addColumnDataGroups("TrainCategory")
pt$addRowDataGroups("TOC")
pt$defineCalculation(calculationName="TotalTrains", summariseExpression="n()")
# apply the theme
pt$theme <- theme
# evaluate the pivot to generate the cells
pt$evaluatePivot()
# apply an additional highlight to one cell (3rd row, 2nd column)
cells <- pt$getCells(3, 2)
cells[[1]]$style <- PivotStyle$new(pt, "cellHighlight", list("background-color"="#FFFF00"))
# draw the pivot table
pt$renderPivot(styleNamePrefix="t5")

