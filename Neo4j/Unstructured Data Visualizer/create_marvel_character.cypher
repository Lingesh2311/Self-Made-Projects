CALL apoc.load.json("file:///data.json")
YIELD value
UNWIND value.UNIVERSES.MARVEL AS v
WITH v.`Heroes&Villains` AS hv, v.`Anti-Heroes` AS ahv
FOREACH(h IN hv.`Squad` | MERGE(hero:HERO{name:h.name,actor:h.actor,superpower:h.superpower, otherside:h.otherside, quotes:h.quotes, universe:"MARVEL"}))
FOREACH(v IN hv.`Anti-Squad` | MERGE(villain:VILLAIN{name:v.name, superpower:v.superpower, quotes:v.quotes, universe:"MARVEL"}))
FOREACH(ah IN ahv.`Squad` | MERGE(antihero:ANTIHERO{name:ah.name, superpower:ah.superpower, quotes:ah.quotes, universe:"MARVEL"}))
