BEGIN TRANSACTION;

CREATE DOMAIN ticket_id
    AS text
    CHECK (VALUE ~ '^[A-Z0-9]+-[1-9]\d*$');

CREATE TABLE tickets (
    id          ticket_id       NOT NULL,
    created_at  timestamptz     NOT NULL,
    summary     text            NOT NULL,
    PRIMARY KEY (id)
);

COMMIT TRANSACTION;
