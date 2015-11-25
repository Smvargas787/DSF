-- Comment
select * form users;

select userId, firstname, lastname
from users;

select *
from users
where (lastname = 'Jones' or firstname = 'Erick')
and dob < '1980-01-01';

-- Asterisk means getting all of the columns
select * from users
where dob <= '1990-01-01';

-- Will only link up together if both of them have userId in it.
select firstname, lastname, userEmail
	userEmailType
from users
join userEmail on users.userId = userEmail.userId
join userEmailType
on userEmail.userEmailTypeId =
userEmailType.userEmailTypeId;

-- Insert
insert into users (userId, firstname, lastname, username, userStatusId, userTypeId) values
('abc', 'John', 'Doe', 'ArmyOfOne', 1, 1);

select * from users where userId = 'abc';

select firstname, lastname, occupation
	users.occupationId
from users
join occupation on users.occupationID =
occupation.occupationId;

-- Update
update users set
	password = '12345',
	middleName = 'Francis'
where userId = 'abc';

-- Delete
delete from users
where userId = 'abc';