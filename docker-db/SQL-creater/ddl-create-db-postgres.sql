-- -- ALTER TABLE public.info_user ADD  CONSTRAINT patients_secretary_id_key FOREIGN KEY ( secretary_id) REFERENCES public.secretarys (id);

-- public.info_user definition

-- Drop table

-- DROP TABLE public.info_user;

CREATE TABLE public.info_user
(
    id         serial4      NOT NULL,
    first_name varchar(255) NOT NULL,
    mid_name   varchar(255) NULL,
    last_name  varchar(255) NOT NULL,
    CONSTRAINT pk_infor_user PRIMARY KEY (id)
);

-- ALTER TABLE public.info_user ALTER COLUMN first_name SET NOT NULL;
-- ALTER TABLE public.info_user ALTER COLUMN last_name SET NOT NULL;


CREATE TABLE public.users
(
    user_id         serial4      NOT NULL,
    email           varchar(255) NOT NULL,
    "password"      varchar(60)  NOT NULL,
    pass_updated_at timestamptz  NOT NULL,
    last_login_at   timestamptz  NOT NULL,
    failed_at       timestamptz  NOT NULL,
    failed_count    numeric(1)   NOT NULL,
    CONSTRAINT pk_user PRIMARY KEY (user_id),
    CONSTRAINT fk_user_infor FOREIGN KEY (user_id) REFERENCES public.info_user (id)
);

-- ALTER TABLE public."users" ALTER COLUMN email SET NOT NULL;
-- ALTER TABLE public."users" ALTER COLUMN "password" SET NOT NULL;
-- ALTER TABLE public."users" ALTER COLUMN failed_count SET NOT NULL;

-- ALTER TABLE public.users ADD  CONSTRAINT FK_user_infor FOREIGN KEY ( user_Id) REFERENCES public.info_user (id);


CREATE TABLE public.locations
(
    location_id     serial4      NOT NULL,
    location_code   varchar(32)  NOT NULL,
    location_status numeric(3)   NOT NULL,
    created_by      numeric(10)  NOT NULL,
    updated_by      numeric(10)  NOT NULL,
    created_at      timestamptz  NOT NULL,
    updated_at      timestamptz  NOT NULL,
    location_name   varchar(255) NOT NULL,
    location_des    varchar(255) NULL,
    CONSTRAINT pk_location PRIMARY KEY (location_id)
);


-- ALTER TABLE public.locations ALTER COLUMN location_code SET NOT NULL;
-- ALTER TABLE public.locations ALTER COLUMN location_status SET NOT NULL;
-- ALTER TABLE public.locations ALTER COLUMN created_by SET NOT NULL;
-- ALTER TABLE public.locations ALTER COLUMN updated_by SET NOT NULL;
-- ALTER TABLE public.locations ALTER COLUMN location_Name SET NOT NULL;
-- ALTER TABLE public.locations ALTER COLUMN updated_At SET NOT NULL;
-- ALTER TABLE public.locations ALTER COLUMN created_At SET NOT NULL;


CREATE TABLE public.users_locations
(
    id          serial4    NOT NULL,
    user_id     serial4    NOT NULL,
    location_id serial4    NOT NULL,
    "role"      numeric(3) NOT NULL,
    CONSTRAINT pk_users_locations PRIMARY KEY (id),
    CONSTRAINT fk_location FOREIGN KEY (location_id) REFERENCES public.locations (location_id),
    CONSTRAINT fk_user FOREIGN KEY (user_id) REFERENCES public.users (user_id)
);
-- ALTER TABLE public.users_locations ALTER COLUMN "role" SET NOT NULL;


CREATE TABLE public.brands
(
    id          serial4      NOT NULL,
    location_id serial4      NOT NULL,
    created_by  int4         NOT NULL,
    updated_by  int4         NOT NULL,
    created_at  timestamptz  NOT NULL,
    updated_at  timestamptz  NOT NULL,
    brand_name  varchar(255) NOT NULL,
    brand_des   varchar(255) NOT NULL,
    brand_est   numeric(5)   NOT NULL,
    CONSTRAINT pk_brand PRIMARY KEY (id),
    CONSTRAINT fk_brand_createby FOREIGN KEY (created_by) REFERENCES public.info_user (id),
    CONSTRAINT fk_brand_updateby FOREIGN KEY (updated_by) REFERENCES public.info_user (id),
    CONSTRAINT fk_brand_user FOREIGN KEY (location_id) REFERENCES public.locations (location_id)
);

-- ALTER TABLE public.brands ALTER COLUMN created_by SET NOT NULL;
-- ALTER TABLE public.brands ALTER COLUMN updated_by SET NOT NULL;
-- ALTER TABLE public.brands ALTER COLUMN brand_est SET NOT NULL;
-- ALTER TABLE public.brands ALTER COLUMN brand_des SET NOT NULL;
-- ALTER TABLE public.brands ALTER COLUMN brand_name SET NOT NULL;



















