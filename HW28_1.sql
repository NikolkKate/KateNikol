use `hillel qauto`;
select * from user_profiles;

select distinct name from user_profiles where name like "%am%";

select max(totalCost) from expenses
join cars on expenses.carId = cars.id
where cars.carBrandId = 1;

select carBrandId as car_id, count(id) as count_models from car_models
where carBrandId = 1 or carBrandId = 2
group by carBrandId;

select car_brands.title, car_models.title, count(users.id) from cars
join users on cars.userId = users.id
join car_models on cars.carModelId = car_models.id
join car_brands on cars.carBrandId = car_brands.id
group by carModelId
;

select user_profiles.name from cars
inner join users on cars.userId = users.id
inner join user_profiles  on users.id = user_profiles.userId;



