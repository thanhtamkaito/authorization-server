INSERT INTO public.infor_users
    (id, first_name, mid_name, last_name)
VALUES (1, 'Kaito', 'Shinichi', 'KT');
INSERT INTO public.infor_users
    (id, first_name, mid_name, last_name)
VALUES (2, 'Vu', 'Binh', 'Pham');
INSERT INTO public.infor_users
    (id, first_name, mid_name, last_name)
VALUES (3, 'Vu', 'Thanh', 'Tam');


-----------------------------------------------------------------------------------------------------
INSERT INTO public.users
(user_id, email, "password", pass_updated_at, last_login_at, failed_at, failed_count)
VALUES (1, 'thanhtam-admin@test.com.vn', 'PgumUbAyP6EoVUyULZqWBg0FvUmXfLTziLs5A0McZKg', '2022-10-21 10:49:22.000',
        '2022-10-22 10:50:33.000', '2022-10-22 10:50:48.000', 1);
INSERT INTO public.users
(user_id, email, "password", pass_updated_at, last_login_at, failed_at, failed_count)
VALUES (2, 'kaito-admin@test.com.vn', 'PgumUbAyP6EoVUyULZqWBg0FvUmXfLTziLs5A0McZKg', '2022-10-21 10:49:22.000',
        '2022-10-22 10:50:33.000', '2022-10-22 10:50:48.000', 1);

----passEncode:  PgumUbAyP6EoVUyULZqWBg0FvUmXfLTziLs5A0McZKg  ----abcd1234


-----------------------------------------------------------------------------------------------------
INSERT INTO public.locations
(location_id, location_code, location_status, created_by, updated_by, created_at, updated_at, location_name,
 location_des)
VALUES (1, 'hn01', 102, 1, 2, '2022-10-22 11:53:32.000', '2022-10-22 09:53:35.000', 'Ha Noi', 'HN des');
INSERT INTO public.locations
(location_id, location_code, location_status, created_by, updated_by, created_at, updated_at, location_name,
 location_des)
VALUES (2, 'hn02', 102, 1, 2, '2022-10-22 11:53:32.000', '2022-10-22 09:53:35.000', 'Ha Noi 2', 'HN des');
INSERT INTO public.locations
(location_id, location_code, location_status, created_by, updated_by, created_at, updated_at, location_name,
 location_des)
VALUES (3, 'hcm', 102, 1, 2, '2022-10-22 11:53:32.000', '2022-10-22 09:53:35.000', 'HCM ', 'HCM');


-----------------------------------------------------------------------------------------------------
INSERT INTO public.brands
(location_id, created_by, updated_by, created_at, updated_at, brand_name, brand_des, brand_est)
VALUES (1, 2, 1, '2022-10-22 11:59:35.000', '2022-10-22 11:59:38.000', 'Hn01', 'dsds', 12);

INSERT INTO public.brands
(location_id, created_by, updated_by, created_at, updated_at, brand_name, brand_des, brand_est)
VALUES (2, 2, 1, '2022-10-22 11:59:35.000', '2022-10-22 11:59:38.000', 'Hn01', 'dsds', 12);


INSERT INTO public.brands
(location_id, created_by, updated_by, created_at, updated_at, brand_name, brand_des, brand_est)
VALUES (2, 1, 1, '2022-10-22 11:59:35.000', '2022-10-22 11:59:38.000', 'Hn01', 'dsds', 12);


------------------------------------------------------------
INSERT INTO public.users_locations
    (user_id, location_id, "role")
VALUES (2, 1, 1);


INSERT INTO public.users_locations
    (user_id, location_id, "role")
VALUES (1, 1, 1);

-------------------------------------------------------

