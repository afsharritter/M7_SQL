-- deliverable 1: retirement_titles
select  
    e.emp_no, 
    e.first_name, 
    e.last_name,
    t.title, 
    t.from_date, 
    t.to_date
into retirement_titles
from employees as e
inner join titles as t 
on (e.emp_no = t.emp_no)
where birth_date BETWEEN '1952-01-01' AND '1955-12-31'
order by e.emp_no

-- deliverable 1: unique_titles
select distinct on (emp_no) 
    emp_no, first_name, last_name, title, from_date, to_date
into unique_titles
from retirement_titles
where to_date = '9999-01-01'
order by emp_no asc, to_date desc 


-- deliverable 1: retiring_titles
select count(emp_no), title
into retiring_titles
from unique_titles
group by title
order by count(emp_no) desc 



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