## ---- message=FALSE, warning=FALSE, eval=FALSE---------------------------
#  pivotStyles$addStyle(styleName="ColumnHeader", list(
#      "font-family"="arial",
#      "font-size"="0.75em",
#      padding="2px",
#      border="1px solid blue",
#      "vertical-align"="middle",
#      "text-align"="center",
#      "font-weight"="bold",
#      color="blue",
#      "background-color"="#FFFFFF",
#      "xl-wrap-text"="wrap"
#    ))

## ---- message=FALSE, warning=FALSE---------------------------------------
# basic theme
library(pivottabler)
pt <- PivotTable$new()
pt$addData(bhmtrains)
pt$addColumnDataGroups("TrainCategory")
pt$addRowDataGroups("TOC")
pt$defineCalculation(calculationName="TotalTrains", summariseExpression="n()")
pt$theme <- "default"  # this theme is already the default, so this line isn't really needed
pt$renderPivot(styleNamePrefix="t0")

## ---- message=FALSE, warning=FALSE---------------------------------------
# compact theme
library(pivottabler)
pt <- PivotTable$new()
pt$addData(bhmtrains)
pt$addColumnDataGroups("TrainCategory")
pt$addRowDataGroups("TOC")
pt$defineCalculation(calculationName="TotalTrains", summariseExpression="n()")
pt$theme <- "compact"
pt$renderPivot(styleNamePrefix="t1")

## ---- message=FALSE, warning=FALSE---------------------------------------
# large plain theme
library(pivottabler)
pt <- PivotTable$new()
pt$addData(bhmtrains)
pt$addColumnDataGroups("TrainCategory")
pt$addRowDataGroups("TOC")
pt$defineCalculation(calculationName="TotalTrains", summariseExpression="n()")
pt$theme <- "largeplain"
pt$renderPivot(styleNamePrefix="t2")

## ---- message=FALSE, warning=FALSE---------------------------------------
# define the font and colours
simpleBlueTheme <- list(
  fontName="Verdana, Arial",
  headerBackgroundColor = "rgb(68, 114, 196)",
  headerColor = "rgb(255, 255, 255)",
  cellBackgroundColor = "rgb(255, 255, 255)",
  cellColor = "rgb(0, 0, 0)",
  totalBackgroundColor = "rgb(186, 202, 233)",
  totalColor = "rgb(0, 0, 0)",
  borderColor = "rgb(48, 84, 150)"
)
# create the pivot table
library(pivottabler)
pt <- PivotTable$new()
pt$addData(bhmtrains)
pt$addColumnDataGroups("TrainCategory")
pt$addRowDataGroups("TOC")
pt$defineCalculation(calculationName="TotalTrains", summariseExpression="n()")
# define the theme
pt$theme <- simpleBlueTheme
pt$renderPivot(styleNamePrefix="t3")

## ---- message=FALSE, warning=FALSE---------------------------------------
# define the font and colours
simpleGrayTheme <- list(
  fontName="Courier New, Courier",
  headerBackgroundColor = "rgb(128, 128, 128)",
  headerColor = "rgb(255, 255, 255)",
  cellBackgroundColor = "rgb(255, 255, 255)",
  cellColor = "rgb(0, 0, 0)",
  totalBackgroundColor = "rgb(192, 192, 192)",
  totalColor = "rgb(0, 0, 0)",
  borderColor = "rgb(64, 64, 64)"
)
# create the pivot table
library(pivottabler)
pt <- PivotTable$new()
pt$addData(bhmtrains)
pt$addColumnDataGroups("TrainCategory")
pt$addRowDataGroups("TOC")
pt$defineCalculation(calculationName="TotalTrains", summariseExpression="n()")
# define the theme
pt$theme <- simpleGrayTheme
pt$renderPivot(styleNamePrefix="t4")

## ---- message=FALSE, warning=FALSE---------------------------------------
# define the font and colours
simpleGreenTheme <- list(
  fontName="Helvetica, arial",
  headerBackgroundColor = "rgb(112, 173, 71)",
  headerColor = "rgb(255, 255, 255)",
  cellBackgroundColor="rgb(255, 255, 255)",
  cellColor="rgb(0, 0, 0)",
  totalBackgroundColor = "rgb(182, 216, 158)",
  totalColor="rgb(0, 0, 0)",
  borderColor = "rgb(84, 130, 53)"
)
# create the pivot table
library(pivottabler)
pt <- PivotTable$new()
pt$addData(bhmtrains)
pt$addColumnDataGroups("TrainCategory")
pt$addRowDataGroups("TOC")
pt$defineCalculation(calculationName="TotalTrains", summariseExpression="n()")
# define the theme
pt$theme <- simpleGreenTheme
pt$renderPivot(styleNamePrefix="t6")

## ---- message=FALSE, warning=FALSE, comment=""---------------------------
# define the font and colours
simpleBlueTheme <- list(
  fontName="Verdana, Arial",
  headerBackgroundColor = "rgb(68, 114, 196)",
  headerColor = "rgb(255, 255, 255)",
  cellBackgroundColor = "rgb(255, 255, 255)",
  cellColor = "rgb(0, 0, 0)",
  totalBackgroundColor = "rgb(186, 202, 233)",
  totalColor = "rgb(0, 0, 0)",
  borderColor = "rgb(48, 84, 150)"
)
# create the pivot table
library(pivottabler)
qhpvt(bhmtrains, "TOC", "TrainCategory", "n()", 
      theme=simpleBlueTheme, styleNamePrefix="qt1")

## ---- message=FALSE, warning=FALSE, comment=""---------------------------
# create the pivot table
library(pivottabler)
qhpvt(bhmtrains, "TOC", "TrainCategory", "n()", 
      tableStyle=list("border-color"="maroon"),
      headingStyle=list("color"="cornsilk", "background-color"="maroon", 
                        "font-style"="italic", "border-color"="maroon"), 
      cellStyle=list("color"="maroon", "background-color"="cornsilk", 
                     "border-color"="maroon"),
      totalStyle=list("color"="maroon", "background-color"="cornsilk", 
                     "border-color"="maroon", "font-weight"="bold"),
      styleNamePrefix="qt2")

## ---- message=FALSE, warning=FALSE---------------------------------------
library(pivottabler)
pt <- PivotTable$new()
pt$addData(bhmtrains)
pt$addColumnDataGroups("TrainCategory", styleDeclarations=list("color"="red", "font-weight"="bold", "background-color"="yellow"))
pt$addRowDataGroups("TOC")
pt$defineCalculation(calculationName="TotalTrains", summariseExpression="n()")
pt$renderPivot(styleNamePrefix="tdg")

## ---- message=FALSE, warning=FALSE---------------------------------------
library(pivottabler)
pt <- PivotTable$new()
pt$styles$addStyle(styleName="NewHeadingStyle1", list(
      "font-family"="Arial",
      "font-size"="0.75em",
      padding="2px",
      border="1px solid lightgray",
      "vertical-align"="middle",
      "text-align"="center",
      "font-weight"="bold",
      "background-color"="Gold",
      "xl-wrap-text"="wrap"
    ))
pt$styles$addStyle(styleName="CellStyle1", list(
      "font-family"="Arial",
      "font-size"="0.75em",
      padding="2px 2px 2px 8px",
      border="1px solid lightgray",
      "vertical-align"="middle",
      "background-color"="Yellow",
      "text-align"="right"
    ))
pt$addData(bhmtrains)
pt$addColumnDataGroups("TrainCategory")
pt$addRowDataGroups("TOC")
pt$defineCalculation(calculationName="TotalTrains1", summariseExpression="n()",
                     headingBaseStyleName="NewHeadingStyle1", cellBaseStyleName="CellStyle1")
pt$defineCalculation(calculationName="TotalTrains2", summariseExpression="n()",
                     headingStyleDeclarations=list("color"="red", "font-weight"="bold"),
                     cellStyleDeclarations=list("color"="blue"))
pt$renderPivot(styleNamePrefix="tcn")

## ---- message=FALSE, warning=FALSE---------------------------------------
# define the theme
orangeTheme <- list(
  fontName="Garamond, arial",
  headerBackgroundColor = "rgb(237, 125, 49)",
  headerColor = "rgb(255, 255, 255)",
  cellBackgroundColor = "rgb(255, 255, 255)",
  cellColor = "rgb(0, 0, 0)",
  totalBackgroundColor = "rgb(248, 198, 165)",
  totalColor = "rgb(0, 0, 0)",
  borderColor = "rgb(198, 89, 17)"
)
# create the pivot table
library(pivottabler)
pt <- PivotTable$new()
pt$addData(bhmtrains)
pt$addColumnDataGroups("TrainCategory")
pt$addRowDataGroups("TOC")
pt$defineCalculation(calculationName="TotalTrains", summariseExpression="n()")
# use the theme
pt$theme <- orangeTheme
# evaluate the pivot to generate the cells
pt$evaluatePivot()
# applying a highlight - method 1 - 3rd row, 1st column
pt$setStyling(3, 1, declarations=list("background-color"="#00FFFF"))
# applying a highlight - method 2 - 3rd row, 2nd column
cellHighlight <- pt$createInlineStyle(declarations=list("background-color"="#FFFF00"))
cells <- pt$getCells(specifyCellsAsList=TRUE, cellCoordinates=list(c(3, 2)))
cells[[1]]$style <- cellHighlight
# draw the pivot table
pt$renderPivot(styleNamePrefix="t9")

## ---- message=FALSE, warning=FALSE---------------------------------------
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
      "font-family"="\"Courier New\", Courier, monospace",
      "font-size"="0.75em",
      "font-weight"="bold",
      padding="2px",
      "border"="2px solid #B28DFF",
      "vertical-align"="middle",
      "text-align"="center",
      "font-weight"="bold",
      color="#DB49AC",
      "background-color"="#FFCCF9",
      "xl-wrap-text"="wrap"
    ))
  # row headings in blue
  pivotStyles$addStyle(styleName="RowHeader", list(
      "font-family"="\"Courier New\", Courier, monospace",
      "font-size"="0.75em",
      "font-weight"="bold",
      padding="2px 8px 2px 2px",
      "border"="1px solid #B28DFF",
      "vertical-align"="middle",
      "text-align"="left",
      "font-weight"="bold",
      color="#438EC8",
      "background-color"="#ACE7FF",
      "xl-wrap-text"="wrap"
    ))
  # cells in yellow
  pivotStyles$addStyle(styleName="Cell", list(
      "font-family"="\"Courier New\", Courier, monospace",
      "font-size"="0.75em",
      padding="2px 2px 2px 8px",
      "border"="1px solid #B28DFF",
      "text-align"="right",
      color="#FF800D",
      "background-color"="#FFFFD1"
    ))
  # totals in orange
  pivotStyles$addStyle(styleName="Total", list(
      "font-family"="\"Courier New\", Courier, monospace",
      "font-size"="0.75em",
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

