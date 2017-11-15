CREATE OR REPLACE FUNCTION COF_DESC 
(f_num in number)
RETURN VARCHAR2 AS 
lv_desc varchar2(30);
BEGIN
  if f_num = 3 then
  lv_desc := ('Whole Bean');
 elsif f_num = 4 then
  lv_desc := ('Grounds');
  else 
  lv_desc := ('N/A');
  end if;
  return lv_desc;
END COF_DESC;

--anon
select cof_desc(option2) As "Coffee Type"
from bb_basketitem
where IDBASKET =6;