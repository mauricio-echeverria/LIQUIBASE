CREATE TABLE
  dummy (id STRING, created_at TIMESTAMP, event_id STRING, event_type STRING, event_date TIMESTAMP, json_event STRING, message STRING)
PARTITION BY
  TIMESTAMP_TRUNC(event_date, MONTH)
OPTIONS(
  partition_expiration_days=280,
  require_partition_filter=true
)
