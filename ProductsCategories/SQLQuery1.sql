(select Products.[Product Name] as product, Categories.[Category Name] as category
from Products, [Product category], Categories
where Products.Id= [Product category].[Product Id] and Categories.Id= [Product category].[Category Id]) 
Union ALL
(SELECT Products.[Product Name] as product, Null as category
FROM Products
LEFT JOIN [Product category] ON Products.Id= [Product category].[Product Id]
WHERE [Product category].[Product Id] IS NULL) 