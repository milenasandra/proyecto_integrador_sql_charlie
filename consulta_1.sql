select cities.name as 'nombre ciudad',
addresses.adress as 'direccion',
users.mail as 'correo electronico',
journeys.name as 'jornada'
from users
join addresses on users.id = addresses.user_id
join cities on addresses.city_id = cities.id
join users_careers on users.id = users_careers.user_id
join careers on  users_careers.career_id = careers.id
join journeys on careers.journey_id = journeys.id;
