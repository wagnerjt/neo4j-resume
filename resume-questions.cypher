

//----What is your contact information?
MATCH (p:Person)-[:CONTACT]->(c)
RETURN p, c

//----What do you know?
MATCH (p:Person)-[:KNOWS]->(s)
RETURN p, s

//----What is your work history?
MATCH (p:Person)-[:WORKED]->(w)
WITH p, w
MATCH (w)-[:AT]->(com:Company), (w)-[:POSITION_OF]->(pos:Position)
MATCH (w)-[:PREVIOUS*]->(prevoiusWork)
RETURN p, w, prevoiusWork, com, pos


//----What is your educational background? (todo)