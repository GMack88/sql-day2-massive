drop table if exists campus_data;

create table campus_data
(
    campus_id serial primary key,
    campus text not null,
    program varchar(10) not null,
    campus_phone text not null
);

insert into campus_data
    (campus, program, campus_phone)
values
    ('Phoenix', 'web', '855-3322'),
    ('Provo', 'We', '666-6666'),
    ('Dallas', 'ios', '555-5555');

select *
from campus_data;

create table student_data
(
    student_id serial primary key,
    student_name text not null,
    cohort integer not null,
    campus_id integer not null references campus_data(campus_id)
);

insert into student_data
    (student_name, cohort, campus_id)
values
    ('josh', 3, 1),
    ('mel', 3, 1),
    ('mike', 4, 3),
    ('ken', 7, 3),
    ('merv', 6, 2),
    ('quinn', 5, 1),
    ('jen', 2, 1);