CREATE TABLE data_time (
    time TIMESTAMPTZ NOT NULL,
    wattage DOUBLE PRECISION NULL,
    ID INT NULL
);

SELECT create_hypertable('data_time', by_range('time'));

CREATE INDEX ix_id_time ON data_time (ID, time DESC);