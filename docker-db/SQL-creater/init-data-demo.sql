INSERT INTO public.pharmatist
(id, full_name, email, birthday, phone, address, country, pass_updated_at, last_login_at, failed_at, failed_count)
VALUES (1, 'Mr  Name', 'test@local', '2022-10-30 18:41:50.208', '+84 329999866', 'Ha Noi', 'VN',
        '2022-10-30 18:42:18.437', '2022-10-30 18:42:21.578', '2022-10-30 18:42:26.697', 1);
INSERT INTO public.pharmatist
(id, full_name, email, birthday, phone, address, country, pass_updated_at, last_login_at, failed_at, failed_count)
VALUES (2, 'Mr  Jonh', 'test.hokage@local', '2022-10-30 18:41:50.208', '+84 329999866', 'Ha Noi', 'VN',
        '2022-10-30 18:42:18.437', '2022-10-30 18:42:21.578', '2022-10-30 18:42:26.697', 1);
INSERT INTO public.pharmatist
(id, full_name, email, birthday, phone, address, country, pass_updated_at, last_login_at, failed_at, failed_count)
VALUES (3, 'Mr  Kavi', 'localhosttest@local', '2022-10-30 18:41:50.208', '+84 329999866', 'Ha Noi', 'VN',
        '2022-10-30 18:42:18.437', '2022-10-30 18:42:21.578', '2022-10-30 18:42:26.697', 1);


INSERT INTO public."admin"
(id, full_name, email, birthday, phone, address, country, pass_updated_at, last_login_at, failed_at, failed_count)
VALUES (1232, 'dsads', 'dsads', '2022-10-30 20:02:37.198', '32132', '321443cxzc', 'dsads', '2022-10-30 20:02:44.181',
        '2022-08-30 21:02:46.686', '2022-08-30 21:02:52.206', 1);


INSERT INTO public.hospitals
    (id, full_name, email, phone, address, country_side, city, country)
VALUES (323221, 'dsads', 'dsads', 'sdsad', 'dsads', 'dsads', 'dsads', 'dsadsa');


INSERT INTO public.laboratories
(id, admin_id, full_name, email, birthday, phone, address, country, pass_updated_at, last_login_at, failed_at,
 failed_count)
VALUES (3232, 1232, 'dsa', 'ffdgfd', '2022-08-30 21:03:49.579', 'gfdgfdg', 'gfdgfgfd', 'gfdgfd',
        '2022-07-30 21:04:00.655', '2022-10-28 21:04:04.273', '2022-08-30 21:04:11.198', 1);


INSERT INTO public.secretarys
(id, full_name, email, birthday, phone, address, country, pass_updated_at, last_login_at, failed_at, failed_count)
VALUES (32132, 'xzc', 'cxzc', '2020-10-30 21:05:30.432', 'cxzcx', 'cxzcxz', 'cxz', '2022-08-30 21:05:35.826',
        '2022-08-30 21:05:39.313', '2022-08-30 21:05:49.720', 2);

INSERT INTO public.patients
(id, admin_id, hospital_id, laboratorist_id, pharmatist_id, full_name, email, birthday, phone, address, country,
 pass_updated_at, last_login_at, failed_at, failed_count, secretary_id)
VALUES (4, 1232, 323221, 3232, 1, 'Jonh Kavi', 'kaviJonh.local@test', '2022-10-30 20:01:09.725', '+980 31232132', 'HN',
        'asa', '2022-10-30 20:01:29.425', '2022-10-30 20:01:30.753', '2022-10-30 20:01:33.017', 1, 32132);

