categories

PK: CategoryID

FK: n/a

Useful?: yes

Good Name?: sure

Replacement Name?:N/A

Data Type?: int

Calculations: grouping by



Customers

PK:CustomerId

FK:no

Useful?:yes

Good Name?:yes

Replacement Name?:N/A

Data Type?:string

Calculations: useful for comparing to order totals and transactions



Employees

PK: EmployeeID

FK: employees

Useful?: yes

Good Name?: yes

Replacement Name?:N/A

Data Type?: int

Calculations: order volume by employee



EmployeeTerritories

PK: EmployeeID

FK: employees and territoryID

Useful?:yes

Good Name?:yes

Replacement Name?:N/A

Data Type?:int

Calculations: employee perterritory/filter by territory



OrderDetails

PK:OrderId

FK:OrderId, ProductID

Useful?:yes

Good Name?:yes

Replacement Name?:N/A

Data Type?:int

Calculations: revenue 



Orders

PK:OrderID

FK:customerID,ShipperID,EmployeeID and the dreaded ShipVia

Useful?:yes

Good Name?:yes

Replacement Name?:N/A

Data Type?:int

Calculations: order total and such



Products

PK:ProductID

FK:CategoryID, SupplierID

Useful?:yes

Good Name?:yes

Replacement Name?:N/A

Data Type?:int

Calculations: anything related to how products are doing



Region

PK:RegionID

FK:n/a

Useful?:yes

Good Name?:yes

Replacement Name?:N/A

Data Type?:int

Calculations: region grading



Shippers

PK:ShipperID

FK:n/a

Useful?:yes

Good Name?:yes

Replacement Name?:N/A

Data Type?:int

Calculations: whether I'm ditching this shipper or not



Suppliers

PK:SupplierID

FK:no

Useful?:yes

Good Name?:yes

Replacement Name?:N/A

Data Type?:int

Calculations: which supplier provides the most important items



territories

PK:TerritoryID

FK:RegionID

Useful?:yes

Good Name?:yes

Replacement Name?:N/A

Data Type?:int

Calculations: territory performance



