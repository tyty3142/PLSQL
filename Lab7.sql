-- 4-4
DECLARE
  lv_tax_num NUMBER(2,2);
BEGIN
 CASE  'NJ' 
  WHEN 'VA' THEN lv_tax_num := .04;
  WHEN 'NC' THEN lv_tax_num := .02;  
  WHEN 'NY' THEN lv_tax_num := .06;  
 END CASE;
 DBMS_OUTPUT.PUT_LINE('tax rate = '||lv_tax_num);
exception
    when case_not_found then 
        dbms_output.put_line('No Tax');

END;

-- 4-5
DECLARE
 rec_shopper bb_shopper%ROWTYPE;
 lv_shopper_num bb_shopper.idshopper%type;
BEGIN
 SELECT *
  INTO rec_shopper
  FROM bb_shopper
  WHERE idShopper = 99;
  
  exception
    when no_data_found then 
        dbms_output.put_line('Invalid Shopper ID');
END;

-- 4-6
ALTER TABLE bb_basketitem
  ADD CONSTRAINT bitems_qty_ck CHECK (quantity < 20);

DECLARE
ex_quantity exception; 
 pragma exception_init(ex_quantity, -02290);
BEGIN
  INSERT INTO bb_basketitem 
   VALUES (88,8,10.8,21,16,2,3);
   
   exception
	when ex_quantity then
	dbms_output.put_line('Check Quantity');
END;

-- 4-7
DECLARE
ex_idBasket exception;

BEGIN

  UPDATE bb_basketitem
   SET idBasket = 20
   WHERE idBasket = 99;
   raise ex_idBasket;
   
exception
	when ex_idBasket then
	dbms_output.put_line('Invalid Original BasketID');
END;

-- 4-8     131 171
