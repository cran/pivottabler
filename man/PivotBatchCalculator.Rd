% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/PivotBatchCalculator.R
\docType{class}
\name{PivotBatchCalculator}
\alias{PivotBatchCalculator}
\title{R6 class that calculates the values for multiple cells in batches.}
\format{
\code{\link{R6Class}} object.
}
\description{
The `PivotBatchCalculator` class calculates the values for multiple cells in
the pivot table in one evaluation step (per batch), instead of evaluating
every calculation once per pivot table cell.
}
\details{
Evaluating a set of filters and calculations repetitively for each cell is
inefficient and slow.  The Batch Calculator executes a much small number of
calculations which greatly reduces the CPU time and elapsed time required.
See the "Performance" vignette for details.
}
\examples{
# This class should only be created by the pivot table.
# It is not intended to be created outside of the pivot table.
}
\section{Active bindings}{
\if{html}{\out{<div class="r6-active-bindings">}}
\describe{
\item{\code{batchCount}}{The number of batches generated for the pivot table.}

\item{\code{calculationSummary}}{A summary of the batch compatibility for each
calculation.}

\item{\code{batchSummary}}{A summary of the batches in the pivot table.}
}
\if{html}{\out{</div>}}
}
\section{Methods}{
\subsection{Public methods}{
\itemize{
\item \href{#method-new}{\code{PivotBatchCalculator$new()}}
\item \href{#method-reset}{\code{PivotBatchCalculator$reset()}}
\item \href{#method-checkValidWorkingData}{\code{PivotBatchCalculator$checkValidWorkingData()}}
\item \href{#method-isFiltersBatchCompatible}{\code{PivotBatchCalculator$isFiltersBatchCompatible()}}
\item \href{#method-generateBatchesForNamedCalculationEvaluation1}{\code{PivotBatchCalculator$generateBatchesForNamedCalculationEvaluation1()}}
\item \href{#method-generateBatchesForNamedCalculationEvaluation2}{\code{PivotBatchCalculator$generateBatchesForNamedCalculationEvaluation2()}}
\item \href{#method-generateBatchesForCellEvaluation}{\code{PivotBatchCalculator$generateBatchesForCellEvaluation()}}
\item \href{#method-evaluateBatches}{\code{PivotBatchCalculator$evaluateBatches()}}
\item \href{#method-getSummaryValueFromBatch}{\code{PivotBatchCalculator$getSummaryValueFromBatch()}}
\item \href{#method-clone}{\code{PivotBatchCalculator$clone()}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-new"></a>}}
\if{latex}{\out{\hypertarget{method-new}{}}}
\subsection{Method \code{new()}}{
Create a new `PivotBatchCalculator` object.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{PivotBatchCalculator$new(parentPivot = NULL)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{parentPivot}}{The pivot table that this `PivotBatchCalculator`
instance belongs to.}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
A new `PivotBatchCalculator` object.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-reset"></a>}}
\if{latex}{\out{\hypertarget{method-reset}{}}}
\subsection{Method \code{reset()}}{
Reset the batch calculator, clearing all existing batches.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{PivotBatchCalculator$reset()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
No return value.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-checkValidWorkingData"></a>}}
\if{latex}{\out{\hypertarget{method-checkValidWorkingData}{}}}
\subsection{Method \code{checkValidWorkingData()}}{
Run some additional checks to see whether the working data is valid.
Typically only used in development builds of the package.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{PivotBatchCalculator$checkValidWorkingData(workingData = NULL)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{workingData}}{The working data to check.}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
No return value.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-isFiltersBatchCompatible"></a>}}
\if{latex}{\out{\hypertarget{method-isFiltersBatchCompatible}{}}}
\subsection{Method \code{isFiltersBatchCompatible()}}{
Examines a set of filters to see whether they are compatible with batch
evaluation mode. Only filters that specify zero or one value for each
variable are compatible with batch evaluation.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{PivotBatchCalculator$isFiltersBatchCompatible(filters = NULL)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{filters}}{A `PivotFilters` object that represents a set of filters
to examine.}
}
\if{html}{\out{</div>}}
}
\subsection{Details}{
It is not practical to make batch evaluation work where a filter
matches more than one value for a variable.  One approach might be to add
a derived column where a single value represents the multiple values, however
the combination of values could partially overlap with combinations of values
in other data groups.  Also the value that represents the "combined"
value could collide with other existing values in the column.
In summary:  Sequential mode is slower and more flexible.  Batch is faster
but stricter.  Batch mode works for regular pivot tables (i.e. most cases).
}

\subsection{Returns}{
`TRUE` if the filters are batch compatible, `FALSE` otherwise.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-generateBatchesForNamedCalculationEvaluation1"></a>}}
\if{latex}{\out{\hypertarget{method-generateBatchesForNamedCalculationEvaluation1}{}}}
\subsection{Method \code{generateBatchesForNamedCalculationEvaluation1()}}{
Generates a new batch or finds a relevant existing batch for
a named calculation and single working filters object.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{PivotBatchCalculator$generateBatchesForNamedCalculationEvaluation1(
  dataName = NULL,
  calculationName = NULL,
  calculationGroupName = NULL,
  workingFilters = NULL
)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{dataName}}{The name of the data frame (as specified in
`pt$addData()`).}

\item{\code{calculationName}}{The name of the calculation.}

\item{\code{calculationGroupName}}{The calculation group of the
calculation.}

\item{\code{workingFilters}}{A `PivotFilters` object that represents the
working filters to generate the batch for.}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
The name of either the batch that was created or the
relevant existing batch.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-generateBatchesForNamedCalculationEvaluation2"></a>}}
\if{latex}{\out{\hypertarget{method-generateBatchesForNamedCalculationEvaluation2}{}}}
\subsection{Method \code{generateBatchesForNamedCalculationEvaluation2()}}{
Generates one or more batches for the named calculations and set of
working working data associated with a cell.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{PivotBatchCalculator$generateBatchesForNamedCalculationEvaluation2(
  calculationName = NULL,
  calculationGroupName = NULL,
  workingData = NULL
)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{calculationName}}{The name of the calculation.}

\item{\code{calculationGroupName}}{The calculation group of the
calculation.}

\item{\code{workingData}}{A list containing filter and/or filter overrides.}
}
\if{html}{\out{</div>}}
}
\subsection{Details}{
A wrapper around `generateBatchesForNamedCalculationEvaluation1()`, which
invokes this function as appropriate, depending on whether a calculation
if either of type "summary" or type "calculation".
}

\subsection{Returns}{
One or more batch names of either the batches that were created or
the relevant existing batches.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-generateBatchesForCellEvaluation"></a>}}
\if{latex}{\out{\hypertarget{method-generateBatchesForCellEvaluation}{}}}
\subsection{Method \code{generateBatchesForCellEvaluation()}}{
Generates the batches for batch evaluation mode.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{PivotBatchCalculator$generateBatchesForCellEvaluation()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
One or more batch names of either the batches that were created or
the relevant existing batches.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-evaluateBatches"></a>}}
\if{latex}{\out{\hypertarget{method-evaluateBatches}{}}}
\subsection{Method \code{evaluateBatches()}}{
Evaluate each of the batches defined in the batch calculator.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{PivotBatchCalculator$evaluateBatches()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
The number of batches that were evaluated.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-getSummaryValueFromBatch"></a>}}
\if{latex}{\out{\hypertarget{method-getSummaryValueFromBatch}{}}}
\subsection{Method \code{getSummaryValueFromBatch()}}{
Retrieve one calculation value from one batch, typically for the value
 of one cell in a pivot table.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{PivotBatchCalculator$getSummaryValueFromBatch(
  batchName = NULL,
  calculationName = NULL,
  calculationGroupName = NULL,
  workingFilters = NULL
)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{batchName}}{The name of the batch containing the calculation result.}

\item{\code{calculationName}}{The name of the calculation.}

\item{\code{calculationGroupName}}{The calculation group of the
calculation.}

\item{\code{workingFilters}}{A `PivotFilters` object that represents the
working filters to retrieve the value for.}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
A single calculation value.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-clone"></a>}}
\if{latex}{\out{\hypertarget{method-clone}{}}}
\subsection{Method \code{clone()}}{
The objects of this class are cloneable with this method.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{PivotBatchCalculator$clone(deep = FALSE)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{deep}}{Whether to make a deep clone.}
}
\if{html}{\out{</div>}}
}
}
}
