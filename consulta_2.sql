select news.title as 'nombre noticia',
users.name as 'nombre usuario',
the_groups.group_code as 'codigo grupo',
roles.id as 'id del rol'
from users
join news on users.id = news.user_id
join users_roles on users.id = users_roles.user_id
join roles on  users_roles.rol_id = roles.id
join groups_users on  groups_users.user_id = users.id 
join the_groups on  the_groups.id = groups_users.group_id
where users.name like '%der%';