--retirement eligibility

select first_name, last_name
from employees
where birth_date BETWEEN '1952-01-01' AND '1955-12-31'

select first_name, last_name
from employees
where birth_date BETWEEN '1952-01-01' AND '1952-12-31'

select first_name, last_name
from employees
where birth_date BETWEEN '1953-01-01' AND '1953-12-31'

select first_name, last_name
from employees
where birth_date BETWEEN '1954-01-01' AND '1954-12-31'

--retirement eligibility + hire date
select first_name, last_name
from employees
where (birth_date BETWEEN '1952-01-01' AND '1955-12-31') 
    and (hire_date BETWEEN '1985-01-01' AND '1988-12-31')


-- count retirement eligibility
select count(first_name)
from employees
where (birth_date BETWEEN '1952-01-01' AND '1955-12-31') 
    and (hire_date BETWEEN '1985-01-01' AND '1988-12-31')

--- select into retirement_info table
select first_name, last_name
into retirement_info
from employees
where (birth_date BETWEEN '1952-01-01' AND '1955-12-31') 
    and (hire_date BETWEEN '1985-01-01' AND '1988-12-31')
