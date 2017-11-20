INSERT INTO developers VALUES
  (NULL, 'Alexandr Klimov'),
  (NULL, 'Vitaly Gorbunov'),
  (NULL, 'Yana Vertaluk'),
  (NULL, 'Vyacheslav Ponamorev'),
  (NULL, 'Alexei Ivanov'),
  (NULL, 'Gregory Mouse'),
  (NULL, 'Mike Bonso'),
  (NULL, 'Andy McCollen'),
  (NULL, 'Stephan Smith'),
  (NULL, 'Elizabet Stone'),
  (NULL, 'Sergey Lapshov'),
  (NULL, 'Anya Myagkova'),
  (NULL, 'Anatoly Tykushin'),
  (NULL, 'Dwyane Boward'),
  (NULL, 'Nick Jager'),
  (NULL, 'Alex Ruby');

INSERT INTO skills VALUES
  (NULL, 'C++'),
  (NULL, 'Java'),
  (NULL, 'C#'),
  (NULL, '.NET'),
  (NULL, 'JavaScript'),
  (NULL, 'Android'),
  (NULL, 'iOS'),
  (NULL, 'PHP');

INSERT INTO projects VALUES
  (NULL, 'Appa', 'Creating ERP-system for the company', '2017-02-04', '2017-12-27'),
  (NULL, 'BetaBoom', 'Create a new mobile app', '2016-06-15', '2017-11-30'),
  (NULL, 'Yupi', 'Write a server for company', '2017-03-21', '2018-01-18'),
  (NULL, 'Center', 'Web-page for the shop', '2016-11-27', '2018-02-11'),
  (NULL, 'Dolphin', 'Mobile app for the shop', '2016-09-03', '2017-11-22'),
  (NULL, 'FunCat', NULL, '2016-08-14', '2018-06-25'),
  (NULL, 'Hook', 'Software for the hookah', '2017-02-20', '2017-12-20'),
  (NULL, 'Benz', 'Electronic for cars', '2016-12-10', '2018-10-03'),
  (NULL, 'OpenDoor', 'Electronic for car key', '2017-07-16', '2018-04-14'),
  (NULL, 'DeskAli', 'Desktop app for Ali', '2016-05-04', '2017-12-04'),
  (NULL, 'BestFilm', NULL, '2017-10-05', '2019-01-23'),
  (NULL, '3DImageThor', NULL, '2017-09-11', '2018-10-23'),
  (NULL, 'Startphone', 'Start app for Samsung\'s phone', '2017-06-17', '2018-05-13'),
  (NULL, 'BestFun', 'iOS app', '2017-01-30', '2018-03-19'),
  (NULL, 'Europa', 'ERP-system', '2016-05-23', '2018-07-31');

INSERT INTO companies VALUES
  (NULL, 'Center of developers', 'USA, NY, Sergey Dovlatov way, 63'),
  (NULL, 'Andersen', 'Belarus, Minsk, Pobediteley Avenue, 7A'),
  (NULL, 'FunCorp', 'Russia, Penza, Pushkin street, 2'),
  (NULL, 'DevCorp', 'French, Paris, Algeria street, 5'),
  (NULL, 'StartAndroid', 'Canada, Toronto, Yonge street, 59');

INSERT INTO customers VALUES
  (NULL, 'Cat&Dog'),
  (NULL, 'Hookah Place'),
  (NULL, 'Eurorestraunt'),
  (NULL, 'Mercedes Benz'),
  (NULL, 'Samsung'),
  (NULL, 'MARVEL'),
  (NULL, 'Amazon'),
  (NULL, 'AliExpress'),
  (NULL, 'Google Inc.');

INSERT INTO developers_skills VALUES
  (1, 1), (1, 3), (2, 2), (2, 5), (3, 4),
  (3, 5), (4, 2), (4, 6), (5, 1), (5, 4),
  (5, 7), (6, 4), (6, 8), (7, 1), (8, 1),
  (8, 3), (8, 6), (9, 1), (9, 2), (9, 8),
  (10, 2), (10, 5), (10, 6), (11, 4), (11, 8),
  (12, 2), (12, 6), (13, 3), (13, 6), (13, 7),
  (14, 1), (14, 8), (15, 2), (16, 5), (16, 8);

INSERT INTO developers_projects VALUES
  (1, 3), (2, 2), (2, 15), (3, 4), (4, 1), (4, 5),
  (5, 14), (6, 7), (7, 8), (7, 10), (8, 6),
  (9, 3), (9, 8), (10, 13), (11, 12), (12, 2),
  (13, 11), (14, 10), (15, 1), (15, 9), (16, 12);

INSERT INTO projects_skills VALUES
  (1, 2), (2, 2), (2, 6), (3, 1), (3, 8),
  (4, 4), (4, 5), (5, 6), (6, 1), (6, 6),
  (7, 4), (7, 8), (8, 1), (8, 2), (9, 2),
  (10, 1), (11, 3), (12, 8), (13, 2), (13, 6),
  (14, 7), (15, 2);

INSERT INTO developers_companies VALUES
  (1, 1), (2, 1), (3, 1), (4, 1), (4, 5),
  (5, 3), (6, 4), (7, 2), (7, 4), (8, 3),
  (9, 1), (9, 2), (10, 5), (11, 2), (12, 1),
  (13, 2), (14, 4), (15, 1), (15, 2), (16, 2);

INSERT INTO companies_projects VALUES
  (1, 1), (1, 2), (1, 3), (1, 4), (2, 8),
  (2, 9), (2, 11), (2, 12), (3, 6), (3, 14),
  (4, 7), (4, 10), (5, 5), (5, 13), (5, 15);

INSERT INTO companies_customers VALUES
  (1, 3), (1, 7), (2, 4), (2, 6), (3, 9),
  (4, 2), (4, 8), (5, 1), (5, 3), (5, 5);

INSERT INTO customers_projects VALUES
  (1, 5), (2, 7), (3, 1), (3, 3), (3, 15),
  (4, 8), (4, 9), (5, 13), (6, 11), (6, 12),
  (7, 2), (7, 4), (8, 10), (9, 6), (9, 14);