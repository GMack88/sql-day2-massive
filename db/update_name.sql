update student_data
set student_name = $1
where student_id = $2;


select *
from student_data;