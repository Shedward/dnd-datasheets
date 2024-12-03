
#let matchedSize(source, data) = {
  let n = source.len();
  if data.len() == 0 {
    (auto,) * n
  } else {
    let tail = (data.last(),) * n
    (data + tail).slice(0, n)
  }
}
