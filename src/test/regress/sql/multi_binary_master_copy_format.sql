--
-- MULTI_BINARY_MASTER_COPY
--

-- Try binary master copy for different executors

SET citusdb.binary_master_copy_format TO 'on';
SET citusdb.task_executor_type TO 'task-tracker';

SELECT count(*) FROM lineitem;
SELECT l_shipmode FROM lineitem WHERE l_partkey = 67310 OR l_partkey = 155190;

SET citusdb.task_executor_type TO 'real-time';

SELECT count(*) FROM lineitem;
SELECT l_shipmode FROM lineitem WHERE l_partkey = 67310 OR l_partkey = 155190;
