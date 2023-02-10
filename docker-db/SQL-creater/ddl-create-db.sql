-- public.infor_users definition

-- Drop table

-- DROP TABLE public.infor_users;

CREATE TABLE public.infor_users
(
    id         serial4      NOT NULL,
    first_name varchar(255) NOT NULL,
    mid_name   varchar(255) NULL,
    last_name  varchar(255) NOT NULL,
    CONSTRAINT infor_users_pkey PRIMARY KEY (id)
);

-- public.users definition

-- Drop table

-- DROP TABLE public.users;

CREATE TABLE public.users
(
    user_id         serial4      NOT NULL,
    email           varchar(255) NOT NULL,
    "password"      varchar(60)  NOT NULL,
    pass_updated_at timestamp(0) NULL,
    last_login_at   timestamp(0) NULL,
    failed_at       timestamp(0) NULL,
    failed_count    numeric(3)   NOT NULL,
    CONSTRAINT users_pkey PRIMARY KEY (user_id),
    CONSTRAINT fk_user_infor FOREIGN KEY (user_id) REFERENCES public.infor_users (id)
);

-- public.locations definition

-- Drop table

-- DROP TABLE public.locations;

CREATE TABLE public.locations
(
    location_id     serial4      NOT NULL,
    location_code   varchar(32)  NOT NULL,
    location_status numeric(3)   NOT NULL,
    created_by      numeric(10)  NOT NULL,
    updated_by      numeric(10)  NOT NULL,
    created_at      timestamp(0) NOT NULL,
    updated_at      timestamp(0) NOT NULL,
    location_name   varchar(255) NOT NULL,
    location_des    varchar(255) NULL,
    CONSTRAINT locations_pkey PRIMARY KEY (location_id)
);

-- public.users_locations definition

-- Drop table

-- DROP TABLE public.users_locations;

CREATE TABLE public.users_locations
(
    id          serial4    NOT NULL,
    user_id     serial4    NOT NULL,
    location_id serial4    NOT NULL,
    "role"      numeric(3) NOT NULL,
    CONSTRAINT users_locations_pkey PRIMARY KEY (id),
    CONSTRAINT fk_location FOREIGN KEY (location_id) REFERENCES public.locations (location_id),
    CONSTRAINT fk_user FOREIGN KEY (user_id) REFERENCES public.users (user_id)
);

-- public.brands definition

-- Drop table

-- DROP TABLE public.brands;

CREATE TABLE public.brands
(
    id          serial4      NOT NULL,
    location_id serial4      NOT NULL,
    created_by  int4         NOT NULL,
    updated_by  int4         NULL,
    created_at  timestamp(0) NOT NULL,
    updated_at  timestamp(0) NOT NULL,
    brand_name  varchar(255) NOT NULL,
    brand_des   varchar(255) NULL,
    brand_est   numeric(5)   NOT NULL,
    CONSTRAINT brands_pkey PRIMARY KEY (id),
    CONSTRAINT fk_brand_createby FOREIGN KEY (created_by) REFERENCES public.infor_users (id),
    CONSTRAINT fk_brand_updateby FOREIGN KEY (updated_by) REFERENCES public.infor_users (id),
    CONSTRAINT fk_brand_user FOREIGN KEY (location_id) REFERENCES public.locations (location_id)
);

