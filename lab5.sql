--3.6
-- IDBasket 5
declare
	lv_quant bb_basket.quantity%type;
	lv_ship_cost number(4,2);
	lv_idbasket bb_basket.idbasket%type := 5;
begin
    select quantity
    into lv_quant
    from bb_basket
    where idbasket = lv_idbasket;
	if lv_quant <=3 then
        lv_ship_cost := 5;
    elsif lv_quant >= 4 and lv_quant<=6 then
        lv_ship_cost := 7.50;
    elsif lv_quant >= 7 and lv_quant<=10 then
        lv_ship_cost := 10;
    else lv_ship_cost := 12;
    end if;
    dbms_output.put_line('Quantity of Items: ' || lv_quant);
    dbms_output.put_line('Shipping Cost is: $' || lv_ship_cost);
    dbms_output.put_line('Basket ID: '|| lv_idbasket);
end;

--IDBasket 12
declare
	lv_quant bb_basket.quantity%type;
	lv_ship_cost number(4,2);
	lv_idbasket bb_basket.idbasket%type := 12;
begin
    select quantity
    into lv_quant
    from bb_basket
    where idbasket = lv_idbasket;
	if lv_quant <=3 then
        lv_ship_cost := 5;
    elsif lv_quant >= 4 and lv_quant<=6 then
        lv_ship_cost := 7.50;
    elsif lv_quant >= 7 and lv_quant<=10 then
        lv_ship_cost := 10;
    else lv_ship_cost := 12;
    end if;
    dbms_output.put_line('Quantity of Items: ' || lv_quant);
    dbms_output.put_line('Shipping Cost is: $' || lv_ship_cost);
    dbms_output.put_line('Basket ID: '|| lv_idbasket);
end;
--3.7
DECLARE
		lv_id bb_basket.idbasket%type;
		lv_subtotal bb_basket.subtotal%type;
		lv_shipping bb_basket.shipping%type;
		lv_tax bb_basket.tax%type;
		lv_total bb_basket.total%type;
BEGIN
	select idbasket, subtotal, shipping, tax, total
	into lv_id, lv_subtotal, lv_shipping,lv_tax, lv_total
	from bb_basket
	where idbasket = 5;
	dbms_output.put_line('Basket ID: ' ||lv_id);
	dbms_output.put_line('Subtotal:  '||lv_subtotal);
	dbms_output.put_line('Shipping:   '|| lv_shipping);
	dbms_output.put_line('Tax:      + '||lv_tax);
    dbms_output.put_line('__________________');
	dbms_output.put_line('Total:     '|| lv_total);
End;
--3.8
DECLARE
	type type_basket is record(
		id bb_basket.idbasket%type,
		subtotal bb_basket.subtotal%type,
		shipping bb_basket.shipping%type,
		tax bb_basket.tax%type,
		total bb_basket.total%type);
	rec_basket type_basket;
BEGIN
	select idbasket, subtotal, shipping, tax, total
	into rec_basket
	from bb_basket
	where idbasket = 12;
	dbms_output.put_line('Basket ID: '||rec_basket.id);
	dbms_output.put_line('Subtotal:  '||rec_basket.subtotal);
	dbms_output.put_line('Shipping:   '|| rec_basket.shipping);
	dbms_output.put_line('Tax:      + '||rec_basket.tax);
    dbms_output.put_line('__________________');
	dbms_output.put_line('Total:     '|| rec_basket.total);
End;

