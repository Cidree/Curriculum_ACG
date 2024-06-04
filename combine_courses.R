# 
# Merge courses together
#


# 1. Import packages ------------------------------------------------------

library(pdftools)

# 2. Prepare PDF ----------------------------------------------------------

## Courses path
courses_path <- "../Diplomas/00-Cursos/"

## List PDF's
courses_vec <- list.files(
  path = courses_path,
  pattern = ".pdf$",
  full.names = TRUE
)

## Courses to exclude
exclude_courses <- paste0(
  courses_path,
  c(
    "matlab_onramp.pdf",
    "simulink_onramp.pdf",
    "TopoGPS.pdf"
  )
)

## Exclude courses
courses_vec <- setdiff(courses_vec, exclude_courses)

## Merge PDFs
pdf_combine(courses_vec, output = "outputs/cursos.pdf")















