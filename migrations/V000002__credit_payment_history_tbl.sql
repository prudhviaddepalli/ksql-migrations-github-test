CREATE or replace TABLE credit_payment_history_tbl AS
    SELECT customer_id,
          ROUND(CAST(SUM(paid_on_time) AS DOUBLE) / CAST(COUNT(*) AS DOUBLE) * 100, 2) as PCT_PAID_ON_TIME
    FROM credit_payment_history
    GROUP BY customer_id;
