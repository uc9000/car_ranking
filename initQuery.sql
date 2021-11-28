DROP DATABASE car_ranking;
CREATE DATABASE car_ranking;
USE car_ranking;

CREATE TABLE users (
    id INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(30) NOT NULL,
    password VARCHAR(255) NOT NULL
);

CREATE TABLE engines (
    id INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    horse_pow INT(4),
    capacity DECIMAL(2,1),
    engine_type ENUM('petrol', 'diesel')
);

CREATE TABLE cars (
    id INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,  
    engine_id INT(11),
    car_make VARCHAR(50),
    car_name VARCHAR(50),
    FOREIGN KEY (engine_id) REFERENCES engines(id)
);

insert into users (username, password) values ('admin', 'admin');

insert into engines (horse_pow, capacity, engine_type) values (153, 2.1, 'diesel');
insert into engines (horse_pow, capacity, engine_type) values (258, 2.5, 'petrol');
insert into engines (horse_pow, capacity, engine_type) values (94, 1.8, 'petrol');
insert into engines (horse_pow, capacity, engine_type) values (287, 2.1, 'petrol');
insert into engines (horse_pow, capacity, engine_type) values (152, 2.5, 'petrol');
insert into engines (horse_pow, capacity, engine_type) values (256, 1.2, 'petrol');
insert into engines (horse_pow, capacity, engine_type) values (159, 1.8, 'petrol');
insert into engines (horse_pow, capacity, engine_type) values (256, 1.4, 'petrol');
insert into engines (horse_pow, capacity, engine_type) values (284, 2.5, 'petrol');
insert into engines (horse_pow, capacity, engine_type) values (238, 2.9, 'diesel');
insert into engines (horse_pow, capacity, engine_type) values (103, 1.5, 'diesel');
insert into engines (horse_pow, capacity, engine_type) values (181, 2.8, 'petrol');
insert into engines (horse_pow, capacity, engine_type) values (261, 1.9, 'petrol');
insert into engines (horse_pow, capacity, engine_type) values (220, 1.3, 'diesel');
insert into engines (horse_pow, capacity, engine_type) values (233, 1.9, 'petrol');

insert into cars (car_make, car_name, engine_id) values ('Hyundai', 'Santa Fe', 12);
insert into cars (car_make, car_name, engine_id) values ('Dodge', 'Dakota Club', 15);
insert into cars (car_make, car_name, engine_id) values ('Mazda', 'Mazdaspeed6', 9);
insert into cars (car_make, car_name, engine_id) values ('Ford', 'Mustang', 7);
insert into cars (car_make, car_name, engine_id) values ('Mercedes-Benz', 'SL-Class', 7);
insert into cars (car_make, car_name, engine_id) values ('Oldsmobile', 'Bravada', 14);
insert into cars (car_make, car_name, engine_id) values ('Pontiac', 'Bonneville', 5);
insert into cars (car_make, car_name, engine_id) values ('Mitsubishi', 'Eclipse', 3);
insert into cars (car_make, car_name, engine_id) values ('MINI', 'Clubman', 12);
insert into cars (car_make, car_name, engine_id) values ('Honda', 'Prelude', 2);
insert into cars (car_make, car_name, engine_id) values ('Audi', '90', 12);
insert into cars (car_make, car_name, engine_id) values ('Jaguar', 'XJ Series', 9);
insert into cars (car_make, car_name, engine_id) values ('GMC', '1500', 2);
insert into cars (car_make, car_name, engine_id) values ('Dodge', 'Dakota', 10);
insert into cars (car_make, car_name, engine_id) values ('Mercedes-Benz', 'M-Class', 2);
insert into cars (car_make, car_name, engine_id) values ('Subaru', 'Tribeca', 7);
insert into cars (car_make, car_name, engine_id) values ('Lincoln', 'Continental Mark VII', 11);
insert into cars (car_make, car_name, engine_id) values ('Buick', 'Skylark', 8);
insert into cars (car_make, car_name, engine_id) values ('Audi', '200', 4);
insert into cars (car_make, car_name, engine_id) values ('Chevrolet', 'Express', 2);
insert into cars (car_make, car_name, engine_id) values ('GMC', 'Sierra 1500', 11);
insert into cars (car_make, car_name, engine_id) values ('Pontiac', 'Sunbird', 8);
insert into cars (car_make, car_name, engine_id) values ('Ford', 'Freestar', 2);
insert into cars (car_make, car_name, engine_id) values ('GMC', 'Suburban 2500', 6);
insert into cars (car_make, car_name, engine_id) values ('Mitsubishi', 'Cordia', 3);
insert into cars (car_make, car_name, engine_id) values ('GMC', 'Safari', 15);
insert into cars (car_make, car_name, engine_id) values ('Chevrolet', 'Monte Carlo', 1);
insert into cars (car_make, car_name, engine_id) values ('Cadillac', 'CTS-V', 13);
insert into cars (car_make, car_name, engine_id) values ('GMC', 'Sonoma', 7);
insert into cars (car_make, car_name, engine_id) values ('Chevrolet', 'Suburban 2500', 10);
insert into cars (car_make, car_name, engine_id) values ('Suzuki', 'SJ', 4);
insert into cars (car_make, car_name, engine_id) values ('Mazda', '929', 2);
insert into cars (car_make, car_name, engine_id) values ('Chrysler', '300', 11);
insert into cars (car_make, car_name, engine_id) values ('Mercedes-Benz', 'SLK-Class', 11);
insert into cars (car_make, car_name, engine_id) values ('Mercedes-Benz', 'Sprinter 2500', 11);
insert into cars (car_make, car_name, engine_id) values ('Cadillac', 'Seville', 14);
insert into cars (car_make, car_name, engine_id) values ('Hummer', 'H3T', 8);
insert into cars (car_make, car_name, engine_id) values ('Porsche', 'Cayman', 5);
insert into cars (car_make, car_name, engine_id) values ('Ford', 'Econoline E350', 9);
insert into cars (car_make, car_name, engine_id) values ('Volkswagen', 'Golf', 9);
insert into cars (car_make, car_name, engine_id) values ('Scion', 'FR-S', 6);
insert into cars (car_make, car_name, engine_id) values ('Mitsubishi', 'Mirage', 2);
insert into cars (car_make, car_name, engine_id) values ('Mercedes-Benz', 'G55 AMG', 4);
insert into cars (car_make, car_name, engine_id) values ('Peugeot', '207', 2);
insert into cars (car_make, car_name, engine_id) values ('Porsche', 'Boxster', 5);
insert into cars (car_make, car_name, engine_id) values ('Mercedes-Benz', 'E-Class', 12);
insert into cars (car_make, car_name, engine_id) values ('Chevrolet', 'Astro', 8);
insert into cars (car_make, car_name, engine_id) values ('GMC', 'Sierra 1500', 6);
insert into cars (car_make, car_name, engine_id) values ('Mercedes-Benz', 'C-Class', 8);
insert into cars (car_make, car_name, engine_id) values ('Cadillac', 'Eldorado', 1);
insert into cars (car_make, car_name, engine_id) values ('Pontiac', 'Grand Prix', 14);
insert into cars (car_make, car_name, engine_id) values ('Subaru', 'Legacy', 12);
insert into cars (car_make, car_name, engine_id) values ('Buick', 'Century', 6);
insert into cars (car_make, car_name, engine_id) values ('Mitsubishi', 'Montero', 2);
insert into cars (car_make, car_name, engine_id) values ('Nissan', 'Murano', 5);
insert into cars (car_make, car_name, engine_id) values ('Pontiac', 'GTO', 7);
insert into cars (car_make, car_name, engine_id) values ('Isuzu', 'Hombre', 3);
insert into cars (car_make, car_name, engine_id) values ('Pontiac', 'Firebird', 3);
insert into cars (car_make, car_name, engine_id) values ('GMC', '1500 Club Coupe', 3);
insert into cars (car_make, car_name, engine_id) values ('Porsche', '924 S', 14);
insert into cars (car_make, car_name, engine_id) values ('Chevrolet', 'Suburban 2500', 2);
insert into cars (car_make, car_name, engine_id) values ('Volvo', '850', 9);
insert into cars (car_make, car_name, engine_id) values ('Volvo', 'XC90', 15);
insert into cars (car_make, car_name, engine_id) values ('Mitsubishi', 'Galant', 2);
insert into cars (car_make, car_name, engine_id) values ('Audi', 'S8', 6);
insert into cars (car_make, car_name, engine_id) values ('Chrysler', '300', 5);
insert into cars (car_make, car_name, engine_id) values ('Hyundai', 'Accent', 14);
insert into cars (car_make, car_name, engine_id) values ('Plymouth', 'Laser', 4);
insert into cars (car_make, car_name, engine_id) values ('Chevrolet', 'Corvette', 4);
insert into cars (car_make, car_name, engine_id) values ('Nissan', 'Xterra', 4);
insert into cars (car_make, car_name, engine_id) values ('GMC', 'Sierra 1500', 15);
insert into cars (car_make, car_name, engine_id) values ('GMC', 'Vandura 1500', 9);
insert into cars (car_make, car_name, engine_id) values ('Audi', 'riolet', 12);
insert into cars (car_make, car_name, engine_id) values ('Suzuki', 'Reno', 10);
insert into cars (car_make, car_name, engine_id) values ('Mitsubishi', 'Chariot', 5);
insert into cars (car_make, car_name, engine_id) values ('Pontiac', 'Bonneville', 14);
insert into cars (car_make, car_name, engine_id) values ('Volkswagen', 'Eos', 14);
insert into cars (car_make, car_name, engine_id) values ('Chevrolet', 'S10', 15);
insert into cars (car_make, car_name, engine_id) values ('BMW', '1 Series', 3);
insert into cars (car_make, car_name, engine_id) values ('Pontiac', 'Montana', 7);
insert into cars (car_make, car_name, engine_id) values ('Maybach', '57', 5);
insert into cars (car_make, car_name, engine_id) values ('Pontiac', 'Firebird', 5);
insert into cars (car_make, car_name, engine_id) values ('Buick', 'Lucerne', 3);
insert into cars (car_make, car_name, engine_id) values ('Pontiac', 'G8', 15);
insert into cars (car_make, car_name, engine_id) values ('Buick', 'Riviera', 12);
insert into cars (car_make, car_name, engine_id) values ('Chrysler', 'Sebring', 8);
insert into cars (car_make, car_name, engine_id) values ('Ford', 'E-Series', 14);
insert into cars (car_make, car_name, engine_id) values ('Saab', '9-3', 4);
insert into cars (car_make, car_name, engine_id) values ('Daewoo', 'Leganza', 4);
insert into cars (car_make, car_name, engine_id) values ('Hyundai', 'Santa Fe', 2);
insert into cars (car_make, car_name, engine_id) values ('Mercedes-Benz', 'SLK-Class', 15);
insert into cars (car_make, car_name, engine_id) values ('GMC', '2500', 4);
insert into cars (car_make, car_name, engine_id) values ('Mazda', 'Miata MX-5', 7);
insert into cars (car_make, car_name, engine_id) values ('Ford', 'F350', 15);
insert into cars (car_make, car_name, engine_id) values ('Porsche', 'Boxster', 2);
insert into cars (car_make, car_name, engine_id) values ('Dodge', 'Viper', 6);
insert into cars (car_make, car_name, engine_id) values ('Dodge', 'Intrepid', 9);
insert into cars (car_make, car_name, engine_id) values ('Pontiac', 'Grand Am', 15);
insert into cars (car_make, car_name, engine_id) values ('Isuzu', 'Trooper', 13);
insert into cars (car_make, car_name, engine_id) values ('Hyundai', 'Tiburon', 1);