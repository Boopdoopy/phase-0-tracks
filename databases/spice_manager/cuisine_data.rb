CUISINE_DATA = {}

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
    "holy_ghost VARCHAR(255)"
    ],
  :'cuisine_ingredients' => [
    ", cuisine_id INTEGER,",
    "ingredient_id INTEGER,",
    "FOREIGN KEY (cuisine_id) REFERENCES cuisines(id)",
    "FOREIGN KEY (ingredient_id) REFERENCES ingredients(id)"
  ]
}