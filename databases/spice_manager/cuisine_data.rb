CUISINE_DATA = {
  :'french' =>["onion","celery","carrot","saute in butter"],
  :'italian' =>["onion","garlic","parsley","saute in olive oil"],
  :'cajun' =>["onion","celery","bell pepper","saute in butter"],
  :'greek' =>["lemon","red onion","oregano","saute in olive oil"],
  :'cantonese' =>["green onion","ginger","garlic","fry in oil"],
  :'sichuan' =>["green onion","dried chilies","peppercorn","fry in oil"],
  :'west african'=>["habenero pepper","onion","tomato","stew"],
  :'thai'=>["kaffir lime","lemongrass","ginger","saute in oil"],
  :'spanish'=>["garlic","onion","tomato","saute in olive oil"],
  :'japanese'=>["dashi","mirin","soy sauce","use as sauce to cook dish"],
  :'cuban'=>["garlic","bell pepper","onion","saute in butter"],
  :'brazilian cuisine'=>["dende oil","coconut milk","malagueta pepper","saute in butter"]
}

TABLE_STRUCTURE = {
  :'ingredients' => [
    ", type VARCHAR(255),",
    "shelf_id INTEGER,",
    "FOREIGN KEY (shelf_id) REFERENCES shelves(id)"
    ],
  :'shelves' => [],
  :'cuisines' => [
    ", father VARCHAR(255),",
    "son VARCHAR(255),",
    "holy_ghost VARCHAR(255),",
    "technique VARCHAR(255)"
    ],
  :'cuisine_ingredients' => [
    ", cuisine_id INTEGER,",
    "ingredient_id INTEGER,",
    "FOREIGN KEY (cuisine_id) REFERENCES cuisines(id)",
    "FOREIGN KEY (ingredient_id) REFERENCES ingredients(id)"
  ]
}