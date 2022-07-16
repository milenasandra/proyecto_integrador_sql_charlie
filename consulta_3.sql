select the_groups.group_code as 'codigo del grupo',
modules.name as 'nombre modulo',
users.name as 'nombre'
from users
join groups_users on users.id = groups_users.user_id
join the_groups on groups_users.group_id = the_groups.id
join users_careers on users.id = users_careers.user_id
join careers on users_careers.career_id = careers.id
join careers_modules on careers.id = careers_modules.career_id
join modules on careers_modules.modulo_id = modules.id
where users.id = 50;
