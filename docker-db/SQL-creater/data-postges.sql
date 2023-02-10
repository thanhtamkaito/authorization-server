INSERT INTO public.info_user
    (id, first_name, mid_name, last_name)
VALUES (1, 'Vu', 'Thanh', 'Tam');
INSERT INTO public.info_user
    (id, first_name, mid_name, last_name)
VALUES (2, 'Vu', 'Kaito', 'Admin');
INSERT INTO public.info_user
    (id, first_name, mid_name, last_name)
VALUES (3, 'L', 'NG', 'Lan');


INSERT INTO public.users
(user_id, email, "password", pass_updated_at, last_login_at, failed_at, failed_count)
VALUES (3, 'vuthanhtam@local.com', 'PgumUbAyP6EoVUyULZqWBg0FvUmXfLTziLs5A0McZKg', '2022-11-12 00:19:18.770',
        '2022-11-12 00:19:20.664', '2022-11-12 00:19:27.904', 0);
INSERT INTO public.users
(user_id, email, "password", pass_updated_at, last_login_at, failed_at, failed_count)
VALUES (2, 'admin@local.com', 'E2-EM-tiOImYwhPvPDlh1MMc_JIhRL3s2W3Clip_TGs', '2022-11-12 00:19:18.770',
        '2022-11-12 00:19:20.664', '2022-11-12 00:19:27.904', 0);


----  E2-EM-tiOImYwhPvPDlh1MMc_JIhRL3s2W3Clip_TGs    pass: #At123445678


INSERT INTO public.locations
(location_id, location_code, location_status, created_by, updated_by, created_at, updated_at, location_name,
 location_des)
VALUES (3, '10005', 1, 1, 2, '2022-11-12 00:21:32.696', '2022-11-12 02:22:01.325', 'HN', 'NA');
INSERT INTO public.locations
(location_id, location_code, location_status, created_by, updated_by, created_at, updated_at, location_name,
 location_des)
VALUES (4, '20005', 1, 1, 2, '2022-11-12 00:21:32.696', '2022-11-12 02:22:01.325', 'HCM', 'NA');
INSERT INTO public.locations
(location_id, location_code, location_status, created_by, updated_by, created_at, updated_at, location_name,
 location_des)
VALUES (1, '30005', 1, 1, 2, '2022-11-12 00:21:32.696', '2022-11-12 02:22:01.325', 'DN', 'NA');
INSERT INTO public.locations
(location_id, location_code, location_status, created_by, updated_by, created_at, updated_at, location_name,
 location_des)
VALUES (2, '40005', 1, 1, 2, '2022-11-12 00:21:32.696', '2022-11-12 02:22:01.325', 'TH', 'NA');


INSERT INTO public.users_locations
    (id, user_id, location_id, "role")
VALUES (2, 3, 3, 1);
INSERT INTO public.users_locations
    (id, user_id, location_id, "role")
VALUES (3, 2, 2, 1);



INSERT INTO public.brands
(id, location_id, created_by, updated_by, created_at, updated_at, brand_name, brand_des, brand_est)
VALUES (3, 1, 1, 3, '2022-11-12 00:27:03.872', '2022-11-12 00:27:03.872', 'aa', 'aaa', 2121);
INSERT INTO public.brands
(id, location_id, created_by, updated_by, created_at, updated_at, brand_name, brand_des, brand_est)
VALUES (4, 2, 1, 3, '2022-11-12 00:27:03.872', '2022-11-12 00:27:03.872', 'aa', 'aaa', 2121);
INSERT INTO public.brands
(id, location_id, created_by, updated_by, created_at, updated_at, brand_name, brand_des, brand_est)
VALUES (5, 3, 1, 3, '2022-11-12 00:27:03.872', '2022-11-12 00:27:03.872', 'aa', 'aaa', 2121);
INSERT INTO public.brands
(id, location_id, created_by, updated_by, created_at, updated_at, brand_name, brand_des, brand_est)
VALUES (6, 4, 1, 3, '2022-11-12 00:27:03.872', '2022-11-12 00:27:03.872', 'aa', 'aaa', 2121);
