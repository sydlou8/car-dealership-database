USE car_dealership_db;

-- 1. Get all dealership
SELECT * FROM dealerships;

-- 2. Find all vehicles for specific dealership
SELECT v.*
FROM vehicles v
INNER JOIN inventory i
	ON i.vin = v.vin
WHERE i.dealership_id = 555; -- D & B Used Cars

-- 3. Find car by VIN
SELECT *
FROM vehicles
WHERE vin = 44901;

-- 4. Find dealership where certain car is located by VIN
SELECT v.*,
	d.*
FROM dealerships d
INNER JOIN inventory i
	ON i.dealership_id = d.dealership_id
INNER JOIN vehicles v
	ON v.vin = i.vin
WHERE v.vin = 44901;

-- 5. Find all dealerships that have a certain car type

-- 6. Get all sales information for a specific dealer for a specific date range