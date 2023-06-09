CREATE TABLE departments(
    id BIGINT PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
    name varchar(50) NOT NULL,
    location varchar(50) NOT NULL
);

ALTER TABLE departments
    ADD CONSTRAINT name_not_empty CHECK (name <> ''),
    ADD CONSTRAINT name_not_blanc CHECK (name !~ '^\s*$'),
    ADD CONSTRAINT location_not_empty CHECK (location <> ''),
    ADD CONSTRAINT location_not_blanc CHECK (location !~ '^\s*$');