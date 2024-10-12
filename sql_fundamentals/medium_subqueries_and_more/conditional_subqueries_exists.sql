SELECT name FROM bidders WHERE EXISTS
  (SELECT FROM bids
    WHERE bidder_id = bidders.id);

-- Further exploration

SELECT DISTINCT bidders.name
  FROM bidders
  JOIN bids
    ON bidders.id = bids.bidder_id;

-- Alternate

SELECT bidders.name
  FROM bidders
  JOIN bids
    ON bidders.id = bids.bidder_id
  GROUP BY bidders.id
  ORDER BY bidders.id;
