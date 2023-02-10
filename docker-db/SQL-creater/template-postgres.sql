-- DROP TABLE ex1.ex1_account;

CREATE TABLE ex1.ex1_account
(
    id         varchar(10) NOT NULL,
    status     varchar(2)  NOT NULL,
    ex1_code   int4        NOT NULL,
    account_id varchar(10) NULL,
    created_at timestamptz NOT NULL,
    created_by varchar(10) NOT NULL,
    updated_at timestamptz NOT NULL,
    updated_by varchar(10) NOT NULL,
    accep_null varchar(2)  NULL,
    CONSTRAINT ex1_account_ex1_code_key UNIQUE (ex1_code),
    CONSTRAINT ex1_account_pkey PRIMARY KEY (id)
);



-- ex1.ex1_user definition

-- Drop table

-- DROP TABLE ex1.ex1_user;

CREATE TABLE ex1.ex1_user
(
    id             varchar(10)  NOT NULL,
    ex1_account_id varchar(10)  NOT NULL,
    status         varchar(2)   NOT NULL,
    is_admin       bool         NOT NULL,
    air_id         varchar(256) NOT NULL,
    email          varchar(255) NOT NULL,
    "name"         varchar(200) NOT NULL,
    updated_at     timestamptz  NOT NULL,

    CONSTRAINT ex1_user_air_ex1_user_id_key UNIQUE (air_ex1_user_id),
    CONSTRAINT ex1_user_pkey PRIMARY KEY (id)
);

