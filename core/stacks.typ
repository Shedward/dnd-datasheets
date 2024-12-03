#import "helpers.typ": *

#let hstack(size: (1fr,), ..elems) = {
  grid(
    columns: matchedSize(elems.pos(), size),
    ..elems
  )
}

#let vstack(size: (auto,), ..elems) = {
  grid(
    rows: matchedSize(elems.pos(), size),
    ..elems
  )
}
