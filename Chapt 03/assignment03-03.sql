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
	lv_rating_txt := 'High Rating';
	elsif lv_total_num < 200 and lv_total_num >100 then
	lv_rating_txt:= 'Mid Rating';
	else  lv_rating_txt:='Low Rating';


  END IF; 
   DBMS_OUTPUT.PUT_LINE('Shopper '||lv_shop_num||' is rated '||lv_rating_txt);
END;