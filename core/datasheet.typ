#import "style.typ": *
#import "helpers.typ": *

#let title(body) = (ctx) => {
  table.cell(
    colspan: ctx.tableWidth,
    fill: colors.headerBackground,
    tableTitleStyle(body)
  )
}

#let rows(padding: 0, ..cells) = (ctx) => {
  let tableCell(body) = {
    tableBodyStyle(body)
  }

  cells.pos().map(tableBodyStyle)
}

#let datasheet(
  name: none,
  columns: (auto,),
  size: (1fr,),
  align: (left, center),
  ..rows
) = {
  set table(
    fill: (_, y) => if calc.odd(y) {
      colors.altBackground
    } else {
      colors.backgroundPrimary
    },
    stroke: none
  )

  let resolve(row) = {
    if type(row) == "content" {
      row
    } else if type(row) == "function" {
      row(
        (tableWidth: columns.len())
      )
    } else {
      panic("Not supported row type")
    }
  }

  let headerCell(body) = {
    table.cell(
      fill: colors.backgroundPrimary,
      tableHeaderStyle(body)
    )
  }

  table(
    columns: matchedSize(columns, size),
    align: align,

    table.hline(),
    resolve(title(name)),
    table.hline(),
    ..(columns.map(headerCell)),
    table.hline(),
    ..(rows.pos().map(resolve).flatten()),
    table.hline()
  )
}
