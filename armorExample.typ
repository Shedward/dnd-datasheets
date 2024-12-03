#import "core/style.typ": *
#import "core/stacks.typ": *
#import "core/datasheet.typ"

#show: datasheetPage

#let armourDatasheet = datasheet.datasheet(
  name: [Armour],
  columns: ([Type], [Cost], [AC], [Str], [Stealth], [Weight]),

  datasheet.title[Light Armour],
  [Padded], [5gp], [11+Dex], [-], [Dis.], [8lb],
  [Leather], [10gp], [11+Dex], [-], [-], [10lb],

)

#let armorDonDofDatasheet = datasheet.datasheet(
  name: [Donning & Doffing Armour],
  columns: ([Category], [Don], [Doff]),

  [Light Armour], [1 min], [1 min],
  [Light Armour],   [1 min],  [1 min],
  [Medium Armour],  [5 min],  [1 min],
  [Medium Armour],  [5 min],  [1 min]
)

#let tinyDatasheet = datasheet.datasheet(
  name: [Tiny],
  columns: ([Name], [Price]),

  [First], [First],
  [Something], [Something]
)



#vstack(
  size: (auto,),

  armourDatasheet,
  hstack(
    size: (2fr, 1fr),

    armourDatasheet,
    armorDonDofDatasheet,
    tinyDatasheet,
  )
)
