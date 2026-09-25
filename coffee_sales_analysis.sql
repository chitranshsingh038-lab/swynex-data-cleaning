use Public_file_cleaning;

select * from coffee_sales;

#2. identifying total revenue
select sum(money) as total_sales from coffee_sales;

# total sales generated is 115431

#3. tdentifying most celling item
select coffee_name,count(*) as total_sales from coffee_sales
group by coffee_name
order by  total_sales desc;

# americano with milk is most celling coffee
# second most celling coffee is latte

#4 finding total sales happends from each coffee_name
select coffee_name ,sum(money) as total_sales from coffee_sales
group by coffee_name
order by total_sales desc;

# lattee produce highest sales around 27866
# americano with milk comes on second position around 25269 

#5 total amount payed by cash and card 
select cash_type,count(cash_type),sum(money) as total_amount from coffee_sales
group by cash_type
order by total_amount

# total cash payments are 89 that generate revenue around 3186
# total card payment is 3547 and total revenue by card is 112245




