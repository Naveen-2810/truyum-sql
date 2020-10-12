-- Querys --------------

insert into menu_items values (1,'Sandwich',99.00,'Yes','2017-03-15','Main Course','Yes'),
(2,'Burger',129.00,'Yes','2017-12-23','Main Course','No'),
(3,'Pizza',149.00,'Yes','2017-08-21','Main Course','No'),
(4,'French Fries',57.00,'No','2017-07-02','Starters','Yes'),
(5,'Chocolate Brownie',32.00,'Yes','2022-11-02','Dessert','Yes');
select * from menu_items;

insert into users value (1,'John','Smith','9238923342','john@gmail.com','admin'),
(2,'Adam','Clerk','9738923425','adamcl@gmail.com','user'),
(3,'Cheran','SBV','7889024352','cheran@gmail.com','user');
select * from users;

insert into carts values (1,2,1),(2,2,2),(3,2,4),(4,3,3),(5,3,5);
select * from carts;

-- 1,b Get all menu_items 
	select * from menu_items;
    
-- 2 Customer menu_items
	select name,free_Delivery,price,category from menu_items 
    where active = 'Yes' 
    and date_of_launch < curdate();

-- 3 Get Menu items based on menu_items id
	select * from menu_items where menu_id=1;
-- Update all the column value based on menu_items id
	update menu_items m set 
    name='Pani Puri',
    price='20.00', 
    active='Yes',
    date_of_launch='03-11-2019',
    category='Starters', 
    free_delivery='No'
    where menu_id = 6;
    
-- 5,a Get all items display to cart
	select m.name,m.free_delivery,m.price from menu_items m
    join carts c on c.cart_id = m.menu_id
    where c.user_id = 2;
    
-- 5,b Display total
	select sum(m.price) as total_price from menu_items m
    join carts c on c.cart_id = m.menu_id
    where c.user_id=2;
    
-- 6,a Remove Cart
	delete from carts where cart_id=1 and user_id=2 ;
    

