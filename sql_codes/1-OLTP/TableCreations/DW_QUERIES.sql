use assignment2DW

------------ CustomerDIM --------------
DELETE FROM CustomerDim
INSERT INTO
	assignment2DW..CustomerDIM(CustomerKey, FirstName, LastName, Phone, Email, Street, State, ZipCode)
SELECT
	customer_id, first_name, last_name, phone, email, street, state, zip_code
FROM
	assignment2.sales.customers

------------ BrandDIM --------------
DELETE FROM BrandDim
INSERT INTO
	assignment2DW..BrandDim(BrandKey, BrandName)
SELECT
	brand_id, brand_name
FROM
	assignment2.production.brands

------------ CategoryDIM --------------
DELETE FROM CategoryDIM
INSERT INTO
	assignment2DW..CategoryDIM(CategoryKey, CategoryName)
SELECT
	category_id, category_name
FROM
	assignment2.production.categories

------------ ProductDIM --------------
DELETE FROM ProductDim
INSERT INTO
	assignment2DW..ProductDim(ProductKey, ProductName, BrandId, CategoryId, ModelYear)
SELECT
	product_id, product_name,brand_id, category_id, model_year
FROM
	assignment2.production.products

------------ StoreDIM --------------
DELETE FROM StoreDIM
INSERT INTO
	assignment2DW..StoreDIM(StoreKey, StoreName, Phone, Email, Street, City, State, ZipCode)
SELECT
	store_id, store_name, phone, email, street, city, state, zip_code
FROM
	assignment2.sales.stores

------------ StaffDIM --------------
DELETE FROM StaffDIM
INSERT INTO
	assignment2DW..StaffDIM(StaffKey, FirstName, LastName, Email, Phone, Active, StoreId, ManagerId)
SELECT
	staff_id, first_name, last_name, email, phone, active, store_id, manager_id
FROM
	assignment2.sales.staffs