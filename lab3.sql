--2-4
--low
declare
    lv_rating varchar2(10);
    lv_purch_amt number(4):= 90;
begin
    case
        when lv_purch_amt < 100 then lv_rating := 'low';
        when lv_purch_amt > 100 and lv_purch_amt < 200 then lv_rating := 'medium';
        when lv_purch_amt > 200 then lv_rating := 'high';
        end case;
    DBMS_OUTPUT.PUT_LINE(lv_rating);
end;
-- medium
declare
    lv_rating varchar2(10);
    lv_purch_amt number(4):= 190;
begin
    case
        when lv_purch_amt < 100 then lv_rating := 'low';
        when lv_purch_amt > 100 and lv_purch_amt < 200 then lv_rating := 'medium';
        when lv_purch_amt > 200 then lv_rating := 'high';
        end case;
    DBMS_OUTPUT.PUT_LINE(lv_rating);
end;
--high
declare
    lv_rating varchar2(10);
    lv_purch_amt number(4):= 290;
begin
    case
        when lv_purch_amt < 100 then lv_rating := 'low';
        when lv_purch_amt > 100 and lv_purch_amt < 200 then lv_rating := 'medium';
        when lv_purch_amt > 200 then lv_rating := 'high';
        end case;
    DBMS_OUTPUT.PUT_LINE(lv_rating);
end;

--2-5
declare
    lv_act_boo boolean;
    lv_pay_amt number(5,2):= 300;
    lv_acct_bal number(5,2):=300;
    lv_new_bal number(5,2);
begin
    lv_new_bal := lv_acct_bal - lv_pay_amt;
   
    if (lv_new_bal) = 0 then
    lv_act_boo :=FALSE;
        if lv_act_boo = false then
        DBMS_OUTPUT.PUT_LINE('Account Paid');
        end if;
    else lv_act_boo:= true;
        if lv_act_boo = true then
        DBMS_OUTPUT.PUT_LINE('bleh');
        end if;
    end if;
    
end;

--2-6
declare
    lv_price number (6,2) := 25;
    lv_acctbal number(6,2) :=300;
    lv_amt_spnt number(6,2) :=0;
    lv_amt_itms number (6,2):= 0;
begin
    loop
    lv_acctbal := (lv_acctbal - lv_price);
        lv_amt_itms := (lv_amt_itms + 1);
    lv_amt_spnt:= (lv_amt_spnt + lv_price);
		exit when lv_acctbal <=0;
  end loop;
    DBMS_OUTPUT.PUT_LINE(lv_amt_itms|| ' Items');
    DBMS_OUTPUT.PUT_LINE(lv_amt_spnt|| ' Spent Shopping');
    
end;