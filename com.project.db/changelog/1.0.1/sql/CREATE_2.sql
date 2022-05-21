CREATE TABLE
  dummy2 (id STRING, event_date TIMESTAMP, json_event STRING)
PARTITION BY
  TIMESTAMP_TRUNC(event_date, MONTH)
OPTIONS(
  partition_expiration_days=150,
  require_partition_filter=true
)
