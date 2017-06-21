desc users;

select * from users;

#--0	58	12:14:11	insert into users(name, email) values ('hola', 'sofia@hola.com')	Error Code: 1062. Duplicate entry 'sofia@hola.com' for key 'email'	0.062 sec
insert into users(name, email) 
values ('rocio', 'sofia@hola.com');

alter table users 
	add column active tinyint(1) not null default 1;
    
update users set active = 0 where user_id = 4;

insert into users(name, email) 
values ('rocio', 'sofia@hola.com')
on duplicate key update active = active + 1, name = concat(name, '- nuevo') ;

update users set
name = 'juan' 
where user_id = 4
limit 1;

#-- insert o update
#-- 1
replace into users (name, email, active)
values ('lorena', 'laura@hola.com', 4);

#-- 2
replace into users set 
name = 'juan',
email='juan@hotmail.com';