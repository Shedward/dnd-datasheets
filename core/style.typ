
#let fonts = (
  title: "Arial",
  body: "Times New Roman"
)

#let colors = (
  bodyPrimary: black,
  bodySecondary: gray,
  header: rgb("a46929"),
  headerBackground: rgb("fff0e1"),
  warning: rgb("862923"),
  backgroundPrimary: white,
  altBackground: rgb("e5f3f3")
)

#let strokes = (
  hairline: 0.1pt,
  thin: 0.5pt,
  normal: 1.0pt
)

// --- Page styles ---

#let datasheetPage(doc) = {
  set page(
    paper: "a4",
    margin: 5mm
  )

  set text(
    font: fonts.body,
    size: 12pt,
    fill: colors.bodyPrimary
  )

  set grid(
    gutter: 2mm
  )

  doc
}

// --- Text styles ---

#let tableTitleStyle(body) = {
  set text(
    font: fonts.title,
    weight: "bold",
    size: 16pt,
    fill: colors.header
  )

  body
}

#let tableHeaderStyle(body) = {
  set text(
    font: fonts.title,
    weight: "bold",
    size: 12pt,
    fill: colors.bodyPrimary
  )

  body
}

#let tableBodyStyle(body) = {
  set text(
    font: fonts.body,
    size: 14pt,
    fill: colors.bodyPrimary
  )

  body
}
