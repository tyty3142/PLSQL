--3.1
DECLARE
  lv_ship_date bb_basketstatus.dtstage%TYPE;
  lv_shipper_txt bb_basketstatus.shipper%TYPE;
  lv_ship_num bb_basketstatus.shippingnum%TYPE;
  lv_bask_num bb_basketstatus.idbasket%TYPE := 3;
BEGIN
  SELECT dtstage, shipper, shippingnum
   INTO lv_ship_date, lv_shipper_txt, lv_ship_num
   FROM bb_basketstatus
   WHERE idbasket = lv_bask_num
    AND idstage = 5;
  DBMS_OUTPUT.PUT_LINE('Date Shipped: '||lv_ship_date);
  DBMS_OUTPUT.PUT_LINE('Shipper: '||lv_shipper_txt);
  DBMS_OUTPUT.PUT_LINE('Shipping #: '||lv_ship_num);
END;

--3.2
DECLARE
  rec_ship bb_basketstatus%ROWTYPE;
  lv_bask_num bb_basketstatus.idbasket%TYPE := 3;
BEGIN
  SELECT *
   INTO rec_ship
   FROM bb_basketstatus
   WHERE idbasket =  lv_bask_num
    AND idstage = 5;
  DBMS_OUTPUT.PUT_LINE('Date Shipped: '||rec_ship.dtstage);
  DBMS_OUTPUT.PUT_LINE('Shipper: '||rec_ship.shipper);
  DBMS_OUTPUT.PUT_LINE('Shipping #: '||rec_ship.shippingnum);
  DBMS_OUTPUT.PUT_LINE('Notes: '||rec_ship.notes);
END;


--3.3
DECLARE
 lv_total_num NUMBER(6,2);
 lv_rating_txt VARCHAR2(4);
 lv_shop_num bb_basket.idshopper%TYPE := 22;
BEGIN
 SELECT SUM(total)
	into lv_total_num
  FROM bb_basket
  WHERE idShopper = lv_shop_num
    AND orderplaced = 1
  GROUP BY idshopper;
  IF lv_total_num > 200 THEN
	lv_rating_txt := 'High';
	elsif lv_total_num < 200 and lv_total_num >100 then
	lv_rating_txt:= 'Mid';
	else  lv_rating_txt:='Low';


  END IF; 
   DBMS_OUTPUT.PUT_LINE('Shopper '||lv_shop_num||' is rated '||lv_rating_txt);
END;

--3.4
DECLARE
 lv_total_num NUMBER(6,2);
 lv_rating_txt VARCHAR2(4);
 lv_shop_num bb_basket.idshopper%TYPE := 22;
BEGIN
 SELECT SUM(total)
	into lv_total_num
  FROM bb_basket
  WHERE idShopper = lv_shop_num
    AND orderplaced = 1
  GROUP BY idshopper;
	case
        when lv_total_num < 100 then lv_rating_txt := 'low';
        when lv_total_num > 100 and lv_total_num < 200 then lv_rating_txt := 'medium';
        when lv_total_num > 200 then lv_rating_txt := 'high';
    end case;
   DBMS_OUTPUT.PUT_LINE('Shopper '||lv_shop_num||' is rated '||lv_rating_txt);
END;

--3.5
  
DECLARE
lv_totavail NUMBER(8,2) := 100;
lv_itemprice NUMBER(8,2) := 0;
lv_totamt NUMBER(8,2) := 0;
lv_loopnum NUMBER(8,2) := 0;
BEGIN

SELECT price
INTO lv_itemprice
FROM BB_PRODUCT
WHERE IDPRODUCT = 4;
WHILE lv_totavail >= lv_totamt 
    LOOP
        lv_loopnum := lv_loopnum + 1;
        lv_totamt := lv_itemprice * lv_loopnum;

    END LOOP;
lv_loopnum := lv_loopnum -1;
DBMS_OUTPUT.PUT_LINE('Number of Items Purchased that can be purchased: ' ||lv_loopnum);
DBMS_OUTPUT.PUT_LINE('Total Amount: '|| lv_loopnum * lv_itemprice);
END;