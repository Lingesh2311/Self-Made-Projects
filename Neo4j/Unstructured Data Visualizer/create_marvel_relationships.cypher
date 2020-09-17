MATCH (ironman:HERO{name:"Iron Man"}), (thanos:VILLAIN{name:"Thanos"}), 
      (thor:HERO{name: "Thor"}), (drstrange:HERO{name:"Dr. Strange"}), 
      (spiderman:HERO{name: "Spider Man"}), (hela:VILLAIN{name: "Hela"}), 
      (ultron:VILLAIN{name: "Ultron"})
CREATE (ironman)-[:KILLS]->(thanos)
CREATE (thor)-[:GOESFORTHEHEAD]->(thanos)
CREATE (drstrange)-[:KEEPEROFTIMESTONE]->(drstrange)
CREATE (drstrange)-[:DEFEATS]->(thanos)
CREATE (thor)-[:BROTHER]->(hela)
CREATE (ironman)-[:CREATES]->(ultron)
CREATE (spiderman)-[:GODSON]->(ironman)
CREATE (spiderman)<-[:GODFATHER]-(ironman)
CREATE (thanos)-[:KEEPEROFSTONES]->(thanos)
