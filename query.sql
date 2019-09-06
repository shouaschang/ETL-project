SELECT * FROM ticker_symbol;

RIGHT JOIN company ON company.ticker = ticker_symbol.ticker;

ALTER TABLE company
add PRIMARY KEY (ticker);

SELECT * FROM company;