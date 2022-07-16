select users.name as 'nombre',
modalitys.name as 'modalidad',
cities.name as 'ciudad'
from users
join users_careers on users.id = users_careers.user_id
join careers on users_careers.career_id = careers.id
join careers_modules on careers.id = careers_modules.career_id
join modules on careers_modules.modulo_id = modules.id
join modalitys on modules.modality_id = modalitys.id
join addresses on users.id = addresses.user_id
join cities on addresses.city_id = cities.id;
