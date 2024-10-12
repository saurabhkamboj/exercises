SELECT name, (SELECT count(item_id) FROM bids
  WHERE item_id = items.id) FROM items;
