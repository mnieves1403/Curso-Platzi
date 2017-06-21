select p.name, 
	   b.title, 
       b.price, 
       b.copies
from books as b 
		join publishers as p 
			on (b.publisher_id=p.publisher_id);
            
select p.publisher_id as pid,
	   p.name, 
	   count(b.book_id) as libros,
       sum(if(b.price <15,0,1)) as libros_mios
from books as b 
		left join publishers as p 
			on (b.publisher_id=p.publisher_id)
group by pid;

select p.publisher_id as pid,
	   p.name, 
       sum(b.price*b.copies), 
       sum(IF(b.price<15,0, b.price*b.copies)) as total,
       sum(if(b.price <15,0,1)) as libros_por_vender
from books as b 
		join publishers as p 
			on (b.publisher_id=p.publisher_id)
group by pid;