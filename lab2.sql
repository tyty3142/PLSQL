-- 2-1
declare
    lv_test_date date := '10-DEC-2012';
    lv_test_num constant number(3) :=10;
    lv_test_txt varchar2(10);
begin
    lv_test_txt := 'Brown';
    DBMS_OUTPUT.PUT_LINE(lv_test_date);
    DBMS_OUTPUT.PUT_LINE(lv_test_num);
    DBMS_OUTPUT.PUT_LINE(lv_test_txt);
end;

-- 2-3
--LOW rating
declare
    lv_rating varchar2(10);
    lv_purch_amt number(4):= 90;
begin
    if lv_purch_amt < 100 then
    lv_rating := 'low';
    elsif lv_purch_amt > 100 and lv_purch_amt < 200 then
    lv_rating := 'medium';
    elsif lv_purch_amt > 200 then
    lv_rating := 'high';
    end if;
    DBMS_OUTPUT.PUT_LINE(lv_rating);
end;

-- MEDIUM rating
declare
    lv_rating varchar2(10);
    lv_purch_amt number(4):= 150;
begin
    if lv_purch_amt < 100 then
    lv_rating := 'low';
    elsif lv_purch_amt > 100 and lv_purch_amt < 200 then
    lv_rating := 'medium';
    elsif lv_purch_amt > 200 then
    lv_rating := 'high';
    end if;
    DBMS_OUTPUT.PUT_LINE(lv_rating);
end;
-- HIGH rating
declare
    lv_rating varchar2(10);
    lv_purch_amt number(4):= 290;
begin
    if lv_purch_amt < 100 then
    lv_rating := 'low';
    elsif lv_purch_amt > 100 and lv_purch_amt < 200 then
    lv_rating := 'medium';
    elsif lv_purch_amt > 200 then
    lv_rating := 'high';
    end if;
    DBMS_OUTPUT.PUT_LINE(lv_rating);
end;