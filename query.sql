select * from ticker_symbol

right join company on company.ticker = ticker_symbol.ticker;

alter table company
add primary key (ticker);

select * from company