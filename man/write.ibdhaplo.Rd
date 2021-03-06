% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/write_ibdhaplo.R
\name{write.ibdhaplo}
\alias{write.ibdhaplo}
\title{Write IBDHAPLO}
\usage{
write.ibdhaplo(marker, freq, data, member, input.allele = TRUE,
  input.haplotype = FALSE, outfile = tempfile("ibdhaplo", fileext = ".txt"))
}
\arguments{
\item{marker}{numeric vector, marker genetic positions in cM.}

\item{freq}{numeric vector, marker reference allele frequencies.}

\item{data}{numeric matrix, genetic marker data.}

\item{member}{string vector, member ID.}

\item{input.allele}{logical, default TRUE.}

\item{input.haplotype}{logical, default FALSE.}

\item{outfile}{string, output file name.}
}
\description{
\code{write.ibdhaplo} prepares the marker data file for running IBDHAPLO.
}
\details{
The input marker data needs to be subject/haplotype by marker/allele. For example, suppose \code{data} is a 4x10 matrix, use \code{input.allele = FALSE} if \code{data} contains counts of reference alleles of 4 individuals at 10 markers; use \code{input.haplotype = TRUE} if \code{data} contains allelic types of 4 haplotypes at 10 markers; use default options if \code{data} contains allelic types of 4 individuals at 5 markers.
}
\examples{
\dontrun{
nsnp = 7 # number of SNPs
freq = runif(nsnp, 0.05, 0.95)
nhaplo = 4 # number of founder haplotypes
haplotype = sim.haplotype(freq, nhaplo)
marker = sort(runif(7,0,100))
write.ibdhaplo(marker, freq, haplotype, member = c("ind1", "ind2"), 
input.haplotype = TRUE)
}
}
\references{
MORGAN Tutorial, \url{https://www.stat.washington.edu/thompson/Genepi/MORGAN/Morgan.shtml}.

Brown et al. (2012) Genetics 190:1447-1460, \url{https://www.ncbi.nlm.nih.gov/pubmed/22298700}.
}
