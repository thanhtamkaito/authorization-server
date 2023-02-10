-- public.pharmatist definition

-- Drop table

-- DROP TABLE public.pharmatist;

CREATE TABLE public.pharmatist
(
    id              serial4      NOT NULL,
    full_name       varchar(255) NOT NULL,
    email           varchar(255) NOT NULL,
    birthday        timestamptz  NOT NULL,
    phone           varchar(20)  NOT NULL,
    address         varchar(255) NOT NULL,
    country         varchar(20)  NOT NULL,
    pass_updated_at timestamptz  NOT NULL,
    last_login_at   timestamptz  NOT NULL,
    failed_at       timestamptz  NOT NULL,
    failed_count    numeric(1)   NOT NULL,
    CONSTRAINT pharmatist_pkey PRIMARY KEY (id)
);

-- public."admin" definition

-- Drop table

-- DROP TABLE public."admin";

CREATE TABLE public."admin"
(
    id              serial4      NOT NULL,
    full_name       varchar(255) NOT NULL,
    email           varchar(255) NOT NULL,
    birthday        timestamptz  NOT NULL,
    phone           varchar(20)  NOT NULL,
    address         varchar(255) NOT NULL,
    country         varchar(20)  NOT NULL,
    pass_updated_at timestamptz  NOT NULL,
    last_login_at   timestamptz  NOT NULL,
    failed_at       timestamptz  NOT NULL,
    failed_count    numeric(1)   NOT NULL,
    CONSTRAINT admin_pkey PRIMARY KEY (id)
);


-- public.laboratories definition

-- Drop table

-- DROP TABLE public.laboratories;

CREATE TABLE public.laboratories
(
    id              serial4      NOT NULL,
    admin_id        serial4      NOT NULL,
    full_name       varchar(255) NOT NULL,
    email           varchar(255) NOT NULL,
    birthday        timestamptz  NOT NULL,
    phone           varchar(20)  NOT NULL,
    address         varchar(255) NOT NULL,
    country         varchar(20)  NOT NULL,
    pass_updated_at timestamptz  NOT NULL,
    last_login_at   timestamptz  NOT NULL,
    failed_at       timestamptz  NOT NULL,
    failed_count    numeric(1)   NOT NULL,
    CONSTRAINT laboratories_pkey PRIMARY KEY (id),
    CONSTRAINT laboratories_admin_id_key FOREIGN KEY (admin_id) REFERENCES public."admin" (id)
);


-- public.hospitals definition

-- Drop table

-- DROP TABLE public.hospitals;

CREATE TABLE public.hospitals
(
    id           serial4      NOT NULL,
    full_name    varchar(255) NOT NULL,
    email        varchar(255) NOT NULL,
    phone        varchar(20)  NOT NULL,
    address      varchar(255) NOT NULL,
    country_side varchar(20)  NOT NULL,
    city         varchar(20)  NOT NULL,
    country      varchar(20)  NOT NULL,
    CONSTRAINT hospitals_pkey PRIMARY KEY (id)
);

-- public.secretarys definition

-- Drop table

-- DROP TABLE public.secretarys;

CREATE TABLE public.secretarys
(
    id              serial4      NOT NULL,
    full_name       varchar(255) NOT NULL,
    email           varchar(255) NOT NULL,
    birthday        timestamptz  NOT NULL,
    phone           varchar(20)  NOT NULL,
    address         varchar(255) NOT NULL,
    country         varchar(20)  NOT NULL,
    pass_updated_at timestamptz  NOT NULL,
    last_login_at   timestamptz  NOT NULL,
    failed_at       timestamptz  NOT NULL,
    failed_count    numeric(1)   NOT NULL,
    CONSTRAINT secretarys_pkey PRIMARY KEY (id)
);


-- public.patients definition

-- Drop table

-- DROP TABLE public.patients;

CREATE TABLE public.patients
(
    id              serial4      NOT NULL,
    admin_id        serial4      NOT NULL,
    hospital_id     serial4      NOT NULL,
    laboratorist_id serial4      NOT NULL,
    pharmatist_id   serial4      NOT NULL,
    full_name       varchar(255) NOT NULL,
    email           varchar(255) NOT NULL,
    birthday        timestamptz  NOT NULL,
    phone           varchar(20)  NOT NULL,
    address         varchar(255) NOT NULL,
    country         varchar(20)  NOT NULL,
    pass_updated_at timestamptz  NOT NULL,
    last_login_at   timestamptz  NOT NULL,
    failed_at       timestamptz  NOT NULL,
    failed_count    numeric(1)   NOT NULL,
    CONSTRAINT patients_pkey PRIMARY KEY (id),
    CONSTRAINT patients_admin_id_key FOREIGN KEY (admin_id) REFERENCES public."admin" (id),
    CONSTRAINT patients_hospital_id_key FOREIGN KEY (hospital_id) REFERENCES public.hospitals (id),
    CONSTRAINT patients_laboratorist_id_key FOREIGN KEY (laboratorist_id) REFERENCES public.laboratories (id),
    CONSTRAINT patients_pharmatist_id_key FOREIGN KEY (pharmatist_id) REFERENCES public.pharmatist (id)
);

ALTER TABLE public.patients
    ADD secretary_id serial4 NOT NULL;
ALTER TABLE public.patients
    ADD CONSTRAINT patients_secretary_id_key FOREIGN KEY (secretary_id) REFERENCES public.secretarys (id);

-- public.doctors definition

-- Drop table

-- DROP TABLE public.doctors;

CREATE TABLE public.doctors
(
    id              serial4      NOT NULL,
    admin_id        serial4      NOT NULL,
    hospital_id     serial4      NOT NULL,
    full_name       varchar(255) NOT NULL,
    email           varchar(255) NOT NULL,
    birthday        timestamptz  NOT NULL,
    phone           varchar(20)  NOT NULL,
    address         varchar(255) NOT NULL,
    country         varchar(20)  NOT NULL,
    pass_updated_at timestamptz  NOT NULL,
    last_login_at   timestamptz  NOT NULL,
    failed_at       timestamptz  NOT NULL,
    failed_count    numeric(1)   NOT NULL,
    CONSTRAINT doctors_pkey PRIMARY KEY (id),
    CONSTRAINT doctors_admin_id_key FOREIGN KEY (admin_id) REFERENCES public."admin" (id),
    CONSTRAINT doctors_hospital_id_key FOREIGN KEY (hospital_id) REFERENCES public.hospitals (id)
);



-- public.providers definition

-- Drop table

-- DROP TABLE public.providers;

CREATE TABLE public.providers
(
    id              serial4      NOT NULL,
    full_name       varchar(255) NOT NULL,
    email           varchar(255) NOT NULL,
    birthday        timestamptz  NOT NULL,
    phone           varchar(20)  NOT NULL,
    address         varchar(255) NOT NULL,
    country         varchar(20)  NOT NULL,
    pass_updated_at timestamptz  NOT NULL,
    last_login_at   timestamptz  NOT NULL,
    failed_at       timestamptz  NOT NULL,
    failed_count    numeric(1)   NOT NULL,
    CONSTRAINT providers_pkey PRIMARY KEY (id)
);



-- public.test definition

-- Drop table

-- DROP TABLE public.test;

CREATE TABLE public.test
(
    id         serial4      NOT NULL,
    patient_id serial4      NOT NULL,
    doctor_id  serial4      NOT NULL,
    test       text         NULL,
    email      varchar(255) NOT NULL,
    "date"     timestamptz  NOT NULL,
    qr_code    varchar(128) NOT NULL,
    test_price numeric(10)  NOT NULL,
    CONSTRAINT test_pkey PRIMARY KEY (id),
    CONSTRAINT test_doctor_id_key FOREIGN KEY (doctor_id) REFERENCES public.doctors (id),
    CONSTRAINT test_patient_id_key FOREIGN KEY (patient_id) REFERENCES public.patients (id)
);



-- public.consultation definition

-- Drop table

-- DROP TABLE public.consultation;

CREATE TABLE public.consultation
(
    id                 serial4      NOT NULL,
    "date"             timestamptz  NOT NULL,
    qr_code            varchar(128) NOT NULL,
    patient_id         serial4      NOT NULL,
    doctor_id          serial4      NOT NULL,
    consultation_price numeric(10)  NOT NULL,
    CONSTRAINT consultation_pkey PRIMARY KEY (id),
    CONSTRAINT consultation_doctor_id_key FOREIGN KEY (doctor_id) REFERENCES public.doctors (id),
    CONSTRAINT consultation_patient_id_key FOREIGN KEY (patient_id) REFERENCES public.patients (id)
);


-- public.prescription definition

-- Drop table

-- DROP TABLE public.prescription;

CREATE TABLE public.prescription
(
    id              serial4      NOT NULL,
    patient_id      serial4      NOT NULL,
    doctor_id       serial4      NOT NULL,
    consultation_id serial4      NOT NULL,
    "date"          timestamptz  NOT NULL,
    qr_code         varchar(128) NOT NULL,
    medication      varchar(256) NOT NULL,
    CONSTRAINT prescription_pkey PRIMARY KEY (id),
    CONSTRAINT prescription_consultation_id_key FOREIGN KEY (consultation_id) REFERENCES public.consultation (id),
    CONSTRAINT prescription_doctor_id_key FOREIGN KEY (doctor_id) REFERENCES public.doctors (id),
    CONSTRAINT prescription_patient_id_key FOREIGN KEY (patient_id) REFERENCES public.patients (id)
);



CREATE TABLE public.patients_historic
(
    id              serial4 NOT NULL,
    consultation_id serial4 NOT NULL,
    hospital_id     serial4 NOT NULL,
    laboratorist_id serial4 NOT NULL,
    test_id         serial4 NOT NULL,
    prescription_id serial4 NOT NULL,
    doctor_id       serial4 NOT NULL,
    patient_id      serial4 NOT NULL,
    CONSTRAINT patients_historic_pkey PRIMARY KEY (id),
    CONSTRAINT patients_historic_consultation_id_key FOREIGN KEY (consultation_id) REFERENCES public.consultation (id),
    CONSTRAINT patients_historic_hospital_id_key FOREIGN KEY (hospital_id) REFERENCES public.hospitals (id),
    CONSTRAINT patients_historic_laboratorist_id_key FOREIGN KEY (laboratorist_id) REFERENCES public.laboratories (id),
    CONSTRAINT patients_historic_test_id_key FOREIGN KEY (test_id) REFERENCES public.test (id),
    CONSTRAINT patients_historic_prescription_id_key FOREIGN KEY (prescription_id) REFERENCES public.prescription (id),
    CONSTRAINT patients_historic_doctor_id_key FOREIGN KEY (doctor_id) REFERENCES public.doctors (id),
    CONSTRAINT patients_historic_patient_id_key FOREIGN KEY (patient_id) REFERENCES public.patients (id)

);






