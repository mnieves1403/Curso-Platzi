select a.action_id, 
	   b.title, 
       a.action_type, 
       a.user_id, 
       u.name,
       b.price
from actions as a
		left join books as b
			on (b.book_id=a.book_id)
		left join users as u
			on (u.user_id=a.user_id)
where a.action_type = 'venta';

select a.action_id, 
	   b.title, 
       a.action_type, 
       a.user_id, 
       u.name,
       0 as price
from actions as a
		left join books as b
			on (b.book_id=a.book_id)
		left join users as u
			on (u.user_id=a.user_id)
#--where a.action_type <> 'venta';
#--where a.action_type not in ('venta');
where a.action_type in ('prestamo', 'devolucion');

select a.action_id as aid, 
	   b.title, 
       a.action_type, 
       a.user_id, 
       u.name,
       0 as price
from actions as a
		left join books as b
			on (b.book_id=a.book_id)
		left join users as u
			on (u.user_id=a.user_id)
where a.action_type != 'venta'
union
select a.action_id as aid, 
	   b.title, 
       a.action_type, 
       a.user_id, 
       u.name,
       b.price as price
from actions as a
		left join books as b
			on (b.book_id=a.book_id)
		left join users as u
			on (u.user_id=a.user_id)
where a.action_type = 'venta'

order by aid;

select a.action_id, 
	   b.title, 
       a.action_type, 
       a.user_id, 
       u.name,
       IF(a.action_type = 'venta', b.price,0) as price,
       b.book_id,
       if(b.book_id in (1,4,7,8,2), b.price*.9, b.price) as dcto
from actions as a
		left join books as b
			on (b.book_id=a.book_id)
		left join users as u
			on (u.user_id=a.user_id)