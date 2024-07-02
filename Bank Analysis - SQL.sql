-------------------#kpi 1---------------
select 
	distinct year(issue_d) as Year,
    sum(loan_amnt) as LoanAmount
from finance_dataset
group by year(issue_d)
order by year;

-------------------#kpi 2---------------

select 
	grade,
	sub_grade,
    sum(revol_bal) as RevolBalance
from finance_dataset
group by grade, sub_grade
order by grade, sub_grade;

-------------------#kpi 3---------------

SELECT 
    verification_status,
    ROUND(SUM(total_pymnt), 2) AS TotalPayment
FROM
    finance_dataset
GROUP BY verification_status;

-------------------#kpi 4---------------

select 
	addr_state,
    count(loan_status) as TotalPayment
from finance_dataset

-- where loan_status = "Charged off" 
# filter as required (just remove -- in the beginning)

group by addr_state;

-------------------#kpi 5---------------

select 
	home_ownership,
    count(last_pymnt_d) as LastPayment
from finance_dataset
group by home_ownership;