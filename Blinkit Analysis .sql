select * from [BlinkIT Grocery Data]

select distinct(Item_Fat_Content) as Items_Content from [BlinkIT Grocery Data]

-- Total Sales 
select cast(sum(Total_Sales)/1000000 as decimal(10,2)) as Total_Sales from [BlinkIT Grocery Data]

-- Average Sales 
select cast(AVG(Total_Sales) as decimal(10,2)) as Avg_sales from [BlinkIT Grocery Data]

-- No of Items 
select count(*) as No_Item from [BlinkIT Grocery Data]

-- Average Rating
select cast(AVG(Rating) as decimal(10,2)) as Avg_Rating from [BlinkIT Grocery Data]

-- Total Sales by item Fat Content
select cast(sum(Total_Sales)/100000 as decimal(10,2)) as Total_Saels from [BlinkIT Grocery Data]
where Item_Fat_Content = 'Regular'

select Item_Fat_Content,cast(sum(Total_Sales) as Decimal(10,2)) as Total_Sales from [BlinkIT Grocery Data]
group by 
Item_Fat_Content

select cast(sum(Total_Sales)/100000 as decimal(10,2)) as Total_Sales from [BlinkIT Grocery Data]
where Item_Fat_Content = 'Low Fat'

select Item_Type,cast(sum(Total_Sales) as decimal(10,2)) as Item_Typess from [BlinkIT Grocery Data]
group by Item_Type
order by Item_Typess desc

select Outlet_Establishment_Year,cast(sum(Total_Sales) as decimal(10,2)) as Sales from [BlinkIT Grocery Data]
	group by Outlet_Establishment_Year

select Outlet_Type,cast(sum(Total_Sales) as decimal(10,2)) as Sales from [BlinkIT Grocery Data]
	group by Outlet_Type

select top 5 Outlet_Establishment_Year,
	cast(sum(Total_Sales) as decimal(10,2)) as Total_Sales,
	cast(AVG(Total_Sales) as decimal(10,2)) as Average_sales,
	count(*) as No_item,
	avg(Rating) as Avg_rating
	from [BlinkIT Grocery Data]
group by Outlet_Establishment_Year
order by Total_Sales desc

-- Percentage of Sales by outlet size

select Outlet_Size,
	cast(sum(Total_Sales) as decimal(10,2)) as Total_Sales,
	cast((sum(Total_Sales)*100/ sum(sum(Total_Sales)) over()) as decimal(10,2)) as Sales_Perctage
	from [BlinkIT Grocery Data]
group by Outlet_Size
order by Total_Sales desc

-- Sales By Outlet location 

select Outlet_Location_Type,
	cast(sum(Total_Sales)/100000 as decimal(10,2)) as Outlet_Location
from [BlinkIT Grocery Data]
group by Outlet_Location_Type
order by Outlet_Location desc

-- All metric By Outlet Types

select Outlet_Type,
	cast(sum(Total_Sales)/100000 as decimal(10,2)) as Total_Sales,
	cast(avg(Total_Sales) as decimal(10,2)) as Avg_sales,
	count(*) as No_Count,
	cast(AVG(Rating) as decimal(10,2)) as Rating
	from [BlinkIT Grocery Data]
group by Outlet_Type
order by Total_Sales desc


	
	 
