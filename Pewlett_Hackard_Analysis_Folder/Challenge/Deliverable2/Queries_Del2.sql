--DELIVERABLE 2


-- mentorship eligibility
select distinct on (e.emp_no)
e.emp_no, e.first_name, e.last_name, e.birth_date, de.from_date, de.to_date, t.title
into mentorship_eligibility
from employees as e 
inner join dept_emp as de 
on (e.emp_no = de.emp_no)
where (de.to_date = '9999-01-01') and e.birth_date between '1965-01-01' and '1965-12-31'
order by e.emp_no