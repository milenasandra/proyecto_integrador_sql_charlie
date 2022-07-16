select modalitys.name as 'modalidad',
news.title as 'noticia',
cities.name as 'ciudad',
roles.name as 'rol',
users.name as 'nombre',
the_groups.group_code 'codigo del grupo',
modalitys.name 'modalidad',
journeys.name 'jornada'
from users
join addresses on users.id = addresses.user_id
join cities on addresses.city_id = cities.id
join news on users.id = news.user_id
join users_roles on users.id = users_roles.user_id
join roles on users_roles.rol_id = roles.id
join groups_users on users.id = groups_users.user_id
join the_groups on groups_users.group_id = the_groups.id
join users_careers on users.id = users_careers.user_id
join careers on users_careers.career_id = careers.id
join journeys on careers.journey_id = journeys.id
join careers_modules on careers.id = careers_modules.career_id
join modules on  careers_modules.modulo_id = modules.id
join modalitys on modules.modality_id = modalitys.id
where users.id = 49;
