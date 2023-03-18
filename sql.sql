-- MySQL dump 10.13  Distrib 8.0.29, for Linux (x86_64)
--
-- Host: localhost    Database: sys
-- ------------------------------------------------------
-- Server version	8.0.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Temporary view structure for view `host_summary`
--

DROP TABLE IF EXISTS `host_summary`;
/*!50001 DROP VIEW IF EXISTS `host_summary`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `host_summary` AS SELECT 
 1 AS `host`,
 1 AS `statements`,
 1 AS `statement_latency`,
 1 AS `statement_avg_latency`,
 1 AS `table_scans`,
 1 AS `file_ios`,
 1 AS `file_io_latency`,
 1 AS `current_connections`,
 1 AS `total_connections`,
 1 AS `unique_users`,
 1 AS `current_memory`,
 1 AS `total_memory_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `host_summary_by_file_io`
--

DROP TABLE IF EXISTS `host_summary_by_file_io`;
/*!50001 DROP VIEW IF EXISTS `host_summary_by_file_io`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `host_summary_by_file_io` AS SELECT 
 1 AS `host`,
 1 AS `ios`,
 1 AS `io_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `host_summary_by_file_io_type`
--

DROP TABLE IF EXISTS `host_summary_by_file_io_type`;
/*!50001 DROP VIEW IF EXISTS `host_summary_by_file_io_type`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `host_summary_by_file_io_type` AS SELECT 
 1 AS `host`,
 1 AS `event_name`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `host_summary_by_stages`
--

DROP TABLE IF EXISTS `host_summary_by_stages`;
/*!50001 DROP VIEW IF EXISTS `host_summary_by_stages`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `host_summary_by_stages` AS SELECT 
 1 AS `host`,
 1 AS `event_name`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `host_summary_by_statement_latency`
--

DROP TABLE IF EXISTS `host_summary_by_statement_latency`;
/*!50001 DROP VIEW IF EXISTS `host_summary_by_statement_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `host_summary_by_statement_latency` AS SELECT 
 1 AS `host`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `lock_latency`,
 1 AS `cpu_latency`,
 1 AS `rows_sent`,
 1 AS `rows_examined`,
 1 AS `rows_affected`,
 1 AS `full_scans`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `host_summary_by_statement_type`
--

DROP TABLE IF EXISTS `host_summary_by_statement_type`;
/*!50001 DROP VIEW IF EXISTS `host_summary_by_statement_type`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `host_summary_by_statement_type` AS SELECT 
 1 AS `host`,
 1 AS `statement`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `lock_latency`,
 1 AS `cpu_latency`,
 1 AS `rows_sent`,
 1 AS `rows_examined`,
 1 AS `rows_affected`,
 1 AS `full_scans`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `innodb_buffer_stats_by_schema`
--

DROP TABLE IF EXISTS `innodb_buffer_stats_by_schema`;
/*!50001 DROP VIEW IF EXISTS `innodb_buffer_stats_by_schema`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `innodb_buffer_stats_by_schema` AS SELECT 
 1 AS `object_schema`,
 1 AS `allocated`,
 1 AS `data`,
 1 AS `pages`,
 1 AS `pages_hashed`,
 1 AS `pages_old`,
 1 AS `rows_cached`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `innodb_buffer_stats_by_table`
--

DROP TABLE IF EXISTS `innodb_buffer_stats_by_table`;
/*!50001 DROP VIEW IF EXISTS `innodb_buffer_stats_by_table`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `innodb_buffer_stats_by_table` AS SELECT 
 1 AS `object_schema`,
 1 AS `object_name`,
 1 AS `allocated`,
 1 AS `data`,
 1 AS `pages`,
 1 AS `pages_hashed`,
 1 AS `pages_old`,
 1 AS `rows_cached`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `innodb_lock_waits`
--

DROP TABLE IF EXISTS `innodb_lock_waits`;
/*!50001 DROP VIEW IF EXISTS `innodb_lock_waits`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `innodb_lock_waits` AS SELECT 
 1 AS `wait_started`,
 1 AS `wait_age`,
 1 AS `wait_age_secs`,
 1 AS `locked_table`,
 1 AS `locked_table_schema`,
 1 AS `locked_table_name`,
 1 AS `locked_table_partition`,
 1 AS `locked_table_subpartition`,
 1 AS `locked_index`,
 1 AS `locked_type`,
 1 AS `waiting_trx_id`,
 1 AS `waiting_trx_started`,
 1 AS `waiting_trx_age`,
 1 AS `waiting_trx_rows_locked`,
 1 AS `waiting_trx_rows_modified`,
 1 AS `waiting_pid`,
 1 AS `waiting_query`,
 1 AS `waiting_lock_id`,
 1 AS `waiting_lock_mode`,
 1 AS `blocking_trx_id`,
 1 AS `blocking_pid`,
 1 AS `blocking_query`,
 1 AS `blocking_lock_id`,
 1 AS `blocking_lock_mode`,
 1 AS `blocking_trx_started`,
 1 AS `blocking_trx_age`,
 1 AS `blocking_trx_rows_locked`,
 1 AS `blocking_trx_rows_modified`,
 1 AS `sql_kill_blocking_query`,
 1 AS `sql_kill_blocking_connection`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `io_by_thread_by_latency`
--

DROP TABLE IF EXISTS `io_by_thread_by_latency`;
/*!50001 DROP VIEW IF EXISTS `io_by_thread_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `io_by_thread_by_latency` AS SELECT 
 1 AS `user`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `min_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`,
 1 AS `thread_id`,
 1 AS `processlist_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `io_global_by_file_by_bytes`
--

DROP TABLE IF EXISTS `io_global_by_file_by_bytes`;
/*!50001 DROP VIEW IF EXISTS `io_global_by_file_by_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `io_global_by_file_by_bytes` AS SELECT 
 1 AS `file`,
 1 AS `count_read`,
 1 AS `total_read`,
 1 AS `avg_read`,
 1 AS `count_write`,
 1 AS `total_written`,
 1 AS `avg_write`,
 1 AS `total`,
 1 AS `write_pct`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `io_global_by_file_by_latency`
--

DROP TABLE IF EXISTS `io_global_by_file_by_latency`;
/*!50001 DROP VIEW IF EXISTS `io_global_by_file_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `io_global_by_file_by_latency` AS SELECT 
 1 AS `file`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `count_read`,
 1 AS `read_latency`,
 1 AS `count_write`,
 1 AS `write_latency`,
 1 AS `count_misc`,
 1 AS `misc_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `io_global_by_wait_by_bytes`
--

DROP TABLE IF EXISTS `io_global_by_wait_by_bytes`;
/*!50001 DROP VIEW IF EXISTS `io_global_by_wait_by_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `io_global_by_wait_by_bytes` AS SELECT 
 1 AS `event_name`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `min_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`,
 1 AS `count_read`,
 1 AS `total_read`,
 1 AS `avg_read`,
 1 AS `count_write`,
 1 AS `total_written`,
 1 AS `avg_written`,
 1 AS `total_requested`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `io_global_by_wait_by_latency`
--

DROP TABLE IF EXISTS `io_global_by_wait_by_latency`;
/*!50001 DROP VIEW IF EXISTS `io_global_by_wait_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `io_global_by_wait_by_latency` AS SELECT 
 1 AS `event_name`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`,
 1 AS `read_latency`,
 1 AS `write_latency`,
 1 AS `misc_latency`,
 1 AS `count_read`,
 1 AS `total_read`,
 1 AS `avg_read`,
 1 AS `count_write`,
 1 AS `total_written`,
 1 AS `avg_written`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `latest_file_io`
--

DROP TABLE IF EXISTS `latest_file_io`;
/*!50001 DROP VIEW IF EXISTS `latest_file_io`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `latest_file_io` AS SELECT 
 1 AS `thread`,
 1 AS `file`,
 1 AS `latency`,
 1 AS `operation`,
 1 AS `requested`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `memory_by_host_by_current_bytes`
--

DROP TABLE IF EXISTS `memory_by_host_by_current_bytes`;
/*!50001 DROP VIEW IF EXISTS `memory_by_host_by_current_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `memory_by_host_by_current_bytes` AS SELECT 
 1 AS `host`,
 1 AS `current_count_used`,
 1 AS `current_allocated`,
 1 AS `current_avg_alloc`,
 1 AS `current_max_alloc`,
 1 AS `total_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `memory_by_thread_by_current_bytes`
--

DROP TABLE IF EXISTS `memory_by_thread_by_current_bytes`;
/*!50001 DROP VIEW IF EXISTS `memory_by_thread_by_current_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `memory_by_thread_by_current_bytes` AS SELECT 
 1 AS `thread_id`,
 1 AS `user`,
 1 AS `current_count_used`,
 1 AS `current_allocated`,
 1 AS `current_avg_alloc`,
 1 AS `current_max_alloc`,
 1 AS `total_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `memory_by_user_by_current_bytes`
--

DROP TABLE IF EXISTS `memory_by_user_by_current_bytes`;
/*!50001 DROP VIEW IF EXISTS `memory_by_user_by_current_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `memory_by_user_by_current_bytes` AS SELECT 
 1 AS `user`,
 1 AS `current_count_used`,
 1 AS `current_allocated`,
 1 AS `current_avg_alloc`,
 1 AS `current_max_alloc`,
 1 AS `total_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `memory_global_by_current_bytes`
--

DROP TABLE IF EXISTS `memory_global_by_current_bytes`;
/*!50001 DROP VIEW IF EXISTS `memory_global_by_current_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `memory_global_by_current_bytes` AS SELECT 
 1 AS `event_name`,
 1 AS `current_count`,
 1 AS `current_alloc`,
 1 AS `current_avg_alloc`,
 1 AS `high_count`,
 1 AS `high_alloc`,
 1 AS `high_avg_alloc`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `memory_global_total`
--

DROP TABLE IF EXISTS `memory_global_total`;
/*!50001 DROP VIEW IF EXISTS `memory_global_total`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `memory_global_total` AS SELECT 
 1 AS `total_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `metrics`
--

DROP TABLE IF EXISTS `metrics`;
/*!50001 DROP VIEW IF EXISTS `metrics`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `metrics` AS SELECT 
 1 AS `Variable_name`,
 1 AS `Variable_value`,
 1 AS `Type`,
 1 AS `Enabled`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `processlist`
--

DROP TABLE IF EXISTS `processlist`;
/*!50001 DROP VIEW IF EXISTS `processlist`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `processlist` AS SELECT 
 1 AS `thd_id`,
 1 AS `conn_id`,
 1 AS `user`,
 1 AS `db`,
 1 AS `command`,
 1 AS `state`,
 1 AS `time`,
 1 AS `current_statement`,
 1 AS `execution_engine`,
 1 AS `statement_latency`,
 1 AS `progress`,
 1 AS `lock_latency`,
 1 AS `cpu_latency`,
 1 AS `rows_examined`,
 1 AS `rows_sent`,
 1 AS `rows_affected`,
 1 AS `tmp_tables`,
 1 AS `tmp_disk_tables`,
 1 AS `full_scan`,
 1 AS `last_statement`,
 1 AS `last_statement_latency`,
 1 AS `current_memory`,
 1 AS `last_wait`,
 1 AS `last_wait_latency`,
 1 AS `source`,
 1 AS `trx_latency`,
 1 AS `trx_state`,
 1 AS `trx_autocommit`,
 1 AS `pid`,
 1 AS `program_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `ps_check_lost_instrumentation`
--

DROP TABLE IF EXISTS `ps_check_lost_instrumentation`;
/*!50001 DROP VIEW IF EXISTS `ps_check_lost_instrumentation`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `ps_check_lost_instrumentation` AS SELECT 
 1 AS `variable_name`,
 1 AS `variable_value`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `schema_auto_increment_columns`
--

DROP TABLE IF EXISTS `schema_auto_increment_columns`;
/*!50001 DROP VIEW IF EXISTS `schema_auto_increment_columns`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `schema_auto_increment_columns` AS SELECT 
 1 AS `table_schema`,
 1 AS `table_name`,
 1 AS `column_name`,
 1 AS `data_type`,
 1 AS `column_type`,
 1 AS `is_signed`,
 1 AS `is_unsigned`,
 1 AS `max_value`,
 1 AS `auto_increment`,
 1 AS `auto_increment_ratio`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `schema_index_statistics`
--

DROP TABLE IF EXISTS `schema_index_statistics`;
/*!50001 DROP VIEW IF EXISTS `schema_index_statistics`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `schema_index_statistics` AS SELECT 
 1 AS `table_schema`,
 1 AS `table_name`,
 1 AS `index_name`,
 1 AS `rows_selected`,
 1 AS `select_latency`,
 1 AS `rows_inserted`,
 1 AS `insert_latency`,
 1 AS `rows_updated`,
 1 AS `update_latency`,
 1 AS `rows_deleted`,
 1 AS `delete_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `schema_object_overview`
--

DROP TABLE IF EXISTS `schema_object_overview`;
/*!50001 DROP VIEW IF EXISTS `schema_object_overview`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `schema_object_overview` AS SELECT 
 1 AS `db`,
 1 AS `object_type`,
 1 AS `count`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `schema_redundant_indexes`
--

DROP TABLE IF EXISTS `schema_redundant_indexes`;
/*!50001 DROP VIEW IF EXISTS `schema_redundant_indexes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `schema_redundant_indexes` AS SELECT 
 1 AS `table_schema`,
 1 AS `table_name`,
 1 AS `redundant_index_name`,
 1 AS `redundant_index_columns`,
 1 AS `redundant_index_non_unique`,
 1 AS `dominant_index_name`,
 1 AS `dominant_index_columns`,
 1 AS `dominant_index_non_unique`,
 1 AS `subpart_exists`,
 1 AS `sql_drop_index`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `schema_table_lock_waits`
--

DROP TABLE IF EXISTS `schema_table_lock_waits`;
/*!50001 DROP VIEW IF EXISTS `schema_table_lock_waits`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `schema_table_lock_waits` AS SELECT 
 1 AS `object_schema`,
 1 AS `object_name`,
 1 AS `waiting_thread_id`,
 1 AS `waiting_pid`,
 1 AS `waiting_account`,
 1 AS `waiting_lock_type`,
 1 AS `waiting_lock_duration`,
 1 AS `waiting_query`,
 1 AS `waiting_query_secs`,
 1 AS `waiting_query_rows_affected`,
 1 AS `waiting_query_rows_examined`,
 1 AS `blocking_thread_id`,
 1 AS `blocking_pid`,
 1 AS `blocking_account`,
 1 AS `blocking_lock_type`,
 1 AS `blocking_lock_duration`,
 1 AS `sql_kill_blocking_query`,
 1 AS `sql_kill_blocking_connection`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `schema_table_statistics`
--

DROP TABLE IF EXISTS `schema_table_statistics`;
/*!50001 DROP VIEW IF EXISTS `schema_table_statistics`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `schema_table_statistics` AS SELECT 
 1 AS `table_schema`,
 1 AS `table_name`,
 1 AS `total_latency`,
 1 AS `rows_fetched`,
 1 AS `fetch_latency`,
 1 AS `rows_inserted`,
 1 AS `insert_latency`,
 1 AS `rows_updated`,
 1 AS `update_latency`,
 1 AS `rows_deleted`,
 1 AS `delete_latency`,
 1 AS `io_read_requests`,
 1 AS `io_read`,
 1 AS `io_read_latency`,
 1 AS `io_write_requests`,
 1 AS `io_write`,
 1 AS `io_write_latency`,
 1 AS `io_misc_requests`,
 1 AS `io_misc_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `schema_table_statistics_with_buffer`
--

DROP TABLE IF EXISTS `schema_table_statistics_with_buffer`;
/*!50001 DROP VIEW IF EXISTS `schema_table_statistics_with_buffer`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `schema_table_statistics_with_buffer` AS SELECT 
 1 AS `table_schema`,
 1 AS `table_name`,
 1 AS `rows_fetched`,
 1 AS `fetch_latency`,
 1 AS `rows_inserted`,
 1 AS `insert_latency`,
 1 AS `rows_updated`,
 1 AS `update_latency`,
 1 AS `rows_deleted`,
 1 AS `delete_latency`,
 1 AS `io_read_requests`,
 1 AS `io_read`,
 1 AS `io_read_latency`,
 1 AS `io_write_requests`,
 1 AS `io_write`,
 1 AS `io_write_latency`,
 1 AS `io_misc_requests`,
 1 AS `io_misc_latency`,
 1 AS `innodb_buffer_allocated`,
 1 AS `innodb_buffer_data`,
 1 AS `innodb_buffer_free`,
 1 AS `innodb_buffer_pages`,
 1 AS `innodb_buffer_pages_hashed`,
 1 AS `innodb_buffer_pages_old`,
 1 AS `innodb_buffer_rows_cached`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `schema_tables_with_full_table_scans`
--

DROP TABLE IF EXISTS `schema_tables_with_full_table_scans`;
/*!50001 DROP VIEW IF EXISTS `schema_tables_with_full_table_scans`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `schema_tables_with_full_table_scans` AS SELECT 
 1 AS `object_schema`,
 1 AS `object_name`,
 1 AS `rows_full_scanned`,
 1 AS `latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `schema_unused_indexes`
--

DROP TABLE IF EXISTS `schema_unused_indexes`;
/*!50001 DROP VIEW IF EXISTS `schema_unused_indexes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `schema_unused_indexes` AS SELECT 
 1 AS `object_schema`,
 1 AS `object_name`,
 1 AS `index_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `session`
--

DROP TABLE IF EXISTS `session`;
/*!50001 DROP VIEW IF EXISTS `session`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `session` AS SELECT 
 1 AS `thd_id`,
 1 AS `conn_id`,
 1 AS `user`,
 1 AS `db`,
 1 AS `command`,
 1 AS `state`,
 1 AS `time`,
 1 AS `current_statement`,
 1 AS `execution_engine`,
 1 AS `statement_latency`,
 1 AS `progress`,
 1 AS `lock_latency`,
 1 AS `cpu_latency`,
 1 AS `rows_examined`,
 1 AS `rows_sent`,
 1 AS `rows_affected`,
 1 AS `tmp_tables`,
 1 AS `tmp_disk_tables`,
 1 AS `full_scan`,
 1 AS `last_statement`,
 1 AS `last_statement_latency`,
 1 AS `current_memory`,
 1 AS `last_wait`,
 1 AS `last_wait_latency`,
 1 AS `source`,
 1 AS `trx_latency`,
 1 AS `trx_state`,
 1 AS `trx_autocommit`,
 1 AS `pid`,
 1 AS `program_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `session_ssl_status`
--

DROP TABLE IF EXISTS `session_ssl_status`;
/*!50001 DROP VIEW IF EXISTS `session_ssl_status`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `session_ssl_status` AS SELECT 
 1 AS `thread_id`,
 1 AS `ssl_version`,
 1 AS `ssl_cipher`,
 1 AS `ssl_sessions_reused`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `statement_analysis`
--

DROP TABLE IF EXISTS `statement_analysis`;
/*!50001 DROP VIEW IF EXISTS `statement_analysis`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `statement_analysis` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `full_scan`,
 1 AS `exec_count`,
 1 AS `err_count`,
 1 AS `warn_count`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `avg_latency`,
 1 AS `lock_latency`,
 1 AS `cpu_latency`,
 1 AS `rows_sent`,
 1 AS `rows_sent_avg`,
 1 AS `rows_examined`,
 1 AS `rows_examined_avg`,
 1 AS `rows_affected`,
 1 AS `rows_affected_avg`,
 1 AS `tmp_tables`,
 1 AS `tmp_disk_tables`,
 1 AS `rows_sorted`,
 1 AS `sort_merge_passes`,
 1 AS `max_controlled_memory`,
 1 AS `max_total_memory`,
 1 AS `digest`,
 1 AS `first_seen`,
 1 AS `last_seen`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `statements_with_errors_or_warnings`
--

DROP TABLE IF EXISTS `statements_with_errors_or_warnings`;
/*!50001 DROP VIEW IF EXISTS `statements_with_errors_or_warnings`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `statements_with_errors_or_warnings` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `exec_count`,
 1 AS `errors`,
 1 AS `error_pct`,
 1 AS `warnings`,
 1 AS `warning_pct`,
 1 AS `first_seen`,
 1 AS `last_seen`,
 1 AS `digest`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `statements_with_full_table_scans`
--

DROP TABLE IF EXISTS `statements_with_full_table_scans`;
/*!50001 DROP VIEW IF EXISTS `statements_with_full_table_scans`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `statements_with_full_table_scans` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `exec_count`,
 1 AS `total_latency`,
 1 AS `no_index_used_count`,
 1 AS `no_good_index_used_count`,
 1 AS `no_index_used_pct`,
 1 AS `rows_sent`,
 1 AS `rows_examined`,
 1 AS `rows_sent_avg`,
 1 AS `rows_examined_avg`,
 1 AS `first_seen`,
 1 AS `last_seen`,
 1 AS `digest`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `statements_with_runtimes_in_95th_percentile`
--

DROP TABLE IF EXISTS `statements_with_runtimes_in_95th_percentile`;
/*!50001 DROP VIEW IF EXISTS `statements_with_runtimes_in_95th_percentile`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `statements_with_runtimes_in_95th_percentile` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `full_scan`,
 1 AS `exec_count`,
 1 AS `err_count`,
 1 AS `warn_count`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `avg_latency`,
 1 AS `rows_sent`,
 1 AS `rows_sent_avg`,
 1 AS `rows_examined`,
 1 AS `rows_examined_avg`,
 1 AS `first_seen`,
 1 AS `last_seen`,
 1 AS `digest`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `statements_with_sorting`
--

DROP TABLE IF EXISTS `statements_with_sorting`;
/*!50001 DROP VIEW IF EXISTS `statements_with_sorting`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `statements_with_sorting` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `exec_count`,
 1 AS `total_latency`,
 1 AS `sort_merge_passes`,
 1 AS `avg_sort_merges`,
 1 AS `sorts_using_scans`,
 1 AS `sort_using_range`,
 1 AS `rows_sorted`,
 1 AS `avg_rows_sorted`,
 1 AS `first_seen`,
 1 AS `last_seen`,
 1 AS `digest`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `statements_with_temp_tables`
--

DROP TABLE IF EXISTS `statements_with_temp_tables`;
/*!50001 DROP VIEW IF EXISTS `statements_with_temp_tables`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `statements_with_temp_tables` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `exec_count`,
 1 AS `total_latency`,
 1 AS `memory_tmp_tables`,
 1 AS `disk_tmp_tables`,
 1 AS `avg_tmp_tables_per_query`,
 1 AS `tmp_tables_to_disk_pct`,
 1 AS `first_seen`,
 1 AS `last_seen`,
 1 AS `digest`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `sys_config`
--

DROP TABLE IF EXISTS `sys_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_config` (
  `variable` varchar(128) NOT NULL,
  `value` varchar(128) DEFAULT NULL,
  `set_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `set_by` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`variable`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_config`
--

LOCK TABLES `sys_config` WRITE;
/*!40000 ALTER TABLE `sys_config` DISABLE KEYS */;
INSERT INTO `sys_config` VALUES ('diagnostics.allow_i_s_tables','OFF','2023-02-01 06:26:52',NULL),('diagnostics.include_raw','OFF','2023-02-01 06:26:52',NULL),('ps_thread_trx_info.max_length','65535','2023-02-01 06:26:52',NULL),('statement_performance_analyzer.limit','100','2023-02-01 06:26:52',NULL),('statement_performance_analyzer.view',NULL,'2023-02-01 06:26:52',NULL),('statement_truncate_len','64','2023-02-01 06:26:52',NULL);
/*!40000 ALTER TABLE `sys_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `user_summary`
--

DROP TABLE IF EXISTS `user_summary`;
/*!50001 DROP VIEW IF EXISTS `user_summary`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `user_summary` AS SELECT 
 1 AS `user`,
 1 AS `statements`,
 1 AS `statement_latency`,
 1 AS `statement_avg_latency`,
 1 AS `table_scans`,
 1 AS `file_ios`,
 1 AS `file_io_latency`,
 1 AS `current_connections`,
 1 AS `total_connections`,
 1 AS `unique_hosts`,
 1 AS `current_memory`,
 1 AS `total_memory_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `user_summary_by_file_io`
--

DROP TABLE IF EXISTS `user_summary_by_file_io`;
/*!50001 DROP VIEW IF EXISTS `user_summary_by_file_io`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `user_summary_by_file_io` AS SELECT 
 1 AS `user`,
 1 AS `ios`,
 1 AS `io_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `user_summary_by_file_io_type`
--

DROP TABLE IF EXISTS `user_summary_by_file_io_type`;
/*!50001 DROP VIEW IF EXISTS `user_summary_by_file_io_type`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `user_summary_by_file_io_type` AS SELECT 
 1 AS `user`,
 1 AS `event_name`,
 1 AS `total`,
 1 AS `latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `user_summary_by_stages`
--

DROP TABLE IF EXISTS `user_summary_by_stages`;
/*!50001 DROP VIEW IF EXISTS `user_summary_by_stages`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `user_summary_by_stages` AS SELECT 
 1 AS `user`,
 1 AS `event_name`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `user_summary_by_statement_latency`
--

DROP TABLE IF EXISTS `user_summary_by_statement_latency`;
/*!50001 DROP VIEW IF EXISTS `user_summary_by_statement_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `user_summary_by_statement_latency` AS SELECT 
 1 AS `user`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `lock_latency`,
 1 AS `cpu_latency`,
 1 AS `rows_sent`,
 1 AS `rows_examined`,
 1 AS `rows_affected`,
 1 AS `full_scans`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `user_summary_by_statement_type`
--

DROP TABLE IF EXISTS `user_summary_by_statement_type`;
/*!50001 DROP VIEW IF EXISTS `user_summary_by_statement_type`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `user_summary_by_statement_type` AS SELECT 
 1 AS `user`,
 1 AS `statement`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `lock_latency`,
 1 AS `cpu_latency`,
 1 AS `rows_sent`,
 1 AS `rows_examined`,
 1 AS `rows_affected`,
 1 AS `full_scans`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `version`
--

DROP TABLE IF EXISTS `version`;
/*!50001 DROP VIEW IF EXISTS `version`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `version` AS SELECT 
 1 AS `sys_version`,
 1 AS `mysql_version`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `wait_classes_global_by_avg_latency`
--

DROP TABLE IF EXISTS `wait_classes_global_by_avg_latency`;
/*!50001 DROP VIEW IF EXISTS `wait_classes_global_by_avg_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `wait_classes_global_by_avg_latency` AS SELECT 
 1 AS `event_class`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `min_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `wait_classes_global_by_latency`
--

DROP TABLE IF EXISTS `wait_classes_global_by_latency`;
/*!50001 DROP VIEW IF EXISTS `wait_classes_global_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `wait_classes_global_by_latency` AS SELECT 
 1 AS `event_class`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `min_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `waits_by_host_by_latency`
--

DROP TABLE IF EXISTS `waits_by_host_by_latency`;
/*!50001 DROP VIEW IF EXISTS `waits_by_host_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `waits_by_host_by_latency` AS SELECT 
 1 AS `host`,
 1 AS `event`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `waits_by_user_by_latency`
--

DROP TABLE IF EXISTS `waits_by_user_by_latency`;
/*!50001 DROP VIEW IF EXISTS `waits_by_user_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `waits_by_user_by_latency` AS SELECT 
 1 AS `user`,
 1 AS `event`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `waits_global_by_latency`
--

DROP TABLE IF EXISTS `waits_global_by_latency`;
/*!50001 DROP VIEW IF EXISTS `waits_global_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `waits_global_by_latency` AS SELECT 
 1 AS `events`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$host_summary`
--

DROP TABLE IF EXISTS `x$host_summary`;
/*!50001 DROP VIEW IF EXISTS `x$host_summary`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$host_summary` AS SELECT 
 1 AS `host`,
 1 AS `statements`,
 1 AS `statement_latency`,
 1 AS `statement_avg_latency`,
 1 AS `table_scans`,
 1 AS `file_ios`,
 1 AS `file_io_latency`,
 1 AS `current_connections`,
 1 AS `total_connections`,
 1 AS `unique_users`,
 1 AS `current_memory`,
 1 AS `total_memory_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$host_summary_by_file_io`
--

DROP TABLE IF EXISTS `x$host_summary_by_file_io`;
/*!50001 DROP VIEW IF EXISTS `x$host_summary_by_file_io`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$host_summary_by_file_io` AS SELECT 
 1 AS `host`,
 1 AS `ios`,
 1 AS `io_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$host_summary_by_file_io_type`
--

DROP TABLE IF EXISTS `x$host_summary_by_file_io_type`;
/*!50001 DROP VIEW IF EXISTS `x$host_summary_by_file_io_type`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$host_summary_by_file_io_type` AS SELECT 
 1 AS `host`,
 1 AS `event_name`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$host_summary_by_stages`
--

DROP TABLE IF EXISTS `x$host_summary_by_stages`;
/*!50001 DROP VIEW IF EXISTS `x$host_summary_by_stages`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$host_summary_by_stages` AS SELECT 
 1 AS `host`,
 1 AS `event_name`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$host_summary_by_statement_latency`
--

DROP TABLE IF EXISTS `x$host_summary_by_statement_latency`;
/*!50001 DROP VIEW IF EXISTS `x$host_summary_by_statement_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$host_summary_by_statement_latency` AS SELECT 
 1 AS `host`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `lock_latency`,
 1 AS `cpu_latency`,
 1 AS `rows_sent`,
 1 AS `rows_examined`,
 1 AS `rows_affected`,
 1 AS `full_scans`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$host_summary_by_statement_type`
--

DROP TABLE IF EXISTS `x$host_summary_by_statement_type`;
/*!50001 DROP VIEW IF EXISTS `x$host_summary_by_statement_type`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$host_summary_by_statement_type` AS SELECT 
 1 AS `host`,
 1 AS `statement`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `lock_latency`,
 1 AS `cpu_latency`,
 1 AS `rows_sent`,
 1 AS `rows_examined`,
 1 AS `rows_affected`,
 1 AS `full_scans`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$innodb_buffer_stats_by_schema`
--

DROP TABLE IF EXISTS `x$innodb_buffer_stats_by_schema`;
/*!50001 DROP VIEW IF EXISTS `x$innodb_buffer_stats_by_schema`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$innodb_buffer_stats_by_schema` AS SELECT 
 1 AS `object_schema`,
 1 AS `allocated`,
 1 AS `data`,
 1 AS `pages`,
 1 AS `pages_hashed`,
 1 AS `pages_old`,
 1 AS `rows_cached`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$innodb_buffer_stats_by_table`
--

DROP TABLE IF EXISTS `x$innodb_buffer_stats_by_table`;
/*!50001 DROP VIEW IF EXISTS `x$innodb_buffer_stats_by_table`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$innodb_buffer_stats_by_table` AS SELECT 
 1 AS `object_schema`,
 1 AS `object_name`,
 1 AS `allocated`,
 1 AS `data`,
 1 AS `pages`,
 1 AS `pages_hashed`,
 1 AS `pages_old`,
 1 AS `rows_cached`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$innodb_lock_waits`
--

DROP TABLE IF EXISTS `x$innodb_lock_waits`;
/*!50001 DROP VIEW IF EXISTS `x$innodb_lock_waits`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$innodb_lock_waits` AS SELECT 
 1 AS `wait_started`,
 1 AS `wait_age`,
 1 AS `wait_age_secs`,
 1 AS `locked_table`,
 1 AS `locked_table_schema`,
 1 AS `locked_table_name`,
 1 AS `locked_table_partition`,
 1 AS `locked_table_subpartition`,
 1 AS `locked_index`,
 1 AS `locked_type`,
 1 AS `waiting_trx_id`,
 1 AS `waiting_trx_started`,
 1 AS `waiting_trx_age`,
 1 AS `waiting_trx_rows_locked`,
 1 AS `waiting_trx_rows_modified`,
 1 AS `waiting_pid`,
 1 AS `waiting_query`,
 1 AS `waiting_lock_id`,
 1 AS `waiting_lock_mode`,
 1 AS `blocking_trx_id`,
 1 AS `blocking_pid`,
 1 AS `blocking_query`,
 1 AS `blocking_lock_id`,
 1 AS `blocking_lock_mode`,
 1 AS `blocking_trx_started`,
 1 AS `blocking_trx_age`,
 1 AS `blocking_trx_rows_locked`,
 1 AS `blocking_trx_rows_modified`,
 1 AS `sql_kill_blocking_query`,
 1 AS `sql_kill_blocking_connection`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$io_by_thread_by_latency`
--

DROP TABLE IF EXISTS `x$io_by_thread_by_latency`;
/*!50001 DROP VIEW IF EXISTS `x$io_by_thread_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$io_by_thread_by_latency` AS SELECT 
 1 AS `user`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `min_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`,
 1 AS `thread_id`,
 1 AS `processlist_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$io_global_by_file_by_bytes`
--

DROP TABLE IF EXISTS `x$io_global_by_file_by_bytes`;
/*!50001 DROP VIEW IF EXISTS `x$io_global_by_file_by_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$io_global_by_file_by_bytes` AS SELECT 
 1 AS `file`,
 1 AS `count_read`,
 1 AS `total_read`,
 1 AS `avg_read`,
 1 AS `count_write`,
 1 AS `total_written`,
 1 AS `avg_write`,
 1 AS `total`,
 1 AS `write_pct`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$io_global_by_file_by_latency`
--

DROP TABLE IF EXISTS `x$io_global_by_file_by_latency`;
/*!50001 DROP VIEW IF EXISTS `x$io_global_by_file_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$io_global_by_file_by_latency` AS SELECT 
 1 AS `file`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `count_read`,
 1 AS `read_latency`,
 1 AS `count_write`,
 1 AS `write_latency`,
 1 AS `count_misc`,
 1 AS `misc_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$io_global_by_wait_by_bytes`
--

DROP TABLE IF EXISTS `x$io_global_by_wait_by_bytes`;
/*!50001 DROP VIEW IF EXISTS `x$io_global_by_wait_by_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$io_global_by_wait_by_bytes` AS SELECT 
 1 AS `event_name`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `min_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`,
 1 AS `count_read`,
 1 AS `total_read`,
 1 AS `avg_read`,
 1 AS `count_write`,
 1 AS `total_written`,
 1 AS `avg_written`,
 1 AS `total_requested`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$io_global_by_wait_by_latency`
--

DROP TABLE IF EXISTS `x$io_global_by_wait_by_latency`;
/*!50001 DROP VIEW IF EXISTS `x$io_global_by_wait_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$io_global_by_wait_by_latency` AS SELECT 
 1 AS `event_name`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`,
 1 AS `read_latency`,
 1 AS `write_latency`,
 1 AS `misc_latency`,
 1 AS `count_read`,
 1 AS `total_read`,
 1 AS `avg_read`,
 1 AS `count_write`,
 1 AS `total_written`,
 1 AS `avg_written`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$latest_file_io`
--

DROP TABLE IF EXISTS `x$latest_file_io`;
/*!50001 DROP VIEW IF EXISTS `x$latest_file_io`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$latest_file_io` AS SELECT 
 1 AS `thread`,
 1 AS `file`,
 1 AS `latency`,
 1 AS `operation`,
 1 AS `requested`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$memory_by_host_by_current_bytes`
--

DROP TABLE IF EXISTS `x$memory_by_host_by_current_bytes`;
/*!50001 DROP VIEW IF EXISTS `x$memory_by_host_by_current_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$memory_by_host_by_current_bytes` AS SELECT 
 1 AS `host`,
 1 AS `current_count_used`,
 1 AS `current_allocated`,
 1 AS `current_avg_alloc`,
 1 AS `current_max_alloc`,
 1 AS `total_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$memory_by_thread_by_current_bytes`
--

DROP TABLE IF EXISTS `x$memory_by_thread_by_current_bytes`;
/*!50001 DROP VIEW IF EXISTS `x$memory_by_thread_by_current_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$memory_by_thread_by_current_bytes` AS SELECT 
 1 AS `thread_id`,
 1 AS `user`,
 1 AS `current_count_used`,
 1 AS `current_allocated`,
 1 AS `current_avg_alloc`,
 1 AS `current_max_alloc`,
 1 AS `total_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$memory_by_user_by_current_bytes`
--

DROP TABLE IF EXISTS `x$memory_by_user_by_current_bytes`;
/*!50001 DROP VIEW IF EXISTS `x$memory_by_user_by_current_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$memory_by_user_by_current_bytes` AS SELECT 
 1 AS `user`,
 1 AS `current_count_used`,
 1 AS `current_allocated`,
 1 AS `current_avg_alloc`,
 1 AS `current_max_alloc`,
 1 AS `total_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$memory_global_by_current_bytes`
--

DROP TABLE IF EXISTS `x$memory_global_by_current_bytes`;
/*!50001 DROP VIEW IF EXISTS `x$memory_global_by_current_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$memory_global_by_current_bytes` AS SELECT 
 1 AS `event_name`,
 1 AS `current_count`,
 1 AS `current_alloc`,
 1 AS `current_avg_alloc`,
 1 AS `high_count`,
 1 AS `high_alloc`,
 1 AS `high_avg_alloc`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$memory_global_total`
--

DROP TABLE IF EXISTS `x$memory_global_total`;
/*!50001 DROP VIEW IF EXISTS `x$memory_global_total`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$memory_global_total` AS SELECT 
 1 AS `total_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$processlist`
--

DROP TABLE IF EXISTS `x$processlist`;
/*!50001 DROP VIEW IF EXISTS `x$processlist`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$processlist` AS SELECT 
 1 AS `thd_id`,
 1 AS `conn_id`,
 1 AS `user`,
 1 AS `db`,
 1 AS `command`,
 1 AS `state`,
 1 AS `time`,
 1 AS `current_statement`,
 1 AS `execution_engine`,
 1 AS `statement_latency`,
 1 AS `progress`,
 1 AS `lock_latency`,
 1 AS `cpu_latency`,
 1 AS `rows_examined`,
 1 AS `rows_sent`,
 1 AS `rows_affected`,
 1 AS `tmp_tables`,
 1 AS `tmp_disk_tables`,
 1 AS `full_scan`,
 1 AS `last_statement`,
 1 AS `last_statement_latency`,
 1 AS `current_memory`,
 1 AS `last_wait`,
 1 AS `last_wait_latency`,
 1 AS `source`,
 1 AS `trx_latency`,
 1 AS `trx_state`,
 1 AS `trx_autocommit`,
 1 AS `pid`,
 1 AS `program_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$ps_digest_95th_percentile_by_avg_us`
--

DROP TABLE IF EXISTS `x$ps_digest_95th_percentile_by_avg_us`;
/*!50001 DROP VIEW IF EXISTS `x$ps_digest_95th_percentile_by_avg_us`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$ps_digest_95th_percentile_by_avg_us` AS SELECT 
 1 AS `avg_us`,
 1 AS `percentile`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$ps_digest_avg_latency_distribution`
--

DROP TABLE IF EXISTS `x$ps_digest_avg_latency_distribution`;
/*!50001 DROP VIEW IF EXISTS `x$ps_digest_avg_latency_distribution`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$ps_digest_avg_latency_distribution` AS SELECT 
 1 AS `cnt`,
 1 AS `avg_us`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$ps_schema_table_statistics_io`
--

DROP TABLE IF EXISTS `x$ps_schema_table_statistics_io`;
/*!50001 DROP VIEW IF EXISTS `x$ps_schema_table_statistics_io`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$ps_schema_table_statistics_io` AS SELECT 
 1 AS `table_schema`,
 1 AS `table_name`,
 1 AS `count_read`,
 1 AS `sum_number_of_bytes_read`,
 1 AS `sum_timer_read`,
 1 AS `count_write`,
 1 AS `sum_number_of_bytes_write`,
 1 AS `sum_timer_write`,
 1 AS `count_misc`,
 1 AS `sum_timer_misc`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$schema_flattened_keys`
--

DROP TABLE IF EXISTS `x$schema_flattened_keys`;
/*!50001 DROP VIEW IF EXISTS `x$schema_flattened_keys`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$schema_flattened_keys` AS SELECT 
 1 AS `table_schema`,
 1 AS `table_name`,
 1 AS `index_name`,
 1 AS `non_unique`,
 1 AS `subpart_exists`,
 1 AS `index_columns`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$schema_index_statistics`
--

DROP TABLE IF EXISTS `x$schema_index_statistics`;
/*!50001 DROP VIEW IF EXISTS `x$schema_index_statistics`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$schema_index_statistics` AS SELECT 
 1 AS `table_schema`,
 1 AS `table_name`,
 1 AS `index_name`,
 1 AS `rows_selected`,
 1 AS `select_latency`,
 1 AS `rows_inserted`,
 1 AS `insert_latency`,
 1 AS `rows_updated`,
 1 AS `update_latency`,
 1 AS `rows_deleted`,
 1 AS `delete_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$schema_table_lock_waits`
--

DROP TABLE IF EXISTS `x$schema_table_lock_waits`;
/*!50001 DROP VIEW IF EXISTS `x$schema_table_lock_waits`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$schema_table_lock_waits` AS SELECT 
 1 AS `object_schema`,
 1 AS `object_name`,
 1 AS `waiting_thread_id`,
 1 AS `waiting_pid`,
 1 AS `waiting_account`,
 1 AS `waiting_lock_type`,
 1 AS `waiting_lock_duration`,
 1 AS `waiting_query`,
 1 AS `waiting_query_secs`,
 1 AS `waiting_query_rows_affected`,
 1 AS `waiting_query_rows_examined`,
 1 AS `blocking_thread_id`,
 1 AS `blocking_pid`,
 1 AS `blocking_account`,
 1 AS `blocking_lock_type`,
 1 AS `blocking_lock_duration`,
 1 AS `sql_kill_blocking_query`,
 1 AS `sql_kill_blocking_connection`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$schema_table_statistics`
--

DROP TABLE IF EXISTS `x$schema_table_statistics`;
/*!50001 DROP VIEW IF EXISTS `x$schema_table_statistics`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$schema_table_statistics` AS SELECT 
 1 AS `table_schema`,
 1 AS `table_name`,
 1 AS `total_latency`,
 1 AS `rows_fetched`,
 1 AS `fetch_latency`,
 1 AS `rows_inserted`,
 1 AS `insert_latency`,
 1 AS `rows_updated`,
 1 AS `update_latency`,
 1 AS `rows_deleted`,
 1 AS `delete_latency`,
 1 AS `io_read_requests`,
 1 AS `io_read`,
 1 AS `io_read_latency`,
 1 AS `io_write_requests`,
 1 AS `io_write`,
 1 AS `io_write_latency`,
 1 AS `io_misc_requests`,
 1 AS `io_misc_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$schema_table_statistics_with_buffer`
--

DROP TABLE IF EXISTS `x$schema_table_statistics_with_buffer`;
/*!50001 DROP VIEW IF EXISTS `x$schema_table_statistics_with_buffer`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$schema_table_statistics_with_buffer` AS SELECT 
 1 AS `table_schema`,
 1 AS `table_name`,
 1 AS `rows_fetched`,
 1 AS `fetch_latency`,
 1 AS `rows_inserted`,
 1 AS `insert_latency`,
 1 AS `rows_updated`,
 1 AS `update_latency`,
 1 AS `rows_deleted`,
 1 AS `delete_latency`,
 1 AS `io_read_requests`,
 1 AS `io_read`,
 1 AS `io_read_latency`,
 1 AS `io_write_requests`,
 1 AS `io_write`,
 1 AS `io_write_latency`,
 1 AS `io_misc_requests`,
 1 AS `io_misc_latency`,
 1 AS `innodb_buffer_allocated`,
 1 AS `innodb_buffer_data`,
 1 AS `innodb_buffer_free`,
 1 AS `innodb_buffer_pages`,
 1 AS `innodb_buffer_pages_hashed`,
 1 AS `innodb_buffer_pages_old`,
 1 AS `innodb_buffer_rows_cached`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$schema_tables_with_full_table_scans`
--

DROP TABLE IF EXISTS `x$schema_tables_with_full_table_scans`;
/*!50001 DROP VIEW IF EXISTS `x$schema_tables_with_full_table_scans`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$schema_tables_with_full_table_scans` AS SELECT 
 1 AS `object_schema`,
 1 AS `object_name`,
 1 AS `rows_full_scanned`,
 1 AS `latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$session`
--

DROP TABLE IF EXISTS `x$session`;
/*!50001 DROP VIEW IF EXISTS `x$session`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$session` AS SELECT 
 1 AS `thd_id`,
 1 AS `conn_id`,
 1 AS `user`,
 1 AS `db`,
 1 AS `command`,
 1 AS `state`,
 1 AS `time`,
 1 AS `current_statement`,
 1 AS `execution_engine`,
 1 AS `statement_latency`,
 1 AS `progress`,
 1 AS `lock_latency`,
 1 AS `cpu_latency`,
 1 AS `rows_examined`,
 1 AS `rows_sent`,
 1 AS `rows_affected`,
 1 AS `tmp_tables`,
 1 AS `tmp_disk_tables`,
 1 AS `full_scan`,
 1 AS `last_statement`,
 1 AS `last_statement_latency`,
 1 AS `current_memory`,
 1 AS `last_wait`,
 1 AS `last_wait_latency`,
 1 AS `source`,
 1 AS `trx_latency`,
 1 AS `trx_state`,
 1 AS `trx_autocommit`,
 1 AS `pid`,
 1 AS `program_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$statement_analysis`
--

DROP TABLE IF EXISTS `x$statement_analysis`;
/*!50001 DROP VIEW IF EXISTS `x$statement_analysis`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$statement_analysis` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `full_scan`,
 1 AS `exec_count`,
 1 AS `exec_secondary_count`,
 1 AS `err_count`,
 1 AS `warn_count`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `avg_latency`,
 1 AS `lock_latency`,
 1 AS `cpu_latency`,
 1 AS `rows_sent`,
 1 AS `rows_sent_avg`,
 1 AS `rows_examined`,
 1 AS `rows_examined_avg`,
 1 AS `rows_affected`,
 1 AS `rows_affected_avg`,
 1 AS `tmp_tables`,
 1 AS `tmp_disk_tables`,
 1 AS `rows_sorted`,
 1 AS `sort_merge_passes`,
 1 AS `max_controlled_memory`,
 1 AS `max_total_memory`,
 1 AS `digest`,
 1 AS `first_seen`,
 1 AS `last_seen`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$statements_with_errors_or_warnings`
--

DROP TABLE IF EXISTS `x$statements_with_errors_or_warnings`;
/*!50001 DROP VIEW IF EXISTS `x$statements_with_errors_or_warnings`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$statements_with_errors_or_warnings` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `exec_count`,
 1 AS `errors`,
 1 AS `error_pct`,
 1 AS `warnings`,
 1 AS `warning_pct`,
 1 AS `first_seen`,
 1 AS `last_seen`,
 1 AS `digest`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$statements_with_full_table_scans`
--

DROP TABLE IF EXISTS `x$statements_with_full_table_scans`;
/*!50001 DROP VIEW IF EXISTS `x$statements_with_full_table_scans`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$statements_with_full_table_scans` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `exec_count`,
 1 AS `total_latency`,
 1 AS `no_index_used_count`,
 1 AS `no_good_index_used_count`,
 1 AS `no_index_used_pct`,
 1 AS `rows_sent`,
 1 AS `rows_examined`,
 1 AS `rows_sent_avg`,
 1 AS `rows_examined_avg`,
 1 AS `first_seen`,
 1 AS `last_seen`,
 1 AS `digest`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$statements_with_runtimes_in_95th_percentile`
--

DROP TABLE IF EXISTS `x$statements_with_runtimes_in_95th_percentile`;
/*!50001 DROP VIEW IF EXISTS `x$statements_with_runtimes_in_95th_percentile`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$statements_with_runtimes_in_95th_percentile` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `full_scan`,
 1 AS `exec_count`,
 1 AS `err_count`,
 1 AS `warn_count`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `avg_latency`,
 1 AS `rows_sent`,
 1 AS `rows_sent_avg`,
 1 AS `rows_examined`,
 1 AS `rows_examined_avg`,
 1 AS `first_seen`,
 1 AS `last_seen`,
 1 AS `digest`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$statements_with_sorting`
--

DROP TABLE IF EXISTS `x$statements_with_sorting`;
/*!50001 DROP VIEW IF EXISTS `x$statements_with_sorting`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$statements_with_sorting` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `exec_count`,
 1 AS `total_latency`,
 1 AS `sort_merge_passes`,
 1 AS `avg_sort_merges`,
 1 AS `sorts_using_scans`,
 1 AS `sort_using_range`,
 1 AS `rows_sorted`,
 1 AS `avg_rows_sorted`,
 1 AS `first_seen`,
 1 AS `last_seen`,
 1 AS `digest`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$statements_with_temp_tables`
--

DROP TABLE IF EXISTS `x$statements_with_temp_tables`;
/*!50001 DROP VIEW IF EXISTS `x$statements_with_temp_tables`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$statements_with_temp_tables` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `exec_count`,
 1 AS `total_latency`,
 1 AS `memory_tmp_tables`,
 1 AS `disk_tmp_tables`,
 1 AS `avg_tmp_tables_per_query`,
 1 AS `tmp_tables_to_disk_pct`,
 1 AS `first_seen`,
 1 AS `last_seen`,
 1 AS `digest`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$user_summary`
--

DROP TABLE IF EXISTS `x$user_summary`;
/*!50001 DROP VIEW IF EXISTS `x$user_summary`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$user_summary` AS SELECT 
 1 AS `user`,
 1 AS `statements`,
 1 AS `statement_latency`,
 1 AS `statement_avg_latency`,
 1 AS `table_scans`,
 1 AS `file_ios`,
 1 AS `file_io_latency`,
 1 AS `current_connections`,
 1 AS `total_connections`,
 1 AS `unique_hosts`,
 1 AS `current_memory`,
 1 AS `total_memory_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$user_summary_by_file_io`
--

DROP TABLE IF EXISTS `x$user_summary_by_file_io`;
/*!50001 DROP VIEW IF EXISTS `x$user_summary_by_file_io`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$user_summary_by_file_io` AS SELECT 
 1 AS `user`,
 1 AS `ios`,
 1 AS `io_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$user_summary_by_file_io_type`
--

DROP TABLE IF EXISTS `x$user_summary_by_file_io_type`;
/*!50001 DROP VIEW IF EXISTS `x$user_summary_by_file_io_type`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$user_summary_by_file_io_type` AS SELECT 
 1 AS `user`,
 1 AS `event_name`,
 1 AS `total`,
 1 AS `latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$user_summary_by_stages`
--

DROP TABLE IF EXISTS `x$user_summary_by_stages`;
/*!50001 DROP VIEW IF EXISTS `x$user_summary_by_stages`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$user_summary_by_stages` AS SELECT 
 1 AS `user`,
 1 AS `event_name`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$user_summary_by_statement_latency`
--

DROP TABLE IF EXISTS `x$user_summary_by_statement_latency`;
/*!50001 DROP VIEW IF EXISTS `x$user_summary_by_statement_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$user_summary_by_statement_latency` AS SELECT 
 1 AS `user`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `lock_latency`,
 1 AS `cpu_latency`,
 1 AS `rows_sent`,
 1 AS `rows_examined`,
 1 AS `rows_affected`,
 1 AS `full_scans`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$user_summary_by_statement_type`
--

DROP TABLE IF EXISTS `x$user_summary_by_statement_type`;
/*!50001 DROP VIEW IF EXISTS `x$user_summary_by_statement_type`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$user_summary_by_statement_type` AS SELECT 
 1 AS `user`,
 1 AS `statement`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `lock_latency`,
 1 AS `cpu_latency`,
 1 AS `rows_sent`,
 1 AS `rows_examined`,
 1 AS `rows_affected`,
 1 AS `full_scans`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$wait_classes_global_by_avg_latency`
--

DROP TABLE IF EXISTS `x$wait_classes_global_by_avg_latency`;
/*!50001 DROP VIEW IF EXISTS `x$wait_classes_global_by_avg_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$wait_classes_global_by_avg_latency` AS SELECT 
 1 AS `event_class`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `min_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$wait_classes_global_by_latency`
--

DROP TABLE IF EXISTS `x$wait_classes_global_by_latency`;
/*!50001 DROP VIEW IF EXISTS `x$wait_classes_global_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$wait_classes_global_by_latency` AS SELECT 
 1 AS `event_class`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `min_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$waits_by_host_by_latency`
--

DROP TABLE IF EXISTS `x$waits_by_host_by_latency`;
/*!50001 DROP VIEW IF EXISTS `x$waits_by_host_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$waits_by_host_by_latency` AS SELECT 
 1 AS `host`,
 1 AS `event`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$waits_by_user_by_latency`
--

DROP TABLE IF EXISTS `x$waits_by_user_by_latency`;
/*!50001 DROP VIEW IF EXISTS `x$waits_by_user_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$waits_by_user_by_latency` AS SELECT 
 1 AS `user`,
 1 AS `event`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$waits_global_by_latency`
--

DROP TABLE IF EXISTS `x$waits_global_by_latency`;
/*!50001 DROP VIEW IF EXISTS `x$waits_global_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$waits_global_by_latency` AS SELECT 
 1 AS `events`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `host_summary`
--

/*!50001 DROP VIEW IF EXISTS `host_summary`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `host_summary` (`host`,`statements`,`statement_latency`,`statement_avg_latency`,`table_scans`,`file_ios`,`file_io_latency`,`current_connections`,`total_connections`,`unique_users`,`current_memory`,`total_memory_allocated`) AS select if((`performance_schema`.`accounts`.`HOST` is null),'background',`performance_schema`.`accounts`.`HOST`) AS `host`,sum(`stmt`.`total`) AS `statements`,format_pico_time(sum(`stmt`.`total_latency`)) AS `statement_latency`,format_pico_time(ifnull((sum(`stmt`.`total_latency`) / nullif(sum(`stmt`.`total`),0)),0)) AS `statement_avg_latency`,sum(`stmt`.`full_scans`) AS `table_scans`,sum(`io`.`ios`) AS `file_ios`,format_pico_time(sum(`io`.`io_latency`)) AS `file_io_latency`,sum(`performance_schema`.`accounts`.`CURRENT_CONNECTIONS`) AS `current_connections`,sum(`performance_schema`.`accounts`.`TOTAL_CONNECTIONS`) AS `total_connections`,count(distinct `performance_schema`.`accounts`.`USER`) AS `unique_users`,format_bytes(sum(`mem`.`current_allocated`)) AS `current_memory`,format_bytes(sum(`mem`.`total_allocated`)) AS `total_memory_allocated` from (((`performance_schema`.`accounts` join `x$host_summary_by_statement_latency` `stmt` on((`performance_schema`.`accounts`.`HOST` = `stmt`.`host`))) join `x$host_summary_by_file_io` `io` on((`performance_schema`.`accounts`.`HOST` = `io`.`host`))) join `x$memory_by_host_by_current_bytes` `mem` on((`performance_schema`.`accounts`.`HOST` = `mem`.`host`))) group by if((`performance_schema`.`accounts`.`HOST` is null),'background',`performance_schema`.`accounts`.`HOST`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `host_summary_by_file_io`
--

/*!50001 DROP VIEW IF EXISTS `host_summary_by_file_io`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `host_summary_by_file_io` (`host`,`ios`,`io_latency`) AS select if((`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`) AS `host`,sum(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`COUNT_STAR`) AS `ios`,format_pico_time(sum(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`)) AS `io_latency` from `performance_schema`.`events_waits_summary_by_host_by_event_name` where (`performance_schema`.`events_waits_summary_by_host_by_event_name`.`EVENT_NAME` like 'wait/io/file/%') group by if((`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`) order by sum(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `host_summary_by_file_io_type`
--

/*!50001 DROP VIEW IF EXISTS `host_summary_by_file_io_type`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `host_summary_by_file_io_type` (`host`,`event_name`,`total`,`total_latency`,`max_latency`) AS select if((`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`) AS `host`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`EVENT_NAME` AS `event_name`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`COUNT_STAR` AS `total`,format_pico_time(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,format_pico_time(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency` from `performance_schema`.`events_waits_summary_by_host_by_event_name` where ((`performance_schema`.`events_waits_summary_by_host_by_event_name`.`EVENT_NAME` like 'wait/io/file%') and (`performance_schema`.`events_waits_summary_by_host_by_event_name`.`COUNT_STAR` > 0)) order by if((`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`),`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `host_summary_by_stages`
--

/*!50001 DROP VIEW IF EXISTS `host_summary_by_stages`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `host_summary_by_stages` (`host`,`event_name`,`total`,`total_latency`,`avg_latency`) AS select if((`performance_schema`.`events_stages_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_stages_summary_by_host_by_event_name`.`HOST`) AS `host`,`performance_schema`.`events_stages_summary_by_host_by_event_name`.`EVENT_NAME` AS `event_name`,`performance_schema`.`events_stages_summary_by_host_by_event_name`.`COUNT_STAR` AS `total`,format_pico_time(`performance_schema`.`events_stages_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,format_pico_time(`performance_schema`.`events_stages_summary_by_host_by_event_name`.`AVG_TIMER_WAIT`) AS `avg_latency` from `performance_schema`.`events_stages_summary_by_host_by_event_name` where (`performance_schema`.`events_stages_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` <> 0) order by if((`performance_schema`.`events_stages_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_stages_summary_by_host_by_event_name`.`HOST`),`performance_schema`.`events_stages_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `host_summary_by_statement_latency`
--

/*!50001 DROP VIEW IF EXISTS `host_summary_by_statement_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `host_summary_by_statement_latency` (`host`,`total`,`total_latency`,`max_latency`,`lock_latency`,`cpu_latency`,`rows_sent`,`rows_examined`,`rows_affected`,`full_scans`) AS select if((`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`) AS `host`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`COUNT_STAR`) AS `total`,format_pico_time(sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`)) AS `total_latency`,format_pico_time(max(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`MAX_TIMER_WAIT`)) AS `max_latency`,format_pico_time(sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_LOCK_TIME`)) AS `lock_latency`,format_pico_time(sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_CPU_TIME`)) AS `cpu_latency`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_SENT`) AS `rows_sent`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_EXAMINED`) AS `rows_examined`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_AFFECTED`) AS `rows_affected`,(sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_NO_INDEX_USED`) + sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_NO_GOOD_INDEX_USED`)) AS `full_scans` from `performance_schema`.`events_statements_summary_by_host_by_event_name` group by if((`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`) order by sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `host_summary_by_statement_type`
--

/*!50001 DROP VIEW IF EXISTS `host_summary_by_statement_type`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `host_summary_by_statement_type` (`host`,`statement`,`total`,`total_latency`,`max_latency`,`lock_latency`,`cpu_latency`,`rows_sent`,`rows_examined`,`rows_affected`,`full_scans`) AS select if((`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`) AS `host`,substring_index(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`EVENT_NAME`,'/',-(1)) AS `statement`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`COUNT_STAR` AS `total`,format_pico_time(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,format_pico_time(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency`,format_pico_time(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_LOCK_TIME`) AS `lock_latency`,format_pico_time(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_CPU_TIME`) AS `cpu_latency`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_SENT` AS `rows_sent`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_EXAMINED` AS `rows_examined`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_AFFECTED` AS `rows_affected`,(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_NO_INDEX_USED` + `performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_NO_GOOD_INDEX_USED`) AS `full_scans` from `performance_schema`.`events_statements_summary_by_host_by_event_name` where (`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` <> 0) order by if((`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`),`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `innodb_buffer_stats_by_schema`
--

/*!50001 DROP VIEW IF EXISTS `innodb_buffer_stats_by_schema`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `innodb_buffer_stats_by_schema` (`object_schema`,`allocated`,`data`,`pages`,`pages_hashed`,`pages_old`,`rows_cached`) AS select if((locate('.',`ibp`.`TABLE_NAME`) = 0),'InnoDB System',replace(substring_index(`ibp`.`TABLE_NAME`,'.',1),'`','')) AS `object_schema`,format_bytes(sum(if((`ibp`.`COMPRESSED_SIZE` = 0),16384,`ibp`.`COMPRESSED_SIZE`))) AS `allocated`,format_bytes(sum(`ibp`.`DATA_SIZE`)) AS `data`,count(`ibp`.`PAGE_NUMBER`) AS `pages`,count(if((`ibp`.`IS_HASHED` = 'YES'),1,NULL)) AS `pages_hashed`,count(if((`ibp`.`IS_OLD` = 'YES'),1,NULL)) AS `pages_old`,round((sum(`ibp`.`NUMBER_RECORDS`) / count(distinct `ibp`.`INDEX_NAME`)),0) AS `rows_cached` from `information_schema`.`INNODB_BUFFER_PAGE` `ibp` where (`ibp`.`TABLE_NAME` is not null) group by `object_schema` order by sum(if((`ibp`.`COMPRESSED_SIZE` = 0),16384,`ibp`.`COMPRESSED_SIZE`)) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `innodb_buffer_stats_by_table`
--

/*!50001 DROP VIEW IF EXISTS `innodb_buffer_stats_by_table`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `innodb_buffer_stats_by_table` (`object_schema`,`object_name`,`allocated`,`data`,`pages`,`pages_hashed`,`pages_old`,`rows_cached`) AS select if((locate('.',`ibp`.`TABLE_NAME`) = 0),'InnoDB System',replace(substring_index(`ibp`.`TABLE_NAME`,'.',1),'`','')) AS `object_schema`,replace(substring_index(`ibp`.`TABLE_NAME`,'.',-(1)),'`','') AS `object_name`,format_bytes(sum(if((`ibp`.`COMPRESSED_SIZE` = 0),16384,`ibp`.`COMPRESSED_SIZE`))) AS `allocated`,format_bytes(sum(`ibp`.`DATA_SIZE`)) AS `data`,count(`ibp`.`PAGE_NUMBER`) AS `pages`,count(if((`ibp`.`IS_HASHED` = 'YES'),1,NULL)) AS `pages_hashed`,count(if((`ibp`.`IS_OLD` = 'YES'),1,NULL)) AS `pages_old`,round((sum(`ibp`.`NUMBER_RECORDS`) / count(distinct `ibp`.`INDEX_NAME`)),0) AS `rows_cached` from `information_schema`.`INNODB_BUFFER_PAGE` `ibp` where (`ibp`.`TABLE_NAME` is not null) group by `object_schema`,`object_name` order by sum(if((`ibp`.`COMPRESSED_SIZE` = 0),16384,`ibp`.`COMPRESSED_SIZE`)) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `innodb_lock_waits`
--

/*!50001 DROP VIEW IF EXISTS `innodb_lock_waits`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `innodb_lock_waits` (`wait_started`,`wait_age`,`wait_age_secs`,`locked_table`,`locked_table_schema`,`locked_table_name`,`locked_table_partition`,`locked_table_subpartition`,`locked_index`,`locked_type`,`waiting_trx_id`,`waiting_trx_started`,`waiting_trx_age`,`waiting_trx_rows_locked`,`waiting_trx_rows_modified`,`waiting_pid`,`waiting_query`,`waiting_lock_id`,`waiting_lock_mode`,`blocking_trx_id`,`blocking_pid`,`blocking_query`,`blocking_lock_id`,`blocking_lock_mode`,`blocking_trx_started`,`blocking_trx_age`,`blocking_trx_rows_locked`,`blocking_trx_rows_modified`,`sql_kill_blocking_query`,`sql_kill_blocking_connection`) AS select `r`.`trx_wait_started` AS `wait_started`,timediff(now(),`r`.`trx_wait_started`) AS `wait_age`,timestampdiff(SECOND,`r`.`trx_wait_started`,now()) AS `wait_age_secs`,concat(`sys`.`quote_identifier`(`rl`.`OBJECT_SCHEMA`),'.',`sys`.`quote_identifier`(`rl`.`OBJECT_NAME`)) AS `locked_table`,`rl`.`OBJECT_SCHEMA` AS `locked_table_schema`,`rl`.`OBJECT_NAME` AS `locked_table_name`,`rl`.`PARTITION_NAME` AS `locked_table_partition`,`rl`.`SUBPARTITION_NAME` AS `locked_table_subpartition`,`rl`.`INDEX_NAME` AS `locked_index`,`rl`.`LOCK_TYPE` AS `locked_type`,`r`.`trx_id` AS `waiting_trx_id`,`r`.`trx_started` AS `waiting_trx_started`,timediff(now(),`r`.`trx_started`) AS `waiting_trx_age`,`r`.`trx_rows_locked` AS `waiting_trx_rows_locked`,`r`.`trx_rows_modified` AS `waiting_trx_rows_modified`,`r`.`trx_mysql_thread_id` AS `waiting_pid`,`sys`.`format_statement`(`r`.`trx_query`) AS `waiting_query`,`rl`.`ENGINE_LOCK_ID` AS `waiting_lock_id`,`rl`.`LOCK_MODE` AS `waiting_lock_mode`,`b`.`trx_id` AS `blocking_trx_id`,`b`.`trx_mysql_thread_id` AS `blocking_pid`,`sys`.`format_statement`(`b`.`trx_query`) AS `blocking_query`,`bl`.`ENGINE_LOCK_ID` AS `blocking_lock_id`,`bl`.`LOCK_MODE` AS `blocking_lock_mode`,`b`.`trx_started` AS `blocking_trx_started`,timediff(now(),`b`.`trx_started`) AS `blocking_trx_age`,`b`.`trx_rows_locked` AS `blocking_trx_rows_locked`,`b`.`trx_rows_modified` AS `blocking_trx_rows_modified`,concat('KILL QUERY ',`b`.`trx_mysql_thread_id`) AS `sql_kill_blocking_query`,concat('KILL ',`b`.`trx_mysql_thread_id`) AS `sql_kill_blocking_connection` from ((((`performance_schema`.`data_lock_waits` `w` join `information_schema`.`INNODB_TRX` `b` on((`b`.`trx_id` = cast(`w`.`BLOCKING_ENGINE_TRANSACTION_ID` as char charset utf8mb4)))) join `information_schema`.`INNODB_TRX` `r` on((`r`.`trx_id` = cast(`w`.`REQUESTING_ENGINE_TRANSACTION_ID` as char charset utf8mb4)))) join `performance_schema`.`data_locks` `bl` on((`bl`.`ENGINE_LOCK_ID` = `w`.`BLOCKING_ENGINE_LOCK_ID`))) join `performance_schema`.`data_locks` `rl` on((`rl`.`ENGINE_LOCK_ID` = `w`.`REQUESTING_ENGINE_LOCK_ID`))) order by `r`.`trx_wait_started` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `io_by_thread_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `io_by_thread_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `io_by_thread_by_latency` (`user`,`total`,`total_latency`,`min_latency`,`avg_latency`,`max_latency`,`thread_id`,`processlist_id`) AS select if((`performance_schema`.`threads`.`PROCESSLIST_ID` is null),substring_index(`performance_schema`.`threads`.`NAME`,'/',-(1)),concat(`performance_schema`.`threads`.`PROCESSLIST_USER`,'@',convert(`performance_schema`.`threads`.`PROCESSLIST_HOST` using utf8mb4))) AS `user`,sum(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`COUNT_STAR`) AS `total`,format_pico_time(sum(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`SUM_TIMER_WAIT`)) AS `total_latency`,format_pico_time(min(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`MIN_TIMER_WAIT`)) AS `min_latency`,format_pico_time(avg(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`AVG_TIMER_WAIT`)) AS `avg_latency`,format_pico_time(max(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`MAX_TIMER_WAIT`)) AS `max_latency`,`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`THREAD_ID` AS `thread_id`,`performance_schema`.`threads`.`PROCESSLIST_ID` AS `processlist_id` from (`performance_schema`.`events_waits_summary_by_thread_by_event_name` left join `performance_schema`.`threads` on((`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`THREAD_ID` = `performance_schema`.`threads`.`THREAD_ID`))) where ((`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`EVENT_NAME` like 'wait/io/file/%') and (`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`SUM_TIMER_WAIT` > 0)) group by `performance_schema`.`events_waits_summary_by_thread_by_event_name`.`THREAD_ID`,`performance_schema`.`threads`.`PROCESSLIST_ID`,`user` order by sum(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `io_global_by_file_by_bytes`
--

/*!50001 DROP VIEW IF EXISTS `io_global_by_file_by_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `io_global_by_file_by_bytes` (`file`,`count_read`,`total_read`,`avg_read`,`count_write`,`total_written`,`avg_write`,`total`,`write_pct`) AS select `sys`.`format_path`(`performance_schema`.`file_summary_by_instance`.`FILE_NAME`) AS `file`,`performance_schema`.`file_summary_by_instance`.`COUNT_READ` AS `count_read`,format_bytes(`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ`) AS `total_read`,format_bytes(ifnull((`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` / nullif(`performance_schema`.`file_summary_by_instance`.`COUNT_READ`,0)),0)) AS `avg_read`,`performance_schema`.`file_summary_by_instance`.`COUNT_WRITE` AS `count_write`,format_bytes(`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE`) AS `total_written`,format_bytes(ifnull((`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE` / nullif(`performance_schema`.`file_summary_by_instance`.`COUNT_WRITE`,0)),0.00)) AS `avg_write`,format_bytes((`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` + `performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE`)) AS `total`,ifnull(round((100 - ((`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` / nullif((`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` + `performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE`),0)) * 100)),2),0.00) AS `write_pct` from `performance_schema`.`file_summary_by_instance` order by (`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` + `performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `io_global_by_file_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `io_global_by_file_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `io_global_by_file_by_latency` (`file`,`total`,`total_latency`,`count_read`,`read_latency`,`count_write`,`write_latency`,`count_misc`,`misc_latency`) AS select `sys`.`format_path`(`performance_schema`.`file_summary_by_instance`.`FILE_NAME`) AS `file`,`performance_schema`.`file_summary_by_instance`.`COUNT_STAR` AS `total`,format_pico_time(`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_WAIT`) AS `total_latency`,`performance_schema`.`file_summary_by_instance`.`COUNT_READ` AS `count_read`,format_pico_time(`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_READ`) AS `read_latency`,`performance_schema`.`file_summary_by_instance`.`COUNT_WRITE` AS `count_write`,format_pico_time(`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_WRITE`) AS `write_latency`,`performance_schema`.`file_summary_by_instance`.`COUNT_MISC` AS `count_misc`,format_pico_time(`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_MISC`) AS `misc_latency` from `performance_schema`.`file_summary_by_instance` order by `performance_schema`.`file_summary_by_instance`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `io_global_by_wait_by_bytes`
--

/*!50001 DROP VIEW IF EXISTS `io_global_by_wait_by_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `io_global_by_wait_by_bytes` (`event_name`,`total`,`total_latency`,`min_latency`,`avg_latency`,`max_latency`,`count_read`,`total_read`,`avg_read`,`count_write`,`total_written`,`avg_written`,`total_requested`) AS select substring_index(`performance_schema`.`file_summary_by_event_name`.`EVENT_NAME`,'/',-(2)) AS `event_name`,`performance_schema`.`file_summary_by_event_name`.`COUNT_STAR` AS `total`,format_pico_time(`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,format_pico_time(`performance_schema`.`file_summary_by_event_name`.`MIN_TIMER_WAIT`) AS `min_latency`,format_pico_time(`performance_schema`.`file_summary_by_event_name`.`AVG_TIMER_WAIT`) AS `avg_latency`,format_pico_time(`performance_schema`.`file_summary_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency`,`performance_schema`.`file_summary_by_event_name`.`COUNT_READ` AS `count_read`,format_bytes(`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ`) AS `total_read`,format_bytes(ifnull((`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ` / nullif(`performance_schema`.`file_summary_by_event_name`.`COUNT_READ`,0)),0)) AS `avg_read`,`performance_schema`.`file_summary_by_event_name`.`COUNT_WRITE` AS `count_write`,format_bytes(`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE`) AS `total_written`,format_bytes(ifnull((`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE` / nullif(`performance_schema`.`file_summary_by_event_name`.`COUNT_WRITE`,0)),0)) AS `avg_written`,format_bytes((`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE` + `performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ`)) AS `total_requested` from `performance_schema`.`file_summary_by_event_name` where ((`performance_schema`.`file_summary_by_event_name`.`EVENT_NAME` like 'wait/io/file/%') and (`performance_schema`.`file_summary_by_event_name`.`COUNT_STAR` > 0)) order by (`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE` + `performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `io_global_by_wait_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `io_global_by_wait_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `io_global_by_wait_by_latency` (`event_name`,`total`,`total_latency`,`avg_latency`,`max_latency`,`read_latency`,`write_latency`,`misc_latency`,`count_read`,`total_read`,`avg_read`,`count_write`,`total_written`,`avg_written`) AS select substring_index(`performance_schema`.`file_summary_by_event_name`.`EVENT_NAME`,'/',-(2)) AS `event_name`,`performance_schema`.`file_summary_by_event_name`.`COUNT_STAR` AS `total`,format_pico_time(`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,format_pico_time(`performance_schema`.`file_summary_by_event_name`.`AVG_TIMER_WAIT`) AS `avg_latency`,format_pico_time(`performance_schema`.`file_summary_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency`,format_pico_time(`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_READ`) AS `read_latency`,format_pico_time(`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_WRITE`) AS `write_latency`,format_pico_time(`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_MISC`) AS `misc_latency`,`performance_schema`.`file_summary_by_event_name`.`COUNT_READ` AS `count_read`,format_bytes(`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ`) AS `total_read`,format_bytes(ifnull((`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ` / nullif(`performance_schema`.`file_summary_by_event_name`.`COUNT_READ`,0)),0)) AS `avg_read`,`performance_schema`.`file_summary_by_event_name`.`COUNT_WRITE` AS `count_write`,format_bytes(`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE`) AS `total_written`,format_bytes(ifnull((`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE` / nullif(`performance_schema`.`file_summary_by_event_name`.`COUNT_WRITE`,0)),0)) AS `avg_written` from `performance_schema`.`file_summary_by_event_name` where ((`performance_schema`.`file_summary_by_event_name`.`EVENT_NAME` like 'wait/io/file/%') and (`performance_schema`.`file_summary_by_event_name`.`COUNT_STAR` > 0)) order by `performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `latest_file_io`
--

/*!50001 DROP VIEW IF EXISTS `latest_file_io`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `latest_file_io` (`thread`,`file`,`latency`,`operation`,`requested`) AS select if((`processlist`.`ID` is null),concat(substring_index(`performance_schema`.`threads`.`NAME`,'/',-(1)),':',`performance_schema`.`events_waits_history_long`.`THREAD_ID`),convert(concat(`processlist`.`USER`,'@',`processlist`.`HOST`,':',`processlist`.`ID`) using utf8mb4)) AS `thread`,`sys`.`format_path`(`performance_schema`.`events_waits_history_long`.`OBJECT_NAME`) AS `file`,format_pico_time(`performance_schema`.`events_waits_history_long`.`TIMER_WAIT`) AS `latency`,`performance_schema`.`events_waits_history_long`.`OPERATION` AS `operation`,format_bytes(`performance_schema`.`events_waits_history_long`.`NUMBER_OF_BYTES`) AS `requested` from ((`performance_schema`.`events_waits_history_long` join `performance_schema`.`threads` on((`performance_schema`.`events_waits_history_long`.`THREAD_ID` = `performance_schema`.`threads`.`THREAD_ID`))) left join `information_schema`.`PROCESSLIST` `processlist` on((`performance_schema`.`threads`.`PROCESSLIST_ID` = `processlist`.`ID`))) where ((`performance_schema`.`events_waits_history_long`.`OBJECT_NAME` is not null) and (`performance_schema`.`events_waits_history_long`.`EVENT_NAME` like 'wait/io/file/%')) order by `performance_schema`.`events_waits_history_long`.`TIMER_START` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `memory_by_host_by_current_bytes`
--

/*!50001 DROP VIEW IF EXISTS `memory_by_host_by_current_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `memory_by_host_by_current_bytes` (`host`,`current_count_used`,`current_allocated`,`current_avg_alloc`,`current_max_alloc`,`total_allocated`) AS select if((`performance_schema`.`memory_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`memory_summary_by_host_by_event_name`.`HOST`) AS `host`,sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_COUNT_USED`) AS `current_count_used`,format_bytes(sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`)) AS `current_allocated`,format_bytes(ifnull((sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) / nullif(sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_COUNT_USED`),0)),0)) AS `current_avg_alloc`,format_bytes(max(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`)) AS `current_max_alloc`,format_bytes(sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`SUM_NUMBER_OF_BYTES_ALLOC`)) AS `total_allocated` from `performance_schema`.`memory_summary_by_host_by_event_name` group by if((`performance_schema`.`memory_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`memory_summary_by_host_by_event_name`.`HOST`) order by sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `memory_by_thread_by_current_bytes`
--

/*!50001 DROP VIEW IF EXISTS `memory_by_thread_by_current_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `memory_by_thread_by_current_bytes` (`thread_id`,`user`,`current_count_used`,`current_allocated`,`current_avg_alloc`,`current_max_alloc`,`total_allocated`) AS select `mt`.`THREAD_ID` AS `thread_id`,if((`t`.`NAME` = 'thread/sql/one_connection'),concat(`t`.`PROCESSLIST_USER`,'@',convert(`t`.`PROCESSLIST_HOST` using utf8mb4)),replace(`t`.`NAME`,'thread/','')) AS `user`,sum(`mt`.`CURRENT_COUNT_USED`) AS `current_count_used`,format_bytes(sum(`mt`.`CURRENT_NUMBER_OF_BYTES_USED`)) AS `current_allocated`,format_bytes(ifnull((sum(`mt`.`CURRENT_NUMBER_OF_BYTES_USED`) / nullif(sum(`mt`.`CURRENT_COUNT_USED`),0)),0)) AS `current_avg_alloc`,format_bytes(max(`mt`.`CURRENT_NUMBER_OF_BYTES_USED`)) AS `current_max_alloc`,format_bytes(sum(`mt`.`SUM_NUMBER_OF_BYTES_ALLOC`)) AS `total_allocated` from (`performance_schema`.`memory_summary_by_thread_by_event_name` `mt` join `performance_schema`.`threads` `t` on((`mt`.`THREAD_ID` = `t`.`THREAD_ID`))) group by `mt`.`THREAD_ID`,if((`t`.`NAME` = 'thread/sql/one_connection'),concat(`t`.`PROCESSLIST_USER`,'@',convert(`t`.`PROCESSLIST_HOST` using utf8mb4)),replace(`t`.`NAME`,'thread/','')) order by sum(`mt`.`CURRENT_NUMBER_OF_BYTES_USED`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `memory_by_user_by_current_bytes`
--

/*!50001 DROP VIEW IF EXISTS `memory_by_user_by_current_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `memory_by_user_by_current_bytes` (`user`,`current_count_used`,`current_allocated`,`current_avg_alloc`,`current_max_alloc`,`total_allocated`) AS select if((`performance_schema`.`memory_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`memory_summary_by_user_by_event_name`.`USER`) AS `user`,sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_COUNT_USED`) AS `current_count_used`,format_bytes(sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`)) AS `current_allocated`,format_bytes(ifnull((sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) / nullif(sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_COUNT_USED`),0)),0)) AS `current_avg_alloc`,format_bytes(max(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`)) AS `current_max_alloc`,format_bytes(sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`SUM_NUMBER_OF_BYTES_ALLOC`)) AS `total_allocated` from `performance_schema`.`memory_summary_by_user_by_event_name` group by if((`performance_schema`.`memory_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`memory_summary_by_user_by_event_name`.`USER`) order by sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `memory_global_by_current_bytes`
--

/*!50001 DROP VIEW IF EXISTS `memory_global_by_current_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `memory_global_by_current_bytes` (`event_name`,`current_count`,`current_alloc`,`current_avg_alloc`,`high_count`,`high_alloc`,`high_avg_alloc`) AS select `performance_schema`.`memory_summary_global_by_event_name`.`EVENT_NAME` AS `event_name`,`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_COUNT_USED` AS `current_count`,format_bytes(`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) AS `current_alloc`,format_bytes(ifnull((`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED` / nullif(`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_COUNT_USED`,0)),0)) AS `current_avg_alloc`,`performance_schema`.`memory_summary_global_by_event_name`.`HIGH_COUNT_USED` AS `high_count`,format_bytes(`performance_schema`.`memory_summary_global_by_event_name`.`HIGH_NUMBER_OF_BYTES_USED`) AS `high_alloc`,format_bytes(ifnull((`performance_schema`.`memory_summary_global_by_event_name`.`HIGH_NUMBER_OF_BYTES_USED` / nullif(`performance_schema`.`memory_summary_global_by_event_name`.`HIGH_COUNT_USED`,0)),0)) AS `high_avg_alloc` from `performance_schema`.`memory_summary_global_by_event_name` where (`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED` > 0) order by `performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `memory_global_total`
--

/*!50001 DROP VIEW IF EXISTS `memory_global_total`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `memory_global_total` (`total_allocated`) AS select format_bytes(sum(`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`)) AS `total_allocated` from `performance_schema`.`memory_summary_global_by_event_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `metrics`
--

/*!50001 DROP VIEW IF EXISTS `metrics`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `metrics` (`Variable_name`,`Variable_value`,`Type`,`Enabled`) AS select lower(`performance_schema`.`global_status`.`VARIABLE_NAME`) AS `Variable_name`,`performance_schema`.`global_status`.`VARIABLE_VALUE` AS `Variable_value`,'Global Status' AS `Type`,'YES' AS `Enabled` from `performance_schema`.`global_status` union all select `information_schema`.`INNODB_METRICS`.`NAME` AS `Variable_name`,`information_schema`.`INNODB_METRICS`.`COUNT` AS `Variable_value`,concat('InnoDB Metrics - ',`information_schema`.`INNODB_METRICS`.`SUBSYSTEM`) AS `Type`,if((`information_schema`.`INNODB_METRICS`.`STATUS` = 'enabled'),'YES','NO') AS `Enabled` from `information_schema`.`INNODB_METRICS` where (`information_schema`.`INNODB_METRICS`.`NAME` not in ('lock_row_lock_time','lock_row_lock_time_avg','lock_row_lock_time_max','lock_row_lock_waits','buffer_pool_reads','buffer_pool_read_requests','buffer_pool_write_requests','buffer_pool_wait_free','buffer_pool_read_ahead','buffer_pool_read_ahead_evicted','buffer_pool_pages_total','buffer_pool_pages_misc','buffer_pool_pages_data','buffer_pool_bytes_data','buffer_pool_pages_dirty','buffer_pool_bytes_dirty','buffer_pool_pages_free','buffer_pages_created','buffer_pages_written','buffer_pages_read','buffer_data_reads','buffer_data_written','file_num_open_files','os_log_bytes_written','os_log_fsyncs','os_log_pending_fsyncs','os_log_pending_writes','log_waits','log_write_requests','log_writes','innodb_dblwr_writes','innodb_dblwr_pages_written','innodb_page_size')) union all select 'memory_current_allocated' AS `Variable_name`,sum(`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) AS `Variable_value`,'Performance Schema' AS `Type`,if(((select count(0) from `performance_schema`.`setup_instruments` where ((`performance_schema`.`setup_instruments`.`NAME` like 'memory/%') and (`performance_schema`.`setup_instruments`.`ENABLED` = 'YES'))) = 0),'NO',if(((select count(0) from `performance_schema`.`setup_instruments` where ((`performance_schema`.`setup_instruments`.`NAME` like 'memory/%') and (`performance_schema`.`setup_instruments`.`ENABLED` = 'NO'))) = 0),'YES','PARTIAL')) AS `Enabled` from `performance_schema`.`memory_summary_global_by_event_name` union all select 'memory_total_allocated' AS `Variable_name`,sum(`performance_schema`.`memory_summary_global_by_event_name`.`SUM_NUMBER_OF_BYTES_ALLOC`) AS `Variable_value`,'Performance Schema' AS `Type`,if(((select count(0) from `performance_schema`.`setup_instruments` where ((`performance_schema`.`setup_instruments`.`NAME` like 'memory/%') and (`performance_schema`.`setup_instruments`.`ENABLED` = 'YES'))) = 0),'NO',if(((select count(0) from `performance_schema`.`setup_instruments` where ((`performance_schema`.`setup_instruments`.`NAME` like 'memory/%') and (`performance_schema`.`setup_instruments`.`ENABLED` = 'NO'))) = 0),'YES','PARTIAL')) AS `Enabled` from `performance_schema`.`memory_summary_global_by_event_name` union all select 'NOW()' AS `Variable_name`,now(3) AS `Variable_value`,'System Time' AS `Type`,'YES' AS `Enabled` union all select 'UNIX_TIMESTAMP()' AS `Variable_name`,round(unix_timestamp(now(3)),3) AS `Variable_value`,'System Time' AS `Type`,'YES' AS `Enabled` order by `Type`,`Variable_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `processlist`
--

/*!50001 DROP VIEW IF EXISTS `processlist`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `processlist` (`thd_id`,`conn_id`,`user`,`db`,`command`,`state`,`time`,`current_statement`,`execution_engine`,`statement_latency`,`progress`,`lock_latency`,`cpu_latency`,`rows_examined`,`rows_sent`,`rows_affected`,`tmp_tables`,`tmp_disk_tables`,`full_scan`,`last_statement`,`last_statement_latency`,`current_memory`,`last_wait`,`last_wait_latency`,`source`,`trx_latency`,`trx_state`,`trx_autocommit`,`pid`,`program_name`) AS select `pps`.`THREAD_ID` AS `thd_id`,`pps`.`PROCESSLIST_ID` AS `conn_id`,if((`pps`.`NAME` in ('thread/sql/one_connection','thread/thread_pool/tp_one_connection')),concat(`pps`.`PROCESSLIST_USER`,'@',convert(`pps`.`PROCESSLIST_HOST` using utf8mb4)),replace(`pps`.`NAME`,'thread/','')) AS `user`,`pps`.`PROCESSLIST_DB` AS `db`,`pps`.`PROCESSLIST_COMMAND` AS `command`,`pps`.`PROCESSLIST_STATE` AS `state`,`pps`.`PROCESSLIST_TIME` AS `time`,`sys`.`format_statement`(`pps`.`PROCESSLIST_INFO`) AS `current_statement`,`pps`.`EXECUTION_ENGINE` AS `execution_engine`,if((`esc`.`END_EVENT_ID` is null),format_pico_time(`esc`.`TIMER_WAIT`),NULL) AS `statement_latency`,if((`esc`.`END_EVENT_ID` is null),round((100 * (`estc`.`WORK_COMPLETED` / `estc`.`WORK_ESTIMATED`)),2),NULL) AS `progress`,format_pico_time(`esc`.`LOCK_TIME`) AS `lock_latency`,format_pico_time(`esc`.`CPU_TIME`) AS `cpu_latency`,`esc`.`ROWS_EXAMINED` AS `rows_examined`,`esc`.`ROWS_SENT` AS `rows_sent`,`esc`.`ROWS_AFFECTED` AS `rows_affected`,`esc`.`CREATED_TMP_TABLES` AS `tmp_tables`,`esc`.`CREATED_TMP_DISK_TABLES` AS `tmp_disk_tables`,if(((`esc`.`NO_GOOD_INDEX_USED` > 0) or (`esc`.`NO_INDEX_USED` > 0)),'YES','NO') AS `full_scan`,if((`esc`.`END_EVENT_ID` is not null),`sys`.`format_statement`(`esc`.`SQL_TEXT`),NULL) AS `last_statement`,if((`esc`.`END_EVENT_ID` is not null),format_pico_time(`esc`.`TIMER_WAIT`),NULL) AS `last_statement_latency`,format_bytes(`mem`.`current_allocated`) AS `current_memory`,`ewc`.`EVENT_NAME` AS `last_wait`,if(((`ewc`.`END_EVENT_ID` is null) and (`ewc`.`EVENT_NAME` is not null)),'Still Waiting',convert(format_pico_time(`ewc`.`TIMER_WAIT`) using utf8mb4)) AS `last_wait_latency`,`ewc`.`SOURCE` AS `source`,format_pico_time(`etc`.`TIMER_WAIT`) AS `trx_latency`,`etc`.`STATE` AS `trx_state`,`etc`.`AUTOCOMMIT` AS `trx_autocommit`,`conattr_pid`.`ATTR_VALUE` AS `pid`,`conattr_progname`.`ATTR_VALUE` AS `program_name` from (((((((`performance_schema`.`threads` `pps` left join `performance_schema`.`events_waits_current` `ewc` on((`pps`.`THREAD_ID` = `ewc`.`THREAD_ID`))) left join `performance_schema`.`events_stages_current` `estc` on((`pps`.`THREAD_ID` = `estc`.`THREAD_ID`))) left join `performance_schema`.`events_statements_current` `esc` on((`pps`.`THREAD_ID` = `esc`.`THREAD_ID`))) left join `performance_schema`.`events_transactions_current` `etc` on((`pps`.`THREAD_ID` = `etc`.`THREAD_ID`))) left join `x$memory_by_thread_by_current_bytes` `mem` on((`pps`.`THREAD_ID` = `mem`.`thread_id`))) left join `performance_schema`.`session_connect_attrs` `conattr_pid` on(((`conattr_pid`.`PROCESSLIST_ID` = `pps`.`PROCESSLIST_ID`) and (`conattr_pid`.`ATTR_NAME` = '_pid')))) left join `performance_schema`.`session_connect_attrs` `conattr_progname` on(((`conattr_progname`.`PROCESSLIST_ID` = `pps`.`PROCESSLIST_ID`) and (`conattr_progname`.`ATTR_NAME` = 'program_name')))) order by `pps`.`PROCESSLIST_TIME` desc,`last_wait_latency` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ps_check_lost_instrumentation`
--

/*!50001 DROP VIEW IF EXISTS `ps_check_lost_instrumentation`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `ps_check_lost_instrumentation` (`variable_name`,`variable_value`) AS select `performance_schema`.`global_status`.`VARIABLE_NAME` AS `variable_name`,`performance_schema`.`global_status`.`VARIABLE_VALUE` AS `variable_value` from `performance_schema`.`global_status` where ((`performance_schema`.`global_status`.`VARIABLE_NAME` like 'perf%lost') and (`performance_schema`.`global_status`.`VARIABLE_VALUE` > 0)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `schema_auto_increment_columns`
--

/*!50001 DROP VIEW IF EXISTS `schema_auto_increment_columns`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `schema_auto_increment_columns` (`table_schema`,`table_name`,`column_name`,`data_type`,`column_type`,`is_signed`,`is_unsigned`,`max_value`,`auto_increment`,`auto_increment_ratio`) AS select `information_schema`.`COLUMNS`.`TABLE_SCHEMA` AS `TABLE_SCHEMA`,`information_schema`.`COLUMNS`.`TABLE_NAME` AS `TABLE_NAME`,`information_schema`.`COLUMNS`.`COLUMN_NAME` AS `COLUMN_NAME`,`information_schema`.`COLUMNS`.`DATA_TYPE` AS `DATA_TYPE`,`information_schema`.`COLUMNS`.`COLUMN_TYPE` AS `COLUMN_TYPE`,(locate('unsigned',`information_schema`.`COLUMNS`.`COLUMN_TYPE`) = 0) AS `is_signed`,(locate('unsigned',`information_schema`.`COLUMNS`.`COLUMN_TYPE`) > 0) AS `is_unsigned`,((case `information_schema`.`COLUMNS`.`DATA_TYPE` when 'tinyint' then 255 when 'smallint' then 65535 when 'mediumint' then 16777215 when 'int' then 4294967295 when 'bigint' then 18446744073709551615 end) >> if((locate('unsigned',`information_schema`.`COLUMNS`.`COLUMN_TYPE`) > 0),0,1)) AS `max_value`,`information_schema`.`TABLES`.`AUTO_INCREMENT` AS `AUTO_INCREMENT`,(`information_schema`.`TABLES`.`AUTO_INCREMENT` / ((case `information_schema`.`COLUMNS`.`DATA_TYPE` when 'tinyint' then 255 when 'smallint' then 65535 when 'mediumint' then 16777215 when 'int' then 4294967295 when 'bigint' then 18446744073709551615 end) >> if((locate('unsigned',`information_schema`.`COLUMNS`.`COLUMN_TYPE`) > 0),0,1))) AS `auto_increment_ratio` from (`information_schema`.`COLUMNS` join `information_schema`.`TABLES` on(((`information_schema`.`COLUMNS`.`TABLE_SCHEMA` = `information_schema`.`TABLES`.`TABLE_SCHEMA`) and (`information_schema`.`COLUMNS`.`TABLE_NAME` = `information_schema`.`TABLES`.`TABLE_NAME`)))) where ((`information_schema`.`COLUMNS`.`TABLE_SCHEMA` not in ('mysql','sys','INFORMATION_SCHEMA','performance_schema')) and (`information_schema`.`TABLES`.`TABLE_TYPE` = 'BASE TABLE') and (`information_schema`.`COLUMNS`.`EXTRA` = 'auto_increment')) order by (`information_schema`.`TABLES`.`AUTO_INCREMENT` / ((case `information_schema`.`COLUMNS`.`DATA_TYPE` when 'tinyint' then 255 when 'smallint' then 65535 when 'mediumint' then 16777215 when 'int' then 4294967295 when 'bigint' then 18446744073709551615 end) >> if((locate('unsigned',`information_schema`.`COLUMNS`.`COLUMN_TYPE`) > 0),0,1))) desc,((case `information_schema`.`COLUMNS`.`DATA_TYPE` when 'tinyint' then 255 when 'smallint' then 65535 when 'mediumint' then 16777215 when 'int' then 4294967295 when 'bigint' then 18446744073709551615 end) >> if((locate('unsigned',`information_schema`.`COLUMNS`.`COLUMN_TYPE`) > 0),0,1)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `schema_index_statistics`
--

/*!50001 DROP VIEW IF EXISTS `schema_index_statistics`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `schema_index_statistics` (`table_schema`,`table_name`,`index_name`,`rows_selected`,`select_latency`,`rows_inserted`,`insert_latency`,`rows_updated`,`update_latency`,`rows_deleted`,`delete_latency`) AS select `performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_SCHEMA` AS `table_schema`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_NAME` AS `table_name`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`INDEX_NAME` AS `index_name`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_FETCH` AS `rows_selected`,format_pico_time(`performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_FETCH`) AS `select_latency`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_INSERT` AS `rows_inserted`,format_pico_time(`performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_INSERT`) AS `insert_latency`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_UPDATE` AS `rows_updated`,format_pico_time(`performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_UPDATE`) AS `update_latency`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_DELETE` AS `rows_deleted`,format_pico_time(`performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_DELETE`) AS `delete_latency` from `performance_schema`.`table_io_waits_summary_by_index_usage` where (`performance_schema`.`table_io_waits_summary_by_index_usage`.`INDEX_NAME` is not null) order by `performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `schema_object_overview`
--

/*!50001 DROP VIEW IF EXISTS `schema_object_overview`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `schema_object_overview` (`db`,`object_type`,`count`) AS select `information_schema`.`routines`.`ROUTINE_SCHEMA` AS `db`,`information_schema`.`routines`.`ROUTINE_TYPE` AS `object_type`,count(0) AS `count` from `information_schema`.`ROUTINES` `routines` group by `information_schema`.`routines`.`ROUTINE_SCHEMA`,`information_schema`.`routines`.`ROUTINE_TYPE` union select `information_schema`.`tables`.`TABLE_SCHEMA` AS `TABLE_SCHEMA`,`information_schema`.`tables`.`TABLE_TYPE` AS `TABLE_TYPE`,count(0) AS `COUNT(*)` from `information_schema`.`TABLES` `tables` group by `information_schema`.`tables`.`TABLE_SCHEMA`,`information_schema`.`tables`.`TABLE_TYPE` union select `information_schema`.`statistics`.`TABLE_SCHEMA` AS `TABLE_SCHEMA`,concat('INDEX (',`information_schema`.`statistics`.`INDEX_TYPE`,')') AS `CONCAT('INDEX (', INDEX_TYPE, ')')`,count(0) AS `COUNT(*)` from `information_schema`.`STATISTICS` `statistics` group by `information_schema`.`statistics`.`TABLE_SCHEMA`,`information_schema`.`statistics`.`INDEX_TYPE` union select `information_schema`.`triggers`.`TRIGGER_SCHEMA` AS `TRIGGER_SCHEMA`,'TRIGGER' AS `TRIGGER`,count(0) AS `COUNT(*)` from `information_schema`.`TRIGGERS` `triggers` group by `information_schema`.`triggers`.`TRIGGER_SCHEMA` union select `information_schema`.`events`.`EVENT_SCHEMA` AS `EVENT_SCHEMA`,'EVENT' AS `EVENT`,count(0) AS `COUNT(*)` from `information_schema`.`EVENTS` `events` group by `information_schema`.`events`.`EVENT_SCHEMA` order by `db`,`object_type` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `schema_redundant_indexes`
--

/*!50001 DROP VIEW IF EXISTS `schema_redundant_indexes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `schema_redundant_indexes` (`table_schema`,`table_name`,`redundant_index_name`,`redundant_index_columns`,`redundant_index_non_unique`,`dominant_index_name`,`dominant_index_columns`,`dominant_index_non_unique`,`subpart_exists`,`sql_drop_index`) AS select `redundant_keys`.`table_schema` AS `table_schema`,`redundant_keys`.`table_name` AS `table_name`,`redundant_keys`.`index_name` AS `redundant_index_name`,`redundant_keys`.`index_columns` AS `redundant_index_columns`,`redundant_keys`.`non_unique` AS `redundant_index_non_unique`,`dominant_keys`.`index_name` AS `dominant_index_name`,`dominant_keys`.`index_columns` AS `dominant_index_columns`,`dominant_keys`.`non_unique` AS `dominant_index_non_unique`,if(((0 <> `redundant_keys`.`subpart_exists`) or (0 <> `dominant_keys`.`subpart_exists`)),1,0) AS `subpart_exists`,concat('ALTER TABLE `',`redundant_keys`.`table_schema`,'`.`',`redundant_keys`.`table_name`,'` DROP INDEX `',`redundant_keys`.`index_name`,'`') AS `sql_drop_index` from (`x$schema_flattened_keys` `redundant_keys` join `x$schema_flattened_keys` `dominant_keys` on(((`redundant_keys`.`table_schema` = `dominant_keys`.`table_schema`) and (`redundant_keys`.`table_name` = `dominant_keys`.`table_name`)))) where ((`redundant_keys`.`index_name` <> `dominant_keys`.`index_name`) and (((`redundant_keys`.`index_columns` = `dominant_keys`.`index_columns`) and ((`redundant_keys`.`non_unique` > `dominant_keys`.`non_unique`) or ((`redundant_keys`.`non_unique` = `dominant_keys`.`non_unique`) and (if((`redundant_keys`.`index_name` = 'PRIMARY'),'',`redundant_keys`.`index_name`) > if((`dominant_keys`.`index_name` = 'PRIMARY'),'',`dominant_keys`.`index_name`))))) or ((locate(concat(`redundant_keys`.`index_columns`,','),`dominant_keys`.`index_columns`) = 1) and (`redundant_keys`.`non_unique` = 1)) or ((locate(concat(`dominant_keys`.`index_columns`,','),`redundant_keys`.`index_columns`) = 1) and (`dominant_keys`.`non_unique` = 0)))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `schema_table_lock_waits`
--

/*!50001 DROP VIEW IF EXISTS `schema_table_lock_waits`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `schema_table_lock_waits` (`object_schema`,`object_name`,`waiting_thread_id`,`waiting_pid`,`waiting_account`,`waiting_lock_type`,`waiting_lock_duration`,`waiting_query`,`waiting_query_secs`,`waiting_query_rows_affected`,`waiting_query_rows_examined`,`blocking_thread_id`,`blocking_pid`,`blocking_account`,`blocking_lock_type`,`blocking_lock_duration`,`sql_kill_blocking_query`,`sql_kill_blocking_connection`) AS select `g`.`OBJECT_SCHEMA` AS `object_schema`,`g`.`OBJECT_NAME` AS `object_name`,`pt`.`THREAD_ID` AS `waiting_thread_id`,`pt`.`PROCESSLIST_ID` AS `waiting_pid`,`sys`.`ps_thread_account`(`p`.`OWNER_THREAD_ID`) AS `waiting_account`,`p`.`LOCK_TYPE` AS `waiting_lock_type`,`p`.`LOCK_DURATION` AS `waiting_lock_duration`,`sys`.`format_statement`(`pt`.`PROCESSLIST_INFO`) AS `waiting_query`,`pt`.`PROCESSLIST_TIME` AS `waiting_query_secs`,`ps`.`ROWS_AFFECTED` AS `waiting_query_rows_affected`,`ps`.`ROWS_EXAMINED` AS `waiting_query_rows_examined`,`gt`.`THREAD_ID` AS `blocking_thread_id`,`gt`.`PROCESSLIST_ID` AS `blocking_pid`,`sys`.`ps_thread_account`(`g`.`OWNER_THREAD_ID`) AS `blocking_account`,`g`.`LOCK_TYPE` AS `blocking_lock_type`,`g`.`LOCK_DURATION` AS `blocking_lock_duration`,concat('KILL QUERY ',`gt`.`PROCESSLIST_ID`) AS `sql_kill_blocking_query`,concat('KILL ',`gt`.`PROCESSLIST_ID`) AS `sql_kill_blocking_connection` from (((((`performance_schema`.`metadata_locks` `g` join `performance_schema`.`metadata_locks` `p` on(((`g`.`OBJECT_TYPE` = `p`.`OBJECT_TYPE`) and (`g`.`OBJECT_SCHEMA` = `p`.`OBJECT_SCHEMA`) and (`g`.`OBJECT_NAME` = `p`.`OBJECT_NAME`) and (`g`.`LOCK_STATUS` = 'GRANTED') and (`p`.`LOCK_STATUS` = 'PENDING')))) join `performance_schema`.`threads` `gt` on((`g`.`OWNER_THREAD_ID` = `gt`.`THREAD_ID`))) join `performance_schema`.`threads` `pt` on((`p`.`OWNER_THREAD_ID` = `pt`.`THREAD_ID`))) left join `performance_schema`.`events_statements_current` `gs` on((`g`.`OWNER_THREAD_ID` = `gs`.`THREAD_ID`))) left join `performance_schema`.`events_statements_current` `ps` on((`p`.`OWNER_THREAD_ID` = `ps`.`THREAD_ID`))) where (`g`.`OBJECT_TYPE` = 'TABLE') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `schema_table_statistics`
--

/*!50001 DROP VIEW IF EXISTS `schema_table_statistics`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `schema_table_statistics` (`table_schema`,`table_name`,`total_latency`,`rows_fetched`,`fetch_latency`,`rows_inserted`,`insert_latency`,`rows_updated`,`update_latency`,`rows_deleted`,`delete_latency`,`io_read_requests`,`io_read`,`io_read_latency`,`io_write_requests`,`io_write`,`io_write_latency`,`io_misc_requests`,`io_misc_latency`) AS select `pst`.`OBJECT_SCHEMA` AS `table_schema`,`pst`.`OBJECT_NAME` AS `table_name`,format_pico_time(`pst`.`SUM_TIMER_WAIT`) AS `total_latency`,`pst`.`COUNT_FETCH` AS `rows_fetched`,format_pico_time(`pst`.`SUM_TIMER_FETCH`) AS `fetch_latency`,`pst`.`COUNT_INSERT` AS `rows_inserted`,format_pico_time(`pst`.`SUM_TIMER_INSERT`) AS `insert_latency`,`pst`.`COUNT_UPDATE` AS `rows_updated`,format_pico_time(`pst`.`SUM_TIMER_UPDATE`) AS `update_latency`,`pst`.`COUNT_DELETE` AS `rows_deleted`,format_pico_time(`pst`.`SUM_TIMER_DELETE`) AS `delete_latency`,`fsbi`.`count_read` AS `io_read_requests`,format_bytes(`fsbi`.`sum_number_of_bytes_read`) AS `io_read`,format_pico_time(`fsbi`.`sum_timer_read`) AS `io_read_latency`,`fsbi`.`count_write` AS `io_write_requests`,format_bytes(`fsbi`.`sum_number_of_bytes_write`) AS `io_write`,format_pico_time(`fsbi`.`sum_timer_write`) AS `io_write_latency`,`fsbi`.`count_misc` AS `io_misc_requests`,format_pico_time(`fsbi`.`sum_timer_misc`) AS `io_misc_latency` from (`performance_schema`.`table_io_waits_summary_by_table` `pst` left join `x$ps_schema_table_statistics_io` `fsbi` on(((`pst`.`OBJECT_SCHEMA` = `fsbi`.`table_schema`) and (`pst`.`OBJECT_NAME` = `fsbi`.`table_name`)))) order by `pst`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `schema_table_statistics_with_buffer`
--

/*!50001 DROP VIEW IF EXISTS `schema_table_statistics_with_buffer`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `schema_table_statistics_with_buffer` (`table_schema`,`table_name`,`rows_fetched`,`fetch_latency`,`rows_inserted`,`insert_latency`,`rows_updated`,`update_latency`,`rows_deleted`,`delete_latency`,`io_read_requests`,`io_read`,`io_read_latency`,`io_write_requests`,`io_write`,`io_write_latency`,`io_misc_requests`,`io_misc_latency`,`innodb_buffer_allocated`,`innodb_buffer_data`,`innodb_buffer_free`,`innodb_buffer_pages`,`innodb_buffer_pages_hashed`,`innodb_buffer_pages_old`,`innodb_buffer_rows_cached`) AS select `pst`.`OBJECT_SCHEMA` AS `table_schema`,`pst`.`OBJECT_NAME` AS `table_name`,`pst`.`COUNT_FETCH` AS `rows_fetched`,format_pico_time(`pst`.`SUM_TIMER_FETCH`) AS `fetch_latency`,`pst`.`COUNT_INSERT` AS `rows_inserted`,format_pico_time(`pst`.`SUM_TIMER_INSERT`) AS `insert_latency`,`pst`.`COUNT_UPDATE` AS `rows_updated`,format_pico_time(`pst`.`SUM_TIMER_UPDATE`) AS `update_latency`,`pst`.`COUNT_DELETE` AS `rows_deleted`,format_pico_time(`pst`.`SUM_TIMER_DELETE`) AS `delete_latency`,`fsbi`.`count_read` AS `io_read_requests`,format_bytes(`fsbi`.`sum_number_of_bytes_read`) AS `io_read`,format_pico_time(`fsbi`.`sum_timer_read`) AS `io_read_latency`,`fsbi`.`count_write` AS `io_write_requests`,format_bytes(`fsbi`.`sum_number_of_bytes_write`) AS `io_write`,format_pico_time(`fsbi`.`sum_timer_write`) AS `io_write_latency`,`fsbi`.`count_misc` AS `io_misc_requests`,format_pico_time(`fsbi`.`sum_timer_misc`) AS `io_misc_latency`,format_bytes(`ibp`.`allocated`) AS `innodb_buffer_allocated`,format_bytes(`ibp`.`data`) AS `innodb_buffer_data`,format_bytes((`ibp`.`allocated` - `ibp`.`data`)) AS `innodb_buffer_free`,`ibp`.`pages` AS `innodb_buffer_pages`,`ibp`.`pages_hashed` AS `innodb_buffer_pages_hashed`,`ibp`.`pages_old` AS `innodb_buffer_pages_old`,`ibp`.`rows_cached` AS `innodb_buffer_rows_cached` from ((`performance_schema`.`table_io_waits_summary_by_table` `pst` left join `x$ps_schema_table_statistics_io` `fsbi` on(((`pst`.`OBJECT_SCHEMA` = `fsbi`.`table_schema`) and (`pst`.`OBJECT_NAME` = `fsbi`.`table_name`)))) left join `x$innodb_buffer_stats_by_table` `ibp` on(((`pst`.`OBJECT_SCHEMA` = `ibp`.`object_schema`) and (`pst`.`OBJECT_NAME` = `ibp`.`object_name`)))) order by `pst`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `schema_tables_with_full_table_scans`
--

/*!50001 DROP VIEW IF EXISTS `schema_tables_with_full_table_scans`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `schema_tables_with_full_table_scans` (`object_schema`,`object_name`,`rows_full_scanned`,`latency`) AS select `performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_SCHEMA` AS `object_schema`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_NAME` AS `object_name`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_READ` AS `rows_full_scanned`,format_pico_time(`performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_WAIT`) AS `latency` from `performance_schema`.`table_io_waits_summary_by_index_usage` where ((`performance_schema`.`table_io_waits_summary_by_index_usage`.`INDEX_NAME` is null) and (`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_READ` > 0)) order by `performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_READ` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `schema_unused_indexes`
--

/*!50001 DROP VIEW IF EXISTS `schema_unused_indexes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `schema_unused_indexes` (`object_schema`,`object_name`,`index_name`) AS select `t`.`OBJECT_SCHEMA` AS `object_schema`,`t`.`OBJECT_NAME` AS `object_name`,`t`.`INDEX_NAME` AS `index_name` from (`performance_schema`.`table_io_waits_summary_by_index_usage` `t` join `information_schema`.`STATISTICS` `s` on(((`t`.`OBJECT_SCHEMA` = `information_schema`.`s`.`TABLE_SCHEMA`) and (`t`.`OBJECT_NAME` = `information_schema`.`s`.`TABLE_NAME`) and (`t`.`INDEX_NAME` = `information_schema`.`s`.`INDEX_NAME`)))) where ((`t`.`INDEX_NAME` is not null) and (`t`.`COUNT_STAR` = 0) and (`t`.`OBJECT_SCHEMA` <> 'mysql') and (`t`.`INDEX_NAME` <> 'PRIMARY') and (`information_schema`.`s`.`NON_UNIQUE` = 1) and (`information_schema`.`s`.`SEQ_IN_INDEX` = 1)) order by `t`.`OBJECT_SCHEMA`,`t`.`OBJECT_NAME` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `session`
--

/*!50001 DROP VIEW IF EXISTS `session`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `session` AS select `processlist`.`thd_id` AS `thd_id`,`processlist`.`conn_id` AS `conn_id`,`processlist`.`user` AS `user`,`processlist`.`db` AS `db`,`processlist`.`command` AS `command`,`processlist`.`state` AS `state`,`processlist`.`time` AS `time`,`processlist`.`current_statement` AS `current_statement`,`processlist`.`execution_engine` AS `execution_engine`,`processlist`.`statement_latency` AS `statement_latency`,`processlist`.`progress` AS `progress`,`processlist`.`lock_latency` AS `lock_latency`,`processlist`.`cpu_latency` AS `cpu_latency`,`processlist`.`rows_examined` AS `rows_examined`,`processlist`.`rows_sent` AS `rows_sent`,`processlist`.`rows_affected` AS `rows_affected`,`processlist`.`tmp_tables` AS `tmp_tables`,`processlist`.`tmp_disk_tables` AS `tmp_disk_tables`,`processlist`.`full_scan` AS `full_scan`,`processlist`.`last_statement` AS `last_statement`,`processlist`.`last_statement_latency` AS `last_statement_latency`,`processlist`.`current_memory` AS `current_memory`,`processlist`.`last_wait` AS `last_wait`,`processlist`.`last_wait_latency` AS `last_wait_latency`,`processlist`.`source` AS `source`,`processlist`.`trx_latency` AS `trx_latency`,`processlist`.`trx_state` AS `trx_state`,`processlist`.`trx_autocommit` AS `trx_autocommit`,`processlist`.`pid` AS `pid`,`processlist`.`program_name` AS `program_name` from `processlist` where ((`processlist`.`conn_id` is not null) and (`processlist`.`command` <> 'Daemon')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `session_ssl_status`
--

/*!50001 DROP VIEW IF EXISTS `session_ssl_status`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `session_ssl_status` (`thread_id`,`ssl_version`,`ssl_cipher`,`ssl_sessions_reused`) AS select `sslver`.`THREAD_ID` AS `thread_id`,`sslver`.`VARIABLE_VALUE` AS `ssl_version`,`sslcip`.`VARIABLE_VALUE` AS `ssl_cipher`,`sslreuse`.`VARIABLE_VALUE` AS `ssl_sessions_reused` from ((`performance_schema`.`status_by_thread` `sslver` left join `performance_schema`.`status_by_thread` `sslcip` on(((`sslcip`.`THREAD_ID` = `sslver`.`THREAD_ID`) and (`sslcip`.`VARIABLE_NAME` = 'Ssl_cipher')))) left join `performance_schema`.`status_by_thread` `sslreuse` on(((`sslreuse`.`THREAD_ID` = `sslver`.`THREAD_ID`) and (`sslreuse`.`VARIABLE_NAME` = 'Ssl_sessions_reused')))) where (`sslver`.`VARIABLE_NAME` = 'Ssl_version') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `statement_analysis`
--

/*!50001 DROP VIEW IF EXISTS `statement_analysis`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `statement_analysis` (`query`,`db`,`full_scan`,`exec_count`,`err_count`,`warn_count`,`total_latency`,`max_latency`,`avg_latency`,`lock_latency`,`cpu_latency`,`rows_sent`,`rows_sent_avg`,`rows_examined`,`rows_examined_avg`,`rows_affected`,`rows_affected_avg`,`tmp_tables`,`tmp_disk_tables`,`rows_sorted`,`sort_merge_passes`,`max_controlled_memory`,`max_total_memory`,`digest`,`first_seen`,`last_seen`) AS select `sys`.`format_statement`(`performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT`) AS `query`,`performance_schema`.`events_statements_summary_by_digest`.`SCHEMA_NAME` AS `db`,if(((`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_GOOD_INDEX_USED` > 0) or (`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_INDEX_USED` > 0)),'*','') AS `full_scan`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR` AS `exec_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ERRORS` AS `err_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_WARNINGS` AS `warn_count`,format_pico_time(`performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT`) AS `total_latency`,format_pico_time(`performance_schema`.`events_statements_summary_by_digest`.`MAX_TIMER_WAIT`) AS `max_latency`,format_pico_time(`performance_schema`.`events_statements_summary_by_digest`.`AVG_TIMER_WAIT`) AS `avg_latency`,format_pico_time(`performance_schema`.`events_statements_summary_by_digest`.`SUM_LOCK_TIME`) AS `lock_latency`,format_pico_time(`performance_schema`.`events_statements_summary_by_digest`.`SUM_CPU_TIME`) AS `cpu_latency`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_SENT` AS `rows_sent`,round(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_SENT` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0),0) AS `rows_sent_avg`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_EXAMINED` AS `rows_examined`,round(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_EXAMINED` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0),0) AS `rows_examined_avg`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_AFFECTED` AS `rows_affected`,round(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_AFFECTED` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0),0) AS `rows_affected_avg`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES` AS `tmp_tables`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_DISK_TABLES` AS `tmp_disk_tables`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_ROWS` AS `rows_sorted`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_MERGE_PASSES` AS `sort_merge_passes`,format_bytes(`performance_schema`.`events_statements_summary_by_digest`.`MAX_CONTROLLED_MEMORY`) AS `max_controlled_memory`,format_bytes(`performance_schema`.`events_statements_summary_by_digest`.`MAX_TOTAL_MEMORY`) AS `max_total_memory`,`performance_schema`.`events_statements_summary_by_digest`.`DIGEST` AS `digest`,`performance_schema`.`events_statements_summary_by_digest`.`FIRST_SEEN` AS `first_seen`,`performance_schema`.`events_statements_summary_by_digest`.`LAST_SEEN` AS `last_seen` from `performance_schema`.`events_statements_summary_by_digest` order by `performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `statements_with_errors_or_warnings`
--

/*!50001 DROP VIEW IF EXISTS `statements_with_errors_or_warnings`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `statements_with_errors_or_warnings` (`query`,`db`,`exec_count`,`errors`,`error_pct`,`warnings`,`warning_pct`,`first_seen`,`last_seen`,`digest`) AS select `sys`.`format_statement`(`performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT`) AS `query`,`performance_schema`.`events_statements_summary_by_digest`.`SCHEMA_NAME` AS `db`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR` AS `exec_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ERRORS` AS `errors`,(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ERRORS` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0) * 100) AS `error_pct`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_WARNINGS` AS `warnings`,(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_WARNINGS` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0) * 100) AS `warning_pct`,`performance_schema`.`events_statements_summary_by_digest`.`FIRST_SEEN` AS `first_seen`,`performance_schema`.`events_statements_summary_by_digest`.`LAST_SEEN` AS `last_seen`,`performance_schema`.`events_statements_summary_by_digest`.`DIGEST` AS `digest` from `performance_schema`.`events_statements_summary_by_digest` where ((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ERRORS` > 0) or (`performance_schema`.`events_statements_summary_by_digest`.`SUM_WARNINGS` > 0)) order by `performance_schema`.`events_statements_summary_by_digest`.`SUM_ERRORS` desc,`performance_schema`.`events_statements_summary_by_digest`.`SUM_WARNINGS` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `statements_with_full_table_scans`
--

/*!50001 DROP VIEW IF EXISTS `statements_with_full_table_scans`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `statements_with_full_table_scans` (`query`,`db`,`exec_count`,`total_latency`,`no_index_used_count`,`no_good_index_used_count`,`no_index_used_pct`,`rows_sent`,`rows_examined`,`rows_sent_avg`,`rows_examined_avg`,`first_seen`,`last_seen`,`digest`) AS select `sys`.`format_statement`(`performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT`) AS `query`,`performance_schema`.`events_statements_summary_by_digest`.`SCHEMA_NAME` AS `db`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR` AS `exec_count`,format_pico_time(`performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT`) AS `total_latency`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_INDEX_USED` AS `no_index_used_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_GOOD_INDEX_USED` AS `no_good_index_used_count`,round((ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_INDEX_USED` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0) * 100),0) AS `no_index_used_pct`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_SENT` AS `rows_sent`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_EXAMINED` AS `rows_examined`,round((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_SENT` / `performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`),0) AS `rows_sent_avg`,round((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_EXAMINED` / `performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`),0) AS `rows_examined_avg`,`performance_schema`.`events_statements_summary_by_digest`.`FIRST_SEEN` AS `first_seen`,`performance_schema`.`events_statements_summary_by_digest`.`LAST_SEEN` AS `last_seen`,`performance_schema`.`events_statements_summary_by_digest`.`DIGEST` AS `digest` from `performance_schema`.`events_statements_summary_by_digest` where (((`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_INDEX_USED` > 0) or (`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_GOOD_INDEX_USED` > 0)) and (not((`performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT` like 'SHOW%')))) order by round((ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_INDEX_USED` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0) * 100),0) desc,format_pico_time(`performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `statements_with_runtimes_in_95th_percentile`
--

/*!50001 DROP VIEW IF EXISTS `statements_with_runtimes_in_95th_percentile`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `statements_with_runtimes_in_95th_percentile` (`query`,`db`,`full_scan`,`exec_count`,`err_count`,`warn_count`,`total_latency`,`max_latency`,`avg_latency`,`rows_sent`,`rows_sent_avg`,`rows_examined`,`rows_examined_avg`,`first_seen`,`last_seen`,`digest`) AS select `sys`.`format_statement`(`stmts`.`DIGEST_TEXT`) AS `query`,`stmts`.`SCHEMA_NAME` AS `db`,if(((`stmts`.`SUM_NO_GOOD_INDEX_USED` > 0) or (`stmts`.`SUM_NO_INDEX_USED` > 0)),'*','') AS `full_scan`,`stmts`.`COUNT_STAR` AS `exec_count`,`stmts`.`SUM_ERRORS` AS `err_count`,`stmts`.`SUM_WARNINGS` AS `warn_count`,format_pico_time(`stmts`.`SUM_TIMER_WAIT`) AS `total_latency`,format_pico_time(`stmts`.`MAX_TIMER_WAIT`) AS `max_latency`,format_pico_time(`stmts`.`AVG_TIMER_WAIT`) AS `avg_latency`,`stmts`.`SUM_ROWS_SENT` AS `rows_sent`,round(ifnull((`stmts`.`SUM_ROWS_SENT` / nullif(`stmts`.`COUNT_STAR`,0)),0),0) AS `rows_sent_avg`,`stmts`.`SUM_ROWS_EXAMINED` AS `rows_examined`,round(ifnull((`stmts`.`SUM_ROWS_EXAMINED` / nullif(`stmts`.`COUNT_STAR`,0)),0),0) AS `rows_examined_avg`,`stmts`.`FIRST_SEEN` AS `first_seen`,`stmts`.`LAST_SEEN` AS `last_seen`,`stmts`.`DIGEST` AS `digest` from (`performance_schema`.`events_statements_summary_by_digest` `stmts` join `x$ps_digest_95th_percentile_by_avg_us` `top_percentile` on((round((`stmts`.`AVG_TIMER_WAIT` / 1000000),0) >= `top_percentile`.`avg_us`))) order by `stmts`.`AVG_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `statements_with_sorting`
--

/*!50001 DROP VIEW IF EXISTS `statements_with_sorting`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `statements_with_sorting` (`query`,`db`,`exec_count`,`total_latency`,`sort_merge_passes`,`avg_sort_merges`,`sorts_using_scans`,`sort_using_range`,`rows_sorted`,`avg_rows_sorted`,`first_seen`,`last_seen`,`digest`) AS select `sys`.`format_statement`(`performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT`) AS `query`,`performance_schema`.`events_statements_summary_by_digest`.`SCHEMA_NAME` AS `db`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR` AS `exec_count`,format_pico_time(`performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT`) AS `total_latency`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_MERGE_PASSES` AS `sort_merge_passes`,round(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_MERGE_PASSES` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0),0) AS `avg_sort_merges`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_SCAN` AS `sorts_using_scans`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_RANGE` AS `sort_using_range`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_ROWS` AS `rows_sorted`,round(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_ROWS` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0),0) AS `avg_rows_sorted`,`performance_schema`.`events_statements_summary_by_digest`.`FIRST_SEEN` AS `first_seen`,`performance_schema`.`events_statements_summary_by_digest`.`LAST_SEEN` AS `last_seen`,`performance_schema`.`events_statements_summary_by_digest`.`DIGEST` AS `digest` from `performance_schema`.`events_statements_summary_by_digest` where (`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_ROWS` > 0) order by `performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `statements_with_temp_tables`
--

/*!50001 DROP VIEW IF EXISTS `statements_with_temp_tables`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `statements_with_temp_tables` (`query`,`db`,`exec_count`,`total_latency`,`memory_tmp_tables`,`disk_tmp_tables`,`avg_tmp_tables_per_query`,`tmp_tables_to_disk_pct`,`first_seen`,`last_seen`,`digest`) AS select `sys`.`format_statement`(`performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT`) AS `query`,`performance_schema`.`events_statements_summary_by_digest`.`SCHEMA_NAME` AS `db`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR` AS `exec_count`,format_pico_time(`performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT`) AS `total_latency`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES` AS `memory_tmp_tables`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_DISK_TABLES` AS `disk_tmp_tables`,round(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0),0) AS `avg_tmp_tables_per_query`,round((ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_DISK_TABLES` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES`,0)),0) * 100),0) AS `tmp_tables_to_disk_pct`,`performance_schema`.`events_statements_summary_by_digest`.`FIRST_SEEN` AS `first_seen`,`performance_schema`.`events_statements_summary_by_digest`.`LAST_SEEN` AS `last_seen`,`performance_schema`.`events_statements_summary_by_digest`.`DIGEST` AS `digest` from `performance_schema`.`events_statements_summary_by_digest` where (`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES` > 0) order by `performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_DISK_TABLES` desc,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `user_summary`
--

/*!50001 DROP VIEW IF EXISTS `user_summary`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `user_summary` (`user`,`statements`,`statement_latency`,`statement_avg_latency`,`table_scans`,`file_ios`,`file_io_latency`,`current_connections`,`total_connections`,`unique_hosts`,`current_memory`,`total_memory_allocated`) AS select if((`performance_schema`.`accounts`.`USER` is null),'background',`performance_schema`.`accounts`.`USER`) AS `user`,sum(`stmt`.`total`) AS `statements`,format_pico_time(sum(`stmt`.`total_latency`)) AS `statement_latency`,format_pico_time(ifnull((sum(`stmt`.`total_latency`) / nullif(sum(`stmt`.`total`),0)),0)) AS `statement_avg_latency`,sum(`stmt`.`full_scans`) AS `table_scans`,sum(`io`.`ios`) AS `file_ios`,format_pico_time(sum(`io`.`io_latency`)) AS `file_io_latency`,sum(`performance_schema`.`accounts`.`CURRENT_CONNECTIONS`) AS `current_connections`,sum(`performance_schema`.`accounts`.`TOTAL_CONNECTIONS`) AS `total_connections`,count(distinct `performance_schema`.`accounts`.`HOST`) AS `unique_hosts`,format_bytes(sum(`mem`.`current_allocated`)) AS `current_memory`,format_bytes(sum(`mem`.`total_allocated`)) AS `total_memory_allocated` from (((`performance_schema`.`accounts` left join `x$user_summary_by_statement_latency` `stmt` on((if((`performance_schema`.`accounts`.`USER` is null),'background',`performance_schema`.`accounts`.`USER`) = `stmt`.`user`))) left join `x$user_summary_by_file_io` `io` on((if((`performance_schema`.`accounts`.`USER` is null),'background',`performance_schema`.`accounts`.`USER`) = `io`.`user`))) left join `x$memory_by_user_by_current_bytes` `mem` on((if((`performance_schema`.`accounts`.`USER` is null),'background',`performance_schema`.`accounts`.`USER`) = `mem`.`user`))) group by if((`performance_schema`.`accounts`.`USER` is null),'background',`performance_schema`.`accounts`.`USER`) order by sum(`stmt`.`total_latency`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `user_summary_by_file_io`
--

/*!50001 DROP VIEW IF EXISTS `user_summary_by_file_io`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `user_summary_by_file_io` (`user`,`ios`,`io_latency`) AS select if((`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`) AS `user`,sum(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`COUNT_STAR`) AS `ios`,format_pico_time(sum(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`)) AS `io_latency` from `performance_schema`.`events_waits_summary_by_user_by_event_name` where (`performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` like 'wait/io/file/%') group by if((`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`) order by sum(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `user_summary_by_file_io_type`
--

/*!50001 DROP VIEW IF EXISTS `user_summary_by_file_io_type`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `user_summary_by_file_io_type` (`user`,`event_name`,`total`,`latency`,`max_latency`) AS select if((`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`) AS `user`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` AS `event_name`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`COUNT_STAR` AS `total`,format_pico_time(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`) AS `latency`,format_pico_time(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency` from `performance_schema`.`events_waits_summary_by_user_by_event_name` where ((`performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` like 'wait/io/file%') and (`performance_schema`.`events_waits_summary_by_user_by_event_name`.`COUNT_STAR` > 0)) order by if((`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`),`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `user_summary_by_stages`
--

/*!50001 DROP VIEW IF EXISTS `user_summary_by_stages`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `user_summary_by_stages` (`user`,`event_name`,`total`,`total_latency`,`avg_latency`) AS select if((`performance_schema`.`events_stages_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_stages_summary_by_user_by_event_name`.`USER`) AS `user`,`performance_schema`.`events_stages_summary_by_user_by_event_name`.`EVENT_NAME` AS `event_name`,`performance_schema`.`events_stages_summary_by_user_by_event_name`.`COUNT_STAR` AS `total`,format_pico_time(`performance_schema`.`events_stages_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,format_pico_time(`performance_schema`.`events_stages_summary_by_user_by_event_name`.`AVG_TIMER_WAIT`) AS `avg_latency` from `performance_schema`.`events_stages_summary_by_user_by_event_name` where (`performance_schema`.`events_stages_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` <> 0) order by if((`performance_schema`.`events_stages_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_stages_summary_by_user_by_event_name`.`USER`),`performance_schema`.`events_stages_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `user_summary_by_statement_latency`
--

/*!50001 DROP VIEW IF EXISTS `user_summary_by_statement_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `user_summary_by_statement_latency` (`user`,`total`,`total_latency`,`max_latency`,`lock_latency`,`cpu_latency`,`rows_sent`,`rows_examined`,`rows_affected`,`full_scans`) AS select if((`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`) AS `user`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`COUNT_STAR`) AS `total`,format_pico_time(sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`)) AS `total_latency`,format_pico_time(sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`MAX_TIMER_WAIT`)) AS `max_latency`,format_pico_time(sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_LOCK_TIME`)) AS `lock_latency`,format_pico_time(sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_CPU_TIME`)) AS `cpu_latency`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_SENT`) AS `rows_sent`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_EXAMINED`) AS `rows_examined`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_AFFECTED`) AS `rows_affected`,(sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_NO_INDEX_USED`) + sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_NO_GOOD_INDEX_USED`)) AS `full_scans` from `performance_schema`.`events_statements_summary_by_user_by_event_name` group by if((`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`) order by sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `user_summary_by_statement_type`
--

/*!50001 DROP VIEW IF EXISTS `user_summary_by_statement_type`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `user_summary_by_statement_type` (`user`,`statement`,`total`,`total_latency`,`max_latency`,`lock_latency`,`cpu_latency`,`rows_sent`,`rows_examined`,`rows_affected`,`full_scans`) AS select if((`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`) AS `user`,substring_index(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`EVENT_NAME`,'/',-(1)) AS `statement`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`COUNT_STAR` AS `total`,format_pico_time(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,format_pico_time(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency`,format_pico_time(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_LOCK_TIME`) AS `lock_latency`,format_pico_time(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_CPU_TIME`) AS `cpu_latency`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_SENT` AS `rows_sent`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_EXAMINED` AS `rows_examined`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_AFFECTED` AS `rows_affected`,(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_NO_INDEX_USED` + `performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_NO_GOOD_INDEX_USED`) AS `full_scans` from `performance_schema`.`events_statements_summary_by_user_by_event_name` where (`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` <> 0) order by if((`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`),`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `version`
--

/*!50001 DROP VIEW IF EXISTS `version`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `version` (`sys_version`,`mysql_version`) AS select '2.1.2' AS `sys_version`,version() AS `mysql_version` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `wait_classes_global_by_avg_latency`
--

/*!50001 DROP VIEW IF EXISTS `wait_classes_global_by_avg_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `wait_classes_global_by_avg_latency` (`event_class`,`total`,`total_latency`,`min_latency`,`avg_latency`,`max_latency`) AS select substring_index(`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME`,'/',3) AS `event_class`,sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`) AS `total`,format_pico_time(cast(sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) as unsigned)) AS `total_latency`,format_pico_time(min(`performance_schema`.`events_waits_summary_global_by_event_name`.`MIN_TIMER_WAIT`)) AS `min_latency`,format_pico_time(ifnull((sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) / nullif(sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`),0)),0)) AS `avg_latency`,format_pico_time(cast(max(`performance_schema`.`events_waits_summary_global_by_event_name`.`MAX_TIMER_WAIT`) as unsigned)) AS `max_latency` from `performance_schema`.`events_waits_summary_global_by_event_name` where ((`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT` > 0) and (`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME` <> 'idle')) group by `event_class` order by ifnull((sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) / nullif(sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`),0)),0) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `wait_classes_global_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `wait_classes_global_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `wait_classes_global_by_latency` (`event_class`,`total`,`total_latency`,`min_latency`,`avg_latency`,`max_latency`) AS select substring_index(`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME`,'/',3) AS `event_class`,sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`) AS `total`,format_pico_time(sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`)) AS `total_latency`,format_pico_time(min(`performance_schema`.`events_waits_summary_global_by_event_name`.`MIN_TIMER_WAIT`)) AS `min_latency`,format_pico_time(ifnull((sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) / nullif(sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`),0)),0)) AS `avg_latency`,format_pico_time(max(`performance_schema`.`events_waits_summary_global_by_event_name`.`MAX_TIMER_WAIT`)) AS `max_latency` from `performance_schema`.`events_waits_summary_global_by_event_name` where ((`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT` > 0) and (`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME` <> 'idle')) group by substring_index(`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME`,'/',3) order by sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `waits_by_host_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `waits_by_host_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `waits_by_host_by_latency` (`host`,`event`,`total`,`total_latency`,`avg_latency`,`max_latency`) AS select if((`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`) AS `host`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`EVENT_NAME` AS `event`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`COUNT_STAR` AS `total`,format_pico_time(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,format_pico_time(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`AVG_TIMER_WAIT`) AS `avg_latency`,format_pico_time(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency` from `performance_schema`.`events_waits_summary_by_host_by_event_name` where ((`performance_schema`.`events_waits_summary_by_host_by_event_name`.`EVENT_NAME` <> 'idle') and (`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` > 0)) order by if((`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`),`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `waits_by_user_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `waits_by_user_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `waits_by_user_by_latency` (`user`,`event`,`total`,`total_latency`,`avg_latency`,`max_latency`) AS select if((`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`) AS `user`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` AS `event`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`COUNT_STAR` AS `total`,format_pico_time(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,format_pico_time(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`AVG_TIMER_WAIT`) AS `avg_latency`,format_pico_time(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency` from `performance_schema`.`events_waits_summary_by_user_by_event_name` where ((`performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` <> 'idle') and (`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is not null) and (`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` > 0)) order by if((`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`),`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `waits_global_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `waits_global_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `waits_global_by_latency` (`events`,`total`,`total_latency`,`avg_latency`,`max_latency`) AS select `performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME` AS `event`,`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR` AS `total`,format_pico_time(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,format_pico_time(`performance_schema`.`events_waits_summary_global_by_event_name`.`AVG_TIMER_WAIT`) AS `avg_latency`,format_pico_time(`performance_schema`.`events_waits_summary_global_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency` from `performance_schema`.`events_waits_summary_global_by_event_name` where ((`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME` <> 'idle') and (`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT` > 0)) order by `performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$host_summary`
--

/*!50001 DROP VIEW IF EXISTS `x$host_summary`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$host_summary` (`host`,`statements`,`statement_latency`,`statement_avg_latency`,`table_scans`,`file_ios`,`file_io_latency`,`current_connections`,`total_connections`,`unique_users`,`current_memory`,`total_memory_allocated`) AS select if((`performance_schema`.`accounts`.`HOST` is null),'background',`performance_schema`.`accounts`.`HOST`) AS `host`,sum(`stmt`.`total`) AS `statements`,sum(`stmt`.`total_latency`) AS `statement_latency`,(sum(`stmt`.`total_latency`) / sum(`stmt`.`total`)) AS `statement_avg_latency`,sum(`stmt`.`full_scans`) AS `table_scans`,sum(`io`.`ios`) AS `file_ios`,sum(`io`.`io_latency`) AS `file_io_latency`,sum(`performance_schema`.`accounts`.`CURRENT_CONNECTIONS`) AS `current_connections`,sum(`performance_schema`.`accounts`.`TOTAL_CONNECTIONS`) AS `total_connections`,count(distinct `performance_schema`.`accounts`.`USER`) AS `unique_users`,sum(`mem`.`current_allocated`) AS `current_memory`,sum(`mem`.`total_allocated`) AS `total_memory_allocated` from (((`performance_schema`.`accounts` join `x$host_summary_by_statement_latency` `stmt` on((`performance_schema`.`accounts`.`HOST` = `stmt`.`host`))) join `x$host_summary_by_file_io` `io` on((`performance_schema`.`accounts`.`HOST` = `io`.`host`))) join `x$memory_by_host_by_current_bytes` `mem` on((`performance_schema`.`accounts`.`HOST` = `mem`.`host`))) group by if((`performance_schema`.`accounts`.`HOST` is null),'background',`performance_schema`.`accounts`.`HOST`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$host_summary_by_file_io`
--

/*!50001 DROP VIEW IF EXISTS `x$host_summary_by_file_io`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$host_summary_by_file_io` (`host`,`ios`,`io_latency`) AS select if((`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`) AS `host`,sum(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`COUNT_STAR`) AS `ios`,sum(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`) AS `io_latency` from `performance_schema`.`events_waits_summary_by_host_by_event_name` where (`performance_schema`.`events_waits_summary_by_host_by_event_name`.`EVENT_NAME` like 'wait/io/file/%') group by if((`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`) order by sum(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$host_summary_by_file_io_type`
--

/*!50001 DROP VIEW IF EXISTS `x$host_summary_by_file_io_type`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$host_summary_by_file_io_type` (`host`,`event_name`,`total`,`total_latency`,`max_latency`) AS select if((`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`) AS `host`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`EVENT_NAME` AS `event_name`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`MAX_TIMER_WAIT` AS `max_latency` from `performance_schema`.`events_waits_summary_by_host_by_event_name` where ((`performance_schema`.`events_waits_summary_by_host_by_event_name`.`EVENT_NAME` like 'wait/io/file%') and (`performance_schema`.`events_waits_summary_by_host_by_event_name`.`COUNT_STAR` > 0)) order by if((`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`),`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$host_summary_by_stages`
--

/*!50001 DROP VIEW IF EXISTS `x$host_summary_by_stages`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$host_summary_by_stages` (`host`,`event_name`,`total`,`total_latency`,`avg_latency`) AS select if((`performance_schema`.`events_stages_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_stages_summary_by_host_by_event_name`.`HOST`) AS `host`,`performance_schema`.`events_stages_summary_by_host_by_event_name`.`EVENT_NAME` AS `event_name`,`performance_schema`.`events_stages_summary_by_host_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`events_stages_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_stages_summary_by_host_by_event_name`.`AVG_TIMER_WAIT` AS `avg_latency` from `performance_schema`.`events_stages_summary_by_host_by_event_name` where (`performance_schema`.`events_stages_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` <> 0) order by if((`performance_schema`.`events_stages_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_stages_summary_by_host_by_event_name`.`HOST`),`performance_schema`.`events_stages_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$host_summary_by_statement_latency`
--

/*!50001 DROP VIEW IF EXISTS `x$host_summary_by_statement_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$host_summary_by_statement_latency` (`host`,`total`,`total_latency`,`max_latency`,`lock_latency`,`cpu_latency`,`rows_sent`,`rows_examined`,`rows_affected`,`full_scans`) AS select if((`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`) AS `host`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`COUNT_STAR`) AS `total`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,max(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_LOCK_TIME`) AS `lock_latency`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_CPU_TIME`) AS `cpu_latency`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_SENT`) AS `rows_sent`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_EXAMINED`) AS `rows_examined`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_AFFECTED`) AS `rows_affected`,(sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_NO_INDEX_USED`) + sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_NO_GOOD_INDEX_USED`)) AS `full_scans` from `performance_schema`.`events_statements_summary_by_host_by_event_name` group by if((`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`) order by sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$host_summary_by_statement_type`
--

/*!50001 DROP VIEW IF EXISTS `x$host_summary_by_statement_type`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$host_summary_by_statement_type` (`host`,`statement`,`total`,`total_latency`,`max_latency`,`lock_latency`,`cpu_latency`,`rows_sent`,`rows_examined`,`rows_affected`,`full_scans`) AS select if((`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`) AS `host`,substring_index(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`EVENT_NAME`,'/',-(1)) AS `statement`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`MAX_TIMER_WAIT` AS `max_latency`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_LOCK_TIME` AS `lock_latency`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_CPU_TIME` AS `cpu_latency`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_SENT` AS `rows_sent`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_EXAMINED` AS `rows_examined`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_AFFECTED` AS `rows_affected`,(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_NO_INDEX_USED` + `performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_NO_GOOD_INDEX_USED`) AS `full_scans` from `performance_schema`.`events_statements_summary_by_host_by_event_name` where (`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` <> 0) order by if((`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`),`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$innodb_buffer_stats_by_schema`
--

/*!50001 DROP VIEW IF EXISTS `x$innodb_buffer_stats_by_schema`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$innodb_buffer_stats_by_schema` (`object_schema`,`allocated`,`data`,`pages`,`pages_hashed`,`pages_old`,`rows_cached`) AS select if((locate('.',`ibp`.`TABLE_NAME`) = 0),'InnoDB System',replace(substring_index(`ibp`.`TABLE_NAME`,'.',1),'`','')) AS `object_schema`,sum(if((`ibp`.`COMPRESSED_SIZE` = 0),16384,`ibp`.`COMPRESSED_SIZE`)) AS `allocated`,sum(`ibp`.`DATA_SIZE`) AS `data`,count(`ibp`.`PAGE_NUMBER`) AS `pages`,count(if((`ibp`.`IS_HASHED` = 'YES'),1,NULL)) AS `pages_hashed`,count(if((`ibp`.`IS_OLD` = 'YES'),1,NULL)) AS `pages_old`,round(ifnull((sum(`ibp`.`NUMBER_RECORDS`) / nullif(count(distinct `ibp`.`INDEX_NAME`),0)),0),0) AS `rows_cached` from `information_schema`.`INNODB_BUFFER_PAGE` `ibp` where (`ibp`.`TABLE_NAME` is not null) group by `object_schema` order by sum(if((`ibp`.`COMPRESSED_SIZE` = 0),16384,`ibp`.`COMPRESSED_SIZE`)) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$innodb_buffer_stats_by_table`
--

/*!50001 DROP VIEW IF EXISTS `x$innodb_buffer_stats_by_table`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$innodb_buffer_stats_by_table` (`object_schema`,`object_name`,`allocated`,`data`,`pages`,`pages_hashed`,`pages_old`,`rows_cached`) AS select if((locate('.',`ibp`.`TABLE_NAME`) = 0),'InnoDB System',replace(substring_index(`ibp`.`TABLE_NAME`,'.',1),'`','')) AS `object_schema`,replace(substring_index(`ibp`.`TABLE_NAME`,'.',-(1)),'`','') AS `object_name`,sum(if((`ibp`.`COMPRESSED_SIZE` = 0),16384,`ibp`.`COMPRESSED_SIZE`)) AS `allocated`,sum(`ibp`.`DATA_SIZE`) AS `data`,count(`ibp`.`PAGE_NUMBER`) AS `pages`,count(if((`ibp`.`IS_HASHED` = 'YES'),1,NULL)) AS `pages_hashed`,count(if((`ibp`.`IS_OLD` = 'YES'),1,NULL)) AS `pages_old`,round(ifnull((sum(`ibp`.`NUMBER_RECORDS`) / nullif(count(distinct `ibp`.`INDEX_NAME`),0)),0),0) AS `rows_cached` from `information_schema`.`INNODB_BUFFER_PAGE` `ibp` where (`ibp`.`TABLE_NAME` is not null) group by `object_schema`,`object_name` order by sum(if((`ibp`.`COMPRESSED_SIZE` = 0),16384,`ibp`.`COMPRESSED_SIZE`)) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$innodb_lock_waits`
--

/*!50001 DROP VIEW IF EXISTS `x$innodb_lock_waits`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$innodb_lock_waits` (`wait_started`,`wait_age`,`wait_age_secs`,`locked_table`,`locked_table_schema`,`locked_table_name`,`locked_table_partition`,`locked_table_subpartition`,`locked_index`,`locked_type`,`waiting_trx_id`,`waiting_trx_started`,`waiting_trx_age`,`waiting_trx_rows_locked`,`waiting_trx_rows_modified`,`waiting_pid`,`waiting_query`,`waiting_lock_id`,`waiting_lock_mode`,`blocking_trx_id`,`blocking_pid`,`blocking_query`,`blocking_lock_id`,`blocking_lock_mode`,`blocking_trx_started`,`blocking_trx_age`,`blocking_trx_rows_locked`,`blocking_trx_rows_modified`,`sql_kill_blocking_query`,`sql_kill_blocking_connection`) AS select `r`.`trx_wait_started` AS `wait_started`,timediff(now(),`r`.`trx_wait_started`) AS `wait_age`,timestampdiff(SECOND,`r`.`trx_wait_started`,now()) AS `wait_age_secs`,concat(`sys`.`quote_identifier`(`rl`.`OBJECT_SCHEMA`),'.',`sys`.`quote_identifier`(`rl`.`OBJECT_NAME`)) AS `locked_table`,`rl`.`OBJECT_SCHEMA` AS `locked_table_schema`,`rl`.`OBJECT_NAME` AS `locked_table_name`,`rl`.`PARTITION_NAME` AS `locked_table_partition`,`rl`.`SUBPARTITION_NAME` AS `locked_table_subpartition`,`rl`.`INDEX_NAME` AS `locked_index`,`rl`.`LOCK_TYPE` AS `locked_type`,`r`.`trx_id` AS `waiting_trx_id`,`r`.`trx_started` AS `waiting_trx_started`,timediff(now(),`r`.`trx_started`) AS `waiting_trx_age`,`r`.`trx_rows_locked` AS `waiting_trx_rows_locked`,`r`.`trx_rows_modified` AS `waiting_trx_rows_modified`,`r`.`trx_mysql_thread_id` AS `waiting_pid`,`r`.`trx_query` AS `waiting_query`,`rl`.`ENGINE_LOCK_ID` AS `waiting_lock_id`,`rl`.`LOCK_MODE` AS `waiting_lock_mode`,`b`.`trx_id` AS `blocking_trx_id`,`b`.`trx_mysql_thread_id` AS `blocking_pid`,`b`.`trx_query` AS `blocking_query`,`bl`.`ENGINE_LOCK_ID` AS `blocking_lock_id`,`bl`.`LOCK_MODE` AS `blocking_lock_mode`,`b`.`trx_started` AS `blocking_trx_started`,timediff(now(),`b`.`trx_started`) AS `blocking_trx_age`,`b`.`trx_rows_locked` AS `blocking_trx_rows_locked`,`b`.`trx_rows_modified` AS `blocking_trx_rows_modified`,concat('KILL QUERY ',`b`.`trx_mysql_thread_id`) AS `sql_kill_blocking_query`,concat('KILL ',`b`.`trx_mysql_thread_id`) AS `sql_kill_blocking_connection` from ((((`performance_schema`.`data_lock_waits` `w` join `information_schema`.`INNODB_TRX` `b` on((`b`.`trx_id` = cast(`w`.`BLOCKING_ENGINE_TRANSACTION_ID` as char charset utf8mb4)))) join `information_schema`.`INNODB_TRX` `r` on((`r`.`trx_id` = cast(`w`.`REQUESTING_ENGINE_TRANSACTION_ID` as char charset utf8mb4)))) join `performance_schema`.`data_locks` `bl` on((`bl`.`ENGINE_LOCK_ID` = `w`.`BLOCKING_ENGINE_LOCK_ID`))) join `performance_schema`.`data_locks` `rl` on((`rl`.`ENGINE_LOCK_ID` = `w`.`REQUESTING_ENGINE_LOCK_ID`))) order by `r`.`trx_wait_started` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$io_by_thread_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `x$io_by_thread_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$io_by_thread_by_latency` (`user`,`total`,`total_latency`,`min_latency`,`avg_latency`,`max_latency`,`thread_id`,`processlist_id`) AS select if((`performance_schema`.`threads`.`PROCESSLIST_ID` is null),substring_index(`performance_schema`.`threads`.`NAME`,'/',-(1)),concat(`performance_schema`.`threads`.`PROCESSLIST_USER`,'@',convert(`performance_schema`.`threads`.`PROCESSLIST_HOST` using utf8mb4))) AS `user`,sum(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`COUNT_STAR`) AS `total`,sum(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,min(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`MIN_TIMER_WAIT`) AS `min_latency`,avg(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`AVG_TIMER_WAIT`) AS `avg_latency`,max(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency`,`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`THREAD_ID` AS `thread_id`,`performance_schema`.`threads`.`PROCESSLIST_ID` AS `processlist_id` from (`performance_schema`.`events_waits_summary_by_thread_by_event_name` left join `performance_schema`.`threads` on((`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`THREAD_ID` = `performance_schema`.`threads`.`THREAD_ID`))) where ((`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`EVENT_NAME` like 'wait/io/file/%') and (`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`SUM_TIMER_WAIT` > 0)) group by `performance_schema`.`events_waits_summary_by_thread_by_event_name`.`THREAD_ID`,`performance_schema`.`threads`.`PROCESSLIST_ID`,`user` order by sum(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$io_global_by_file_by_bytes`
--

/*!50001 DROP VIEW IF EXISTS `x$io_global_by_file_by_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$io_global_by_file_by_bytes` (`file`,`count_read`,`total_read`,`avg_read`,`count_write`,`total_written`,`avg_write`,`total`,`write_pct`) AS select `performance_schema`.`file_summary_by_instance`.`FILE_NAME` AS `file`,`performance_schema`.`file_summary_by_instance`.`COUNT_READ` AS `count_read`,`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` AS `total_read`,ifnull((`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` / nullif(`performance_schema`.`file_summary_by_instance`.`COUNT_READ`,0)),0) AS `avg_read`,`performance_schema`.`file_summary_by_instance`.`COUNT_WRITE` AS `count_write`,`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE` AS `total_written`,ifnull((`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE` / nullif(`performance_schema`.`file_summary_by_instance`.`COUNT_WRITE`,0)),0.00) AS `avg_write`,(`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` + `performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE`) AS `total`,ifnull(round((100 - ((`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` / nullif((`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` + `performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE`),0)) * 100)),2),0.00) AS `write_pct` from `performance_schema`.`file_summary_by_instance` order by (`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` + `performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$io_global_by_file_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `x$io_global_by_file_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$io_global_by_file_by_latency` (`file`,`total`,`total_latency`,`count_read`,`read_latency`,`count_write`,`write_latency`,`count_misc`,`misc_latency`) AS select `performance_schema`.`file_summary_by_instance`.`FILE_NAME` AS `file`,`performance_schema`.`file_summary_by_instance`.`COUNT_STAR` AS `total`,`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`file_summary_by_instance`.`COUNT_READ` AS `count_read`,`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_READ` AS `read_latency`,`performance_schema`.`file_summary_by_instance`.`COUNT_WRITE` AS `count_write`,`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_WRITE` AS `write_latency`,`performance_schema`.`file_summary_by_instance`.`COUNT_MISC` AS `count_misc`,`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_MISC` AS `misc_latency` from `performance_schema`.`file_summary_by_instance` order by `performance_schema`.`file_summary_by_instance`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$io_global_by_wait_by_bytes`
--

/*!50001 DROP VIEW IF EXISTS `x$io_global_by_wait_by_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$io_global_by_wait_by_bytes` (`event_name`,`total`,`total_latency`,`min_latency`,`avg_latency`,`max_latency`,`count_read`,`total_read`,`avg_read`,`count_write`,`total_written`,`avg_written`,`total_requested`) AS select substring_index(`performance_schema`.`file_summary_by_event_name`.`EVENT_NAME`,'/',-(2)) AS `event_name`,`performance_schema`.`file_summary_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`file_summary_by_event_name`.`MIN_TIMER_WAIT` AS `min_latency`,`performance_schema`.`file_summary_by_event_name`.`AVG_TIMER_WAIT` AS `avg_latency`,`performance_schema`.`file_summary_by_event_name`.`MAX_TIMER_WAIT` AS `max_latency`,`performance_schema`.`file_summary_by_event_name`.`COUNT_READ` AS `count_read`,`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ` AS `total_read`,ifnull((`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ` / nullif(`performance_schema`.`file_summary_by_event_name`.`COUNT_READ`,0)),0) AS `avg_read`,`performance_schema`.`file_summary_by_event_name`.`COUNT_WRITE` AS `count_write`,`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE` AS `total_written`,ifnull((`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE` / nullif(`performance_schema`.`file_summary_by_event_name`.`COUNT_WRITE`,0)),0) AS `avg_written`,(`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE` + `performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ`) AS `total_requested` from `performance_schema`.`file_summary_by_event_name` where ((`performance_schema`.`file_summary_by_event_name`.`EVENT_NAME` like 'wait/io/file/%') and (`performance_schema`.`file_summary_by_event_name`.`COUNT_STAR` > 0)) order by (`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE` + `performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$io_global_by_wait_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `x$io_global_by_wait_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$io_global_by_wait_by_latency` (`event_name`,`total`,`total_latency`,`avg_latency`,`max_latency`,`read_latency`,`write_latency`,`misc_latency`,`count_read`,`total_read`,`avg_read`,`count_write`,`total_written`,`avg_written`) AS select substring_index(`performance_schema`.`file_summary_by_event_name`.`EVENT_NAME`,'/',-(2)) AS `event_name`,`performance_schema`.`file_summary_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`file_summary_by_event_name`.`AVG_TIMER_WAIT` AS `avg_latency`,`performance_schema`.`file_summary_by_event_name`.`MAX_TIMER_WAIT` AS `max_latency`,`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_READ` AS `read_latency`,`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_WRITE` AS `write_latency`,`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_MISC` AS `misc_latency`,`performance_schema`.`file_summary_by_event_name`.`COUNT_READ` AS `count_read`,`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ` AS `total_read`,ifnull((`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ` / nullif(`performance_schema`.`file_summary_by_event_name`.`COUNT_READ`,0)),0) AS `avg_read`,`performance_schema`.`file_summary_by_event_name`.`COUNT_WRITE` AS `count_write`,`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE` AS `total_written`,ifnull((`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE` / nullif(`performance_schema`.`file_summary_by_event_name`.`COUNT_WRITE`,0)),0) AS `avg_written` from `performance_schema`.`file_summary_by_event_name` where ((`performance_schema`.`file_summary_by_event_name`.`EVENT_NAME` like 'wait/io/file/%') and (`performance_schema`.`file_summary_by_event_name`.`COUNT_STAR` > 0)) order by `performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$latest_file_io`
--

/*!50001 DROP VIEW IF EXISTS `x$latest_file_io`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$latest_file_io` (`thread`,`file`,`latency`,`operation`,`requested`) AS select if((`processlist`.`ID` is null),concat(substring_index(`performance_schema`.`threads`.`NAME`,'/',-(1)),':',`performance_schema`.`events_waits_history_long`.`THREAD_ID`),convert(concat(`processlist`.`USER`,'@',`processlist`.`HOST`,':',`processlist`.`ID`) using utf8mb4)) AS `thread`,`performance_schema`.`events_waits_history_long`.`OBJECT_NAME` AS `file`,`performance_schema`.`events_waits_history_long`.`TIMER_WAIT` AS `latency`,`performance_schema`.`events_waits_history_long`.`OPERATION` AS `operation`,`performance_schema`.`events_waits_history_long`.`NUMBER_OF_BYTES` AS `requested` from ((`performance_schema`.`events_waits_history_long` join `performance_schema`.`threads` on((`performance_schema`.`events_waits_history_long`.`THREAD_ID` = `performance_schema`.`threads`.`THREAD_ID`))) left join `information_schema`.`PROCESSLIST` `processlist` on((`performance_schema`.`threads`.`PROCESSLIST_ID` = `processlist`.`ID`))) where ((`performance_schema`.`events_waits_history_long`.`OBJECT_NAME` is not null) and (`performance_schema`.`events_waits_history_long`.`EVENT_NAME` like 'wait/io/file/%')) order by `performance_schema`.`events_waits_history_long`.`TIMER_START` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$memory_by_host_by_current_bytes`
--

/*!50001 DROP VIEW IF EXISTS `x$memory_by_host_by_current_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$memory_by_host_by_current_bytes` (`host`,`current_count_used`,`current_allocated`,`current_avg_alloc`,`current_max_alloc`,`total_allocated`) AS select if((`performance_schema`.`memory_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`memory_summary_by_host_by_event_name`.`HOST`) AS `host`,sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_COUNT_USED`) AS `current_count_used`,sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) AS `current_allocated`,ifnull((sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) / nullif(sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_COUNT_USED`),0)),0) AS `current_avg_alloc`,max(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) AS `current_max_alloc`,sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`SUM_NUMBER_OF_BYTES_ALLOC`) AS `total_allocated` from `performance_schema`.`memory_summary_by_host_by_event_name` group by if((`performance_schema`.`memory_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`memory_summary_by_host_by_event_name`.`HOST`) order by sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$memory_by_thread_by_current_bytes`
--

/*!50001 DROP VIEW IF EXISTS `x$memory_by_thread_by_current_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$memory_by_thread_by_current_bytes` (`thread_id`,`user`,`current_count_used`,`current_allocated`,`current_avg_alloc`,`current_max_alloc`,`total_allocated`) AS select `t`.`THREAD_ID` AS `thread_id`,if((`t`.`NAME` = 'thread/sql/one_connection'),concat(`t`.`PROCESSLIST_USER`,'@',convert(`t`.`PROCESSLIST_HOST` using utf8mb4)),replace(`t`.`NAME`,'thread/','')) AS `user`,sum(`mt`.`CURRENT_COUNT_USED`) AS `current_count_used`,sum(`mt`.`CURRENT_NUMBER_OF_BYTES_USED`) AS `current_allocated`,ifnull((sum(`mt`.`CURRENT_NUMBER_OF_BYTES_USED`) / nullif(sum(`mt`.`CURRENT_COUNT_USED`),0)),0) AS `current_avg_alloc`,max(`mt`.`CURRENT_NUMBER_OF_BYTES_USED`) AS `current_max_alloc`,sum(`mt`.`SUM_NUMBER_OF_BYTES_ALLOC`) AS `total_allocated` from (`performance_schema`.`memory_summary_by_thread_by_event_name` `mt` join `performance_schema`.`threads` `t` on((`mt`.`THREAD_ID` = `t`.`THREAD_ID`))) group by `t`.`THREAD_ID`,if((`t`.`NAME` = 'thread/sql/one_connection'),concat(`t`.`PROCESSLIST_USER`,'@',convert(`t`.`PROCESSLIST_HOST` using utf8mb4)),replace(`t`.`NAME`,'thread/','')) order by sum(`mt`.`CURRENT_NUMBER_OF_BYTES_USED`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$memory_by_user_by_current_bytes`
--

/*!50001 DROP VIEW IF EXISTS `x$memory_by_user_by_current_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$memory_by_user_by_current_bytes` (`user`,`current_count_used`,`current_allocated`,`current_avg_alloc`,`current_max_alloc`,`total_allocated`) AS select if((`performance_schema`.`memory_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`memory_summary_by_user_by_event_name`.`USER`) AS `user`,sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_COUNT_USED`) AS `current_count_used`,sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) AS `current_allocated`,ifnull((sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) / nullif(sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_COUNT_USED`),0)),0) AS `current_avg_alloc`,max(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) AS `current_max_alloc`,sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`SUM_NUMBER_OF_BYTES_ALLOC`) AS `total_allocated` from `performance_schema`.`memory_summary_by_user_by_event_name` group by if((`performance_schema`.`memory_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`memory_summary_by_user_by_event_name`.`USER`) order by sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$memory_global_by_current_bytes`
--

/*!50001 DROP VIEW IF EXISTS `x$memory_global_by_current_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$memory_global_by_current_bytes` (`event_name`,`current_count`,`current_alloc`,`current_avg_alloc`,`high_count`,`high_alloc`,`high_avg_alloc`) AS select `performance_schema`.`memory_summary_global_by_event_name`.`EVENT_NAME` AS `event_name`,`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_COUNT_USED` AS `current_count`,`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED` AS `current_alloc`,ifnull((`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED` / nullif(`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_COUNT_USED`,0)),0) AS `current_avg_alloc`,`performance_schema`.`memory_summary_global_by_event_name`.`HIGH_COUNT_USED` AS `high_count`,`performance_schema`.`memory_summary_global_by_event_name`.`HIGH_NUMBER_OF_BYTES_USED` AS `high_alloc`,ifnull((`performance_schema`.`memory_summary_global_by_event_name`.`HIGH_NUMBER_OF_BYTES_USED` / nullif(`performance_schema`.`memory_summary_global_by_event_name`.`HIGH_COUNT_USED`,0)),0) AS `high_avg_alloc` from `performance_schema`.`memory_summary_global_by_event_name` where (`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED` > 0) order by `performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$memory_global_total`
--

/*!50001 DROP VIEW IF EXISTS `x$memory_global_total`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$memory_global_total` (`total_allocated`) AS select sum(`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) AS `total_allocated` from `performance_schema`.`memory_summary_global_by_event_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$processlist`
--

/*!50001 DROP VIEW IF EXISTS `x$processlist`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$processlist` (`thd_id`,`conn_id`,`user`,`db`,`command`,`state`,`time`,`current_statement`,`execution_engine`,`statement_latency`,`progress`,`lock_latency`,`cpu_latency`,`rows_examined`,`rows_sent`,`rows_affected`,`tmp_tables`,`tmp_disk_tables`,`full_scan`,`last_statement`,`last_statement_latency`,`current_memory`,`last_wait`,`last_wait_latency`,`source`,`trx_latency`,`trx_state`,`trx_autocommit`,`pid`,`program_name`) AS select `pps`.`THREAD_ID` AS `thd_id`,`pps`.`PROCESSLIST_ID` AS `conn_id`,if((`pps`.`NAME` in ('thread/sql/one_connection','thread/thread_pool/tp_one_connection')),concat(`pps`.`PROCESSLIST_USER`,'@',convert(`pps`.`PROCESSLIST_HOST` using utf8mb4)),replace(`pps`.`NAME`,'thread/','')) AS `user`,`pps`.`PROCESSLIST_DB` AS `db`,`pps`.`PROCESSLIST_COMMAND` AS `command`,`pps`.`PROCESSLIST_STATE` AS `state`,`pps`.`PROCESSLIST_TIME` AS `time`,`pps`.`PROCESSLIST_INFO` AS `current_statement`,`pps`.`EXECUTION_ENGINE` AS `execution_engine`,if((`esc`.`END_EVENT_ID` is null),`esc`.`TIMER_WAIT`,NULL) AS `statement_latency`,if((`esc`.`END_EVENT_ID` is null),round((100 * (`estc`.`WORK_COMPLETED` / `estc`.`WORK_ESTIMATED`)),2),NULL) AS `progress`,`esc`.`LOCK_TIME` AS `lock_latency`,`esc`.`CPU_TIME` AS `cpu_latency`,`esc`.`ROWS_EXAMINED` AS `rows_examined`,`esc`.`ROWS_SENT` AS `rows_sent`,`esc`.`ROWS_AFFECTED` AS `rows_affected`,`esc`.`CREATED_TMP_TABLES` AS `tmp_tables`,`esc`.`CREATED_TMP_DISK_TABLES` AS `tmp_disk_tables`,if(((`esc`.`NO_GOOD_INDEX_USED` > 0) or (`esc`.`NO_INDEX_USED` > 0)),'YES','NO') AS `full_scan`,if((`esc`.`END_EVENT_ID` is not null),`esc`.`SQL_TEXT`,NULL) AS `last_statement`,if((`esc`.`END_EVENT_ID` is not null),`esc`.`TIMER_WAIT`,NULL) AS `last_statement_latency`,`mem`.`current_allocated` AS `current_memory`,`ewc`.`EVENT_NAME` AS `last_wait`,if(((`ewc`.`END_EVENT_ID` is null) and (`ewc`.`EVENT_NAME` is not null)),'Still Waiting',`ewc`.`TIMER_WAIT`) AS `last_wait_latency`,`ewc`.`SOURCE` AS `source`,`etc`.`TIMER_WAIT` AS `trx_latency`,`etc`.`STATE` AS `trx_state`,`etc`.`AUTOCOMMIT` AS `trx_autocommit`,`conattr_pid`.`ATTR_VALUE` AS `pid`,`conattr_progname`.`ATTR_VALUE` AS `program_name` from (((((((`performance_schema`.`threads` `pps` left join `performance_schema`.`events_waits_current` `ewc` on((`pps`.`THREAD_ID` = `ewc`.`THREAD_ID`))) left join `performance_schema`.`events_stages_current` `estc` on((`pps`.`THREAD_ID` = `estc`.`THREAD_ID`))) left join `performance_schema`.`events_statements_current` `esc` on((`pps`.`THREAD_ID` = `esc`.`THREAD_ID`))) left join `performance_schema`.`events_transactions_current` `etc` on((`pps`.`THREAD_ID` = `etc`.`THREAD_ID`))) left join `x$memory_by_thread_by_current_bytes` `mem` on((`pps`.`THREAD_ID` = `mem`.`thread_id`))) left join `performance_schema`.`session_connect_attrs` `conattr_pid` on(((`conattr_pid`.`PROCESSLIST_ID` = `pps`.`PROCESSLIST_ID`) and (`conattr_pid`.`ATTR_NAME` = '_pid')))) left join `performance_schema`.`session_connect_attrs` `conattr_progname` on(((`conattr_progname`.`PROCESSLIST_ID` = `pps`.`PROCESSLIST_ID`) and (`conattr_progname`.`ATTR_NAME` = 'program_name')))) order by `pps`.`PROCESSLIST_TIME` desc,`last_wait_latency` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$ps_digest_95th_percentile_by_avg_us`
--

/*!50001 DROP VIEW IF EXISTS `x$ps_digest_95th_percentile_by_avg_us`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$ps_digest_95th_percentile_by_avg_us` (`avg_us`,`percentile`) AS select `s2`.`avg_us` AS `avg_us`,ifnull((sum(`s1`.`cnt`) / nullif((select count(0) from `performance_schema`.`events_statements_summary_by_digest`),0)),0) AS `percentile` from (`x$ps_digest_avg_latency_distribution` `s1` join `x$ps_digest_avg_latency_distribution` `s2` on((`s1`.`avg_us` <= `s2`.`avg_us`))) group by `s2`.`avg_us` having (ifnull((sum(`s1`.`cnt`) / nullif((select count(0) from `performance_schema`.`events_statements_summary_by_digest`),0)),0) > 0.95) order by `percentile` limit 1 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$ps_digest_avg_latency_distribution`
--

/*!50001 DROP VIEW IF EXISTS `x$ps_digest_avg_latency_distribution`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$ps_digest_avg_latency_distribution` (`cnt`,`avg_us`) AS select count(0) AS `cnt`,round((`performance_schema`.`events_statements_summary_by_digest`.`AVG_TIMER_WAIT` / 1000000),0) AS `avg_us` from `performance_schema`.`events_statements_summary_by_digest` group by `avg_us` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$ps_schema_table_statistics_io`
--

/*!50001 DROP VIEW IF EXISTS `x$ps_schema_table_statistics_io`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$ps_schema_table_statistics_io` (`table_schema`,`table_name`,`count_read`,`sum_number_of_bytes_read`,`sum_timer_read`,`count_write`,`sum_number_of_bytes_write`,`sum_timer_write`,`count_misc`,`sum_timer_misc`) AS select `extract_schema_from_file_name`(`performance_schema`.`file_summary_by_instance`.`FILE_NAME`) AS `table_schema`,`extract_table_from_file_name`(`performance_schema`.`file_summary_by_instance`.`FILE_NAME`) AS `table_name`,sum(`performance_schema`.`file_summary_by_instance`.`COUNT_READ`) AS `count_read`,sum(`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ`) AS `sum_number_of_bytes_read`,sum(`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_READ`) AS `sum_timer_read`,sum(`performance_schema`.`file_summary_by_instance`.`COUNT_WRITE`) AS `count_write`,sum(`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE`) AS `sum_number_of_bytes_write`,sum(`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_WRITE`) AS `sum_timer_write`,sum(`performance_schema`.`file_summary_by_instance`.`COUNT_MISC`) AS `count_misc`,sum(`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_MISC`) AS `sum_timer_misc` from `performance_schema`.`file_summary_by_instance` group by `table_schema`,`table_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$schema_flattened_keys`
--

/*!50001 DROP VIEW IF EXISTS `x$schema_flattened_keys`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$schema_flattened_keys` (`table_schema`,`table_name`,`index_name`,`non_unique`,`subpart_exists`,`index_columns`) AS select `information_schema`.`STATISTICS`.`TABLE_SCHEMA` AS `TABLE_SCHEMA`,`information_schema`.`STATISTICS`.`TABLE_NAME` AS `TABLE_NAME`,`information_schema`.`STATISTICS`.`INDEX_NAME` AS `INDEX_NAME`,max(`information_schema`.`STATISTICS`.`NON_UNIQUE`) AS `non_unique`,max(if((`information_schema`.`STATISTICS`.`SUB_PART` is null),0,1)) AS `subpart_exists`,group_concat(`information_schema`.`STATISTICS`.`COLUMN_NAME` order by `information_schema`.`STATISTICS`.`SEQ_IN_INDEX` ASC separator ',') AS `index_columns` from `information_schema`.`STATISTICS` where ((`information_schema`.`STATISTICS`.`INDEX_TYPE` = 'BTREE') and (`information_schema`.`STATISTICS`.`TABLE_SCHEMA` not in ('mysql','sys','INFORMATION_SCHEMA','PERFORMANCE_SCHEMA'))) group by `information_schema`.`STATISTICS`.`TABLE_SCHEMA`,`information_schema`.`STATISTICS`.`TABLE_NAME`,`information_schema`.`STATISTICS`.`INDEX_NAME` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$schema_index_statistics`
--

/*!50001 DROP VIEW IF EXISTS `x$schema_index_statistics`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$schema_index_statistics` (`table_schema`,`table_name`,`index_name`,`rows_selected`,`select_latency`,`rows_inserted`,`insert_latency`,`rows_updated`,`update_latency`,`rows_deleted`,`delete_latency`) AS select `performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_SCHEMA` AS `table_schema`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_NAME` AS `table_name`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`INDEX_NAME` AS `index_name`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_FETCH` AS `rows_selected`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_FETCH` AS `select_latency`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_INSERT` AS `rows_inserted`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_INSERT` AS `insert_latency`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_UPDATE` AS `rows_updated`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_UPDATE` AS `update_latency`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_DELETE` AS `rows_deleted`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_DELETE` AS `delete_latency` from `performance_schema`.`table_io_waits_summary_by_index_usage` where (`performance_schema`.`table_io_waits_summary_by_index_usage`.`INDEX_NAME` is not null) order by `performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$schema_table_lock_waits`
--

/*!50001 DROP VIEW IF EXISTS `x$schema_table_lock_waits`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$schema_table_lock_waits` (`object_schema`,`object_name`,`waiting_thread_id`,`waiting_pid`,`waiting_account`,`waiting_lock_type`,`waiting_lock_duration`,`waiting_query`,`waiting_query_secs`,`waiting_query_rows_affected`,`waiting_query_rows_examined`,`blocking_thread_id`,`blocking_pid`,`blocking_account`,`blocking_lock_type`,`blocking_lock_duration`,`sql_kill_blocking_query`,`sql_kill_blocking_connection`) AS select `g`.`OBJECT_SCHEMA` AS `object_schema`,`g`.`OBJECT_NAME` AS `object_name`,`pt`.`THREAD_ID` AS `waiting_thread_id`,`pt`.`PROCESSLIST_ID` AS `waiting_pid`,`sys`.`ps_thread_account`(`p`.`OWNER_THREAD_ID`) AS `waiting_account`,`p`.`LOCK_TYPE` AS `waiting_lock_type`,`p`.`LOCK_DURATION` AS `waiting_lock_duration`,`pt`.`PROCESSLIST_INFO` AS `waiting_query`,`pt`.`PROCESSLIST_TIME` AS `waiting_query_secs`,`ps`.`ROWS_AFFECTED` AS `waiting_query_rows_affected`,`ps`.`ROWS_EXAMINED` AS `waiting_query_rows_examined`,`gt`.`THREAD_ID` AS `blocking_thread_id`,`gt`.`PROCESSLIST_ID` AS `blocking_pid`,`sys`.`ps_thread_account`(`g`.`OWNER_THREAD_ID`) AS `blocking_account`,`g`.`LOCK_TYPE` AS `blocking_lock_type`,`g`.`LOCK_DURATION` AS `blocking_lock_duration`,concat('KILL QUERY ',`gt`.`PROCESSLIST_ID`) AS `sql_kill_blocking_query`,concat('KILL ',`gt`.`PROCESSLIST_ID`) AS `sql_kill_blocking_connection` from (((((`performance_schema`.`metadata_locks` `g` join `performance_schema`.`metadata_locks` `p` on(((`g`.`OBJECT_TYPE` = `p`.`OBJECT_TYPE`) and (`g`.`OBJECT_SCHEMA` = `p`.`OBJECT_SCHEMA`) and (`g`.`OBJECT_NAME` = `p`.`OBJECT_NAME`) and (`g`.`LOCK_STATUS` = 'GRANTED') and (`p`.`LOCK_STATUS` = 'PENDING')))) join `performance_schema`.`threads` `gt` on((`g`.`OWNER_THREAD_ID` = `gt`.`THREAD_ID`))) join `performance_schema`.`threads` `pt` on((`p`.`OWNER_THREAD_ID` = `pt`.`THREAD_ID`))) left join `performance_schema`.`events_statements_current` `gs` on((`g`.`OWNER_THREAD_ID` = `gs`.`THREAD_ID`))) left join `performance_schema`.`events_statements_current` `ps` on((`p`.`OWNER_THREAD_ID` = `ps`.`THREAD_ID`))) where (`g`.`OBJECT_TYPE` = 'TABLE') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$schema_table_statistics`
--

/*!50001 DROP VIEW IF EXISTS `x$schema_table_statistics`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$schema_table_statistics` (`table_schema`,`table_name`,`total_latency`,`rows_fetched`,`fetch_latency`,`rows_inserted`,`insert_latency`,`rows_updated`,`update_latency`,`rows_deleted`,`delete_latency`,`io_read_requests`,`io_read`,`io_read_latency`,`io_write_requests`,`io_write`,`io_write_latency`,`io_misc_requests`,`io_misc_latency`) AS select `pst`.`OBJECT_SCHEMA` AS `table_schema`,`pst`.`OBJECT_NAME` AS `table_name`,`pst`.`SUM_TIMER_WAIT` AS `total_latency`,`pst`.`COUNT_FETCH` AS `rows_fetched`,`pst`.`SUM_TIMER_FETCH` AS `fetch_latency`,`pst`.`COUNT_INSERT` AS `rows_inserted`,`pst`.`SUM_TIMER_INSERT` AS `insert_latency`,`pst`.`COUNT_UPDATE` AS `rows_updated`,`pst`.`SUM_TIMER_UPDATE` AS `update_latency`,`pst`.`COUNT_DELETE` AS `rows_deleted`,`pst`.`SUM_TIMER_DELETE` AS `delete_latency`,`fsbi`.`count_read` AS `io_read_requests`,`fsbi`.`sum_number_of_bytes_read` AS `io_read`,`fsbi`.`sum_timer_read` AS `io_read_latency`,`fsbi`.`count_write` AS `io_write_requests`,`fsbi`.`sum_number_of_bytes_write` AS `io_write`,`fsbi`.`sum_timer_write` AS `io_write_latency`,`fsbi`.`count_misc` AS `io_misc_requests`,`fsbi`.`sum_timer_misc` AS `io_misc_latency` from (`performance_schema`.`table_io_waits_summary_by_table` `pst` left join `x$ps_schema_table_statistics_io` `fsbi` on(((`pst`.`OBJECT_SCHEMA` = `fsbi`.`table_schema`) and (`pst`.`OBJECT_NAME` = `fsbi`.`table_name`)))) order by `pst`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$schema_table_statistics_with_buffer`
--

/*!50001 DROP VIEW IF EXISTS `x$schema_table_statistics_with_buffer`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$schema_table_statistics_with_buffer` (`table_schema`,`table_name`,`rows_fetched`,`fetch_latency`,`rows_inserted`,`insert_latency`,`rows_updated`,`update_latency`,`rows_deleted`,`delete_latency`,`io_read_requests`,`io_read`,`io_read_latency`,`io_write_requests`,`io_write`,`io_write_latency`,`io_misc_requests`,`io_misc_latency`,`innodb_buffer_allocated`,`innodb_buffer_data`,`innodb_buffer_free`,`innodb_buffer_pages`,`innodb_buffer_pages_hashed`,`innodb_buffer_pages_old`,`innodb_buffer_rows_cached`) AS select `pst`.`OBJECT_SCHEMA` AS `table_schema`,`pst`.`OBJECT_NAME` AS `table_name`,`pst`.`COUNT_FETCH` AS `rows_fetched`,`pst`.`SUM_TIMER_FETCH` AS `fetch_latency`,`pst`.`COUNT_INSERT` AS `rows_inserted`,`pst`.`SUM_TIMER_INSERT` AS `insert_latency`,`pst`.`COUNT_UPDATE` AS `rows_updated`,`pst`.`SUM_TIMER_UPDATE` AS `update_latency`,`pst`.`COUNT_DELETE` AS `rows_deleted`,`pst`.`SUM_TIMER_DELETE` AS `delete_latency`,`fsbi`.`count_read` AS `io_read_requests`,`fsbi`.`sum_number_of_bytes_read` AS `io_read`,`fsbi`.`sum_timer_read` AS `io_read_latency`,`fsbi`.`count_write` AS `io_write_requests`,`fsbi`.`sum_number_of_bytes_write` AS `io_write`,`fsbi`.`sum_timer_write` AS `io_write_latency`,`fsbi`.`count_misc` AS `io_misc_requests`,`fsbi`.`sum_timer_misc` AS `io_misc_latency`,`ibp`.`allocated` AS `innodb_buffer_allocated`,`ibp`.`data` AS `innodb_buffer_data`,(`ibp`.`allocated` - `ibp`.`data`) AS `innodb_buffer_free`,`ibp`.`pages` AS `innodb_buffer_pages`,`ibp`.`pages_hashed` AS `innodb_buffer_pages_hashed`,`ibp`.`pages_old` AS `innodb_buffer_pages_old`,`ibp`.`rows_cached` AS `innodb_buffer_rows_cached` from ((`performance_schema`.`table_io_waits_summary_by_table` `pst` left join `x$ps_schema_table_statistics_io` `fsbi` on(((`pst`.`OBJECT_SCHEMA` = `fsbi`.`table_schema`) and (`pst`.`OBJECT_NAME` = `fsbi`.`table_name`)))) left join `x$innodb_buffer_stats_by_table` `ibp` on(((`pst`.`OBJECT_SCHEMA` = `ibp`.`object_schema`) and (`pst`.`OBJECT_NAME` = `ibp`.`object_name`)))) order by `pst`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$schema_tables_with_full_table_scans`
--

/*!50001 DROP VIEW IF EXISTS `x$schema_tables_with_full_table_scans`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$schema_tables_with_full_table_scans` (`object_schema`,`object_name`,`rows_full_scanned`,`latency`) AS select `performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_SCHEMA` AS `object_schema`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_NAME` AS `object_name`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_READ` AS `rows_full_scanned`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_WAIT` AS `latency` from `performance_schema`.`table_io_waits_summary_by_index_usage` where ((`performance_schema`.`table_io_waits_summary_by_index_usage`.`INDEX_NAME` is null) and (`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_READ` > 0)) order by `performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_READ` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$session`
--

/*!50001 DROP VIEW IF EXISTS `x$session`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$session` AS select `x$processlist`.`thd_id` AS `thd_id`,`x$processlist`.`conn_id` AS `conn_id`,`x$processlist`.`user` AS `user`,`x$processlist`.`db` AS `db`,`x$processlist`.`command` AS `command`,`x$processlist`.`state` AS `state`,`x$processlist`.`time` AS `time`,`x$processlist`.`current_statement` AS `current_statement`,`x$processlist`.`execution_engine` AS `execution_engine`,`x$processlist`.`statement_latency` AS `statement_latency`,`x$processlist`.`progress` AS `progress`,`x$processlist`.`lock_latency` AS `lock_latency`,`x$processlist`.`cpu_latency` AS `cpu_latency`,`x$processlist`.`rows_examined` AS `rows_examined`,`x$processlist`.`rows_sent` AS `rows_sent`,`x$processlist`.`rows_affected` AS `rows_affected`,`x$processlist`.`tmp_tables` AS `tmp_tables`,`x$processlist`.`tmp_disk_tables` AS `tmp_disk_tables`,`x$processlist`.`full_scan` AS `full_scan`,`x$processlist`.`last_statement` AS `last_statement`,`x$processlist`.`last_statement_latency` AS `last_statement_latency`,`x$processlist`.`current_memory` AS `current_memory`,`x$processlist`.`last_wait` AS `last_wait`,`x$processlist`.`last_wait_latency` AS `last_wait_latency`,`x$processlist`.`source` AS `source`,`x$processlist`.`trx_latency` AS `trx_latency`,`x$processlist`.`trx_state` AS `trx_state`,`x$processlist`.`trx_autocommit` AS `trx_autocommit`,`x$processlist`.`pid` AS `pid`,`x$processlist`.`program_name` AS `program_name` from `x$processlist` where ((`x$processlist`.`conn_id` is not null) and (`x$processlist`.`command` <> 'Daemon')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$statement_analysis`
--

/*!50001 DROP VIEW IF EXISTS `x$statement_analysis`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$statement_analysis` (`query`,`db`,`full_scan`,`exec_count`,`exec_secondary_count`,`err_count`,`warn_count`,`total_latency`,`max_latency`,`avg_latency`,`lock_latency`,`cpu_latency`,`rows_sent`,`rows_sent_avg`,`rows_examined`,`rows_examined_avg`,`rows_affected`,`rows_affected_avg`,`tmp_tables`,`tmp_disk_tables`,`rows_sorted`,`sort_merge_passes`,`max_controlled_memory`,`max_total_memory`,`digest`,`first_seen`,`last_seen`) AS select `performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT` AS `query`,`performance_schema`.`events_statements_summary_by_digest`.`SCHEMA_NAME` AS `db`,if(((`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_GOOD_INDEX_USED` > 0) or (`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_INDEX_USED` > 0)),'*','') AS `full_scan`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR` AS `exec_count`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_SECONDARY` AS `exec_secondary_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ERRORS` AS `err_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_WARNINGS` AS `warn_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_statements_summary_by_digest`.`MAX_TIMER_WAIT` AS `max_latency`,`performance_schema`.`events_statements_summary_by_digest`.`AVG_TIMER_WAIT` AS `avg_latency`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_LOCK_TIME` AS `lock_latency`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CPU_TIME` AS `cpu_latency`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_SENT` AS `rows_sent`,round(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_SENT` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0),0) AS `rows_sent_avg`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_EXAMINED` AS `rows_examined`,round(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_EXAMINED` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0),0) AS `rows_examined_avg`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_AFFECTED` AS `rows_affected`,round(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_AFFECTED` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0),0) AS `rows_affected_avg`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES` AS `tmp_tables`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_DISK_TABLES` AS `tmp_disk_tables`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_ROWS` AS `rows_sorted`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_MERGE_PASSES` AS `sort_merge_passes`,`performance_schema`.`events_statements_summary_by_digest`.`MAX_CONTROLLED_MEMORY` AS `max_controlled_memory`,`performance_schema`.`events_statements_summary_by_digest`.`MAX_TOTAL_MEMORY` AS `max_total_memory`,`performance_schema`.`events_statements_summary_by_digest`.`DIGEST` AS `digest`,`performance_schema`.`events_statements_summary_by_digest`.`FIRST_SEEN` AS `first_seen`,`performance_schema`.`events_statements_summary_by_digest`.`LAST_SEEN` AS `last_seen` from `performance_schema`.`events_statements_summary_by_digest` order by `performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$statements_with_errors_or_warnings`
--

/*!50001 DROP VIEW IF EXISTS `x$statements_with_errors_or_warnings`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$statements_with_errors_or_warnings` (`query`,`db`,`exec_count`,`errors`,`error_pct`,`warnings`,`warning_pct`,`first_seen`,`last_seen`,`digest`) AS select `performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT` AS `query`,`performance_schema`.`events_statements_summary_by_digest`.`SCHEMA_NAME` AS `db`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR` AS `exec_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ERRORS` AS `errors`,(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ERRORS` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0) * 100) AS `error_pct`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_WARNINGS` AS `warnings`,(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_WARNINGS` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0) * 100) AS `warning_pct`,`performance_schema`.`events_statements_summary_by_digest`.`FIRST_SEEN` AS `first_seen`,`performance_schema`.`events_statements_summary_by_digest`.`LAST_SEEN` AS `last_seen`,`performance_schema`.`events_statements_summary_by_digest`.`DIGEST` AS `digest` from `performance_schema`.`events_statements_summary_by_digest` where ((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ERRORS` > 0) or (`performance_schema`.`events_statements_summary_by_digest`.`SUM_WARNINGS` > 0)) order by `performance_schema`.`events_statements_summary_by_digest`.`SUM_ERRORS` desc,`performance_schema`.`events_statements_summary_by_digest`.`SUM_WARNINGS` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$statements_with_full_table_scans`
--

/*!50001 DROP VIEW IF EXISTS `x$statements_with_full_table_scans`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$statements_with_full_table_scans` (`query`,`db`,`exec_count`,`total_latency`,`no_index_used_count`,`no_good_index_used_count`,`no_index_used_pct`,`rows_sent`,`rows_examined`,`rows_sent_avg`,`rows_examined_avg`,`first_seen`,`last_seen`,`digest`) AS select `performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT` AS `query`,`performance_schema`.`events_statements_summary_by_digest`.`SCHEMA_NAME` AS `db`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR` AS `exec_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_INDEX_USED` AS `no_index_used_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_GOOD_INDEX_USED` AS `no_good_index_used_count`,round((ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_INDEX_USED` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0) * 100),0) AS `no_index_used_pct`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_SENT` AS `rows_sent`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_EXAMINED` AS `rows_examined`,round((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_SENT` / `performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`),0) AS `rows_sent_avg`,round((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_EXAMINED` / `performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`),0) AS `rows_examined_avg`,`performance_schema`.`events_statements_summary_by_digest`.`FIRST_SEEN` AS `first_seen`,`performance_schema`.`events_statements_summary_by_digest`.`LAST_SEEN` AS `last_seen`,`performance_schema`.`events_statements_summary_by_digest`.`DIGEST` AS `digest` from `performance_schema`.`events_statements_summary_by_digest` where (((`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_INDEX_USED` > 0) or (`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_GOOD_INDEX_USED` > 0)) and (not((`performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT` like 'SHOW%')))) order by round((ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_INDEX_USED` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0) * 100),0) desc,`performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$statements_with_runtimes_in_95th_percentile`
--

/*!50001 DROP VIEW IF EXISTS `x$statements_with_runtimes_in_95th_percentile`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$statements_with_runtimes_in_95th_percentile` (`query`,`db`,`full_scan`,`exec_count`,`err_count`,`warn_count`,`total_latency`,`max_latency`,`avg_latency`,`rows_sent`,`rows_sent_avg`,`rows_examined`,`rows_examined_avg`,`first_seen`,`last_seen`,`digest`) AS select `stmts`.`DIGEST_TEXT` AS `query`,`stmts`.`SCHEMA_NAME` AS `db`,if(((`stmts`.`SUM_NO_GOOD_INDEX_USED` > 0) or (`stmts`.`SUM_NO_INDEX_USED` > 0)),'*','') AS `full_scan`,`stmts`.`COUNT_STAR` AS `exec_count`,`stmts`.`SUM_ERRORS` AS `err_count`,`stmts`.`SUM_WARNINGS` AS `warn_count`,`stmts`.`SUM_TIMER_WAIT` AS `total_latency`,`stmts`.`MAX_TIMER_WAIT` AS `max_latency`,`stmts`.`AVG_TIMER_WAIT` AS `avg_latency`,`stmts`.`SUM_ROWS_SENT` AS `rows_sent`,round(ifnull((`stmts`.`SUM_ROWS_SENT` / nullif(`stmts`.`COUNT_STAR`,0)),0),0) AS `rows_sent_avg`,`stmts`.`SUM_ROWS_EXAMINED` AS `rows_examined`,round(ifnull((`stmts`.`SUM_ROWS_EXAMINED` / nullif(`stmts`.`COUNT_STAR`,0)),0),0) AS `rows_examined_avg`,`stmts`.`FIRST_SEEN` AS `first_seen`,`stmts`.`LAST_SEEN` AS `last_seen`,`stmts`.`DIGEST` AS `digest` from (`performance_schema`.`events_statements_summary_by_digest` `stmts` join `x$ps_digest_95th_percentile_by_avg_us` `top_percentile` on((round((`stmts`.`AVG_TIMER_WAIT` / 1000000),0) >= `top_percentile`.`avg_us`))) order by `stmts`.`AVG_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$statements_with_sorting`
--

/*!50001 DROP VIEW IF EXISTS `x$statements_with_sorting`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$statements_with_sorting` (`query`,`db`,`exec_count`,`total_latency`,`sort_merge_passes`,`avg_sort_merges`,`sorts_using_scans`,`sort_using_range`,`rows_sorted`,`avg_rows_sorted`,`first_seen`,`last_seen`,`digest`) AS select `performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT` AS `query`,`performance_schema`.`events_statements_summary_by_digest`.`SCHEMA_NAME` AS `db`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR` AS `exec_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_MERGE_PASSES` AS `sort_merge_passes`,round(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_MERGE_PASSES` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0),0) AS `avg_sort_merges`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_SCAN` AS `sorts_using_scans`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_RANGE` AS `sort_using_range`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_ROWS` AS `rows_sorted`,round(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_ROWS` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0),0) AS `avg_rows_sorted`,`performance_schema`.`events_statements_summary_by_digest`.`FIRST_SEEN` AS `first_seen`,`performance_schema`.`events_statements_summary_by_digest`.`LAST_SEEN` AS `last_seen`,`performance_schema`.`events_statements_summary_by_digest`.`DIGEST` AS `digest` from `performance_schema`.`events_statements_summary_by_digest` where (`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_ROWS` > 0) order by `performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$statements_with_temp_tables`
--

/*!50001 DROP VIEW IF EXISTS `x$statements_with_temp_tables`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$statements_with_temp_tables` (`query`,`db`,`exec_count`,`total_latency`,`memory_tmp_tables`,`disk_tmp_tables`,`avg_tmp_tables_per_query`,`tmp_tables_to_disk_pct`,`first_seen`,`last_seen`,`digest`) AS select `performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT` AS `query`,`performance_schema`.`events_statements_summary_by_digest`.`SCHEMA_NAME` AS `db`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR` AS `exec_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES` AS `memory_tmp_tables`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_DISK_TABLES` AS `disk_tmp_tables`,round(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0),0) AS `avg_tmp_tables_per_query`,round((ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_DISK_TABLES` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES`,0)),0) * 100),0) AS `tmp_tables_to_disk_pct`,`performance_schema`.`events_statements_summary_by_digest`.`FIRST_SEEN` AS `first_seen`,`performance_schema`.`events_statements_summary_by_digest`.`LAST_SEEN` AS `last_seen`,`performance_schema`.`events_statements_summary_by_digest`.`DIGEST` AS `digest` from `performance_schema`.`events_statements_summary_by_digest` where (`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES` > 0) order by `performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_DISK_TABLES` desc,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$user_summary`
--

/*!50001 DROP VIEW IF EXISTS `x$user_summary`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$user_summary` (`user`,`statements`,`statement_latency`,`statement_avg_latency`,`table_scans`,`file_ios`,`file_io_latency`,`current_connections`,`total_connections`,`unique_hosts`,`current_memory`,`total_memory_allocated`) AS select if((`performance_schema`.`accounts`.`USER` is null),'background',`performance_schema`.`accounts`.`USER`) AS `user`,sum(`stmt`.`total`) AS `statements`,sum(`stmt`.`total_latency`) AS `statement_latency`,ifnull((sum(`stmt`.`total_latency`) / nullif(sum(`stmt`.`total`),0)),0) AS `statement_avg_latency`,sum(`stmt`.`full_scans`) AS `table_scans`,sum(`io`.`ios`) AS `file_ios`,sum(`io`.`io_latency`) AS `file_io_latency`,sum(`performance_schema`.`accounts`.`CURRENT_CONNECTIONS`) AS `current_connections`,sum(`performance_schema`.`accounts`.`TOTAL_CONNECTIONS`) AS `total_connections`,count(distinct `performance_schema`.`accounts`.`HOST`) AS `unique_hosts`,sum(`mem`.`current_allocated`) AS `current_memory`,sum(`mem`.`total_allocated`) AS `total_memory_allocated` from (((`performance_schema`.`accounts` left join `x$user_summary_by_statement_latency` `stmt` on((if((`performance_schema`.`accounts`.`USER` is null),'background',`performance_schema`.`accounts`.`USER`) = `stmt`.`user`))) left join `x$user_summary_by_file_io` `io` on((if((`performance_schema`.`accounts`.`USER` is null),'background',`performance_schema`.`accounts`.`USER`) = `io`.`user`))) left join `x$memory_by_user_by_current_bytes` `mem` on((if((`performance_schema`.`accounts`.`USER` is null),'background',`performance_schema`.`accounts`.`USER`) = `mem`.`user`))) group by if((`performance_schema`.`accounts`.`USER` is null),'background',`performance_schema`.`accounts`.`USER`) order by sum(`stmt`.`total_latency`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$user_summary_by_file_io`
--

/*!50001 DROP VIEW IF EXISTS `x$user_summary_by_file_io`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$user_summary_by_file_io` (`user`,`ios`,`io_latency`) AS select if((`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`) AS `user`,sum(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`COUNT_STAR`) AS `ios`,sum(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`) AS `io_latency` from `performance_schema`.`events_waits_summary_by_user_by_event_name` where (`performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` like 'wait/io/file/%') group by if((`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`) order by sum(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$user_summary_by_file_io_type`
--

/*!50001 DROP VIEW IF EXISTS `x$user_summary_by_file_io_type`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$user_summary_by_file_io_type` (`user`,`event_name`,`total`,`latency`,`max_latency`) AS select if((`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`) AS `user`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` AS `event_name`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` AS `latency`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`MAX_TIMER_WAIT` AS `max_latency` from `performance_schema`.`events_waits_summary_by_user_by_event_name` where ((`performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` like 'wait/io/file%') and (`performance_schema`.`events_waits_summary_by_user_by_event_name`.`COUNT_STAR` > 0)) order by if((`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`),`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$user_summary_by_stages`
--

/*!50001 DROP VIEW IF EXISTS `x$user_summary_by_stages`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$user_summary_by_stages` (`user`,`event_name`,`total`,`total_latency`,`avg_latency`) AS select if((`performance_schema`.`events_stages_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_stages_summary_by_user_by_event_name`.`USER`) AS `user`,`performance_schema`.`events_stages_summary_by_user_by_event_name`.`EVENT_NAME` AS `event_name`,`performance_schema`.`events_stages_summary_by_user_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`events_stages_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_stages_summary_by_user_by_event_name`.`AVG_TIMER_WAIT` AS `avg_latency` from `performance_schema`.`events_stages_summary_by_user_by_event_name` where (`performance_schema`.`events_stages_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` <> 0) order by if((`performance_schema`.`events_stages_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_stages_summary_by_user_by_event_name`.`USER`),`performance_schema`.`events_stages_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$user_summary_by_statement_latency`
--

/*!50001 DROP VIEW IF EXISTS `x$user_summary_by_statement_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$user_summary_by_statement_latency` (`user`,`total`,`total_latency`,`max_latency`,`lock_latency`,`cpu_latency`,`rows_sent`,`rows_examined`,`rows_affected`,`full_scans`) AS select if((`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`) AS `user`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`COUNT_STAR`) AS `total`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_LOCK_TIME`) AS `lock_latency`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_CPU_TIME`) AS `cpu_latency`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_SENT`) AS `rows_sent`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_EXAMINED`) AS `rows_examined`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_AFFECTED`) AS `rows_affected`,(sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_NO_INDEX_USED`) + sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_NO_GOOD_INDEX_USED`)) AS `full_scans` from `performance_schema`.`events_statements_summary_by_user_by_event_name` group by if((`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`) order by sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$user_summary_by_statement_type`
--

/*!50001 DROP VIEW IF EXISTS `x$user_summary_by_statement_type`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$user_summary_by_statement_type` (`user`,`statement`,`total`,`total_latency`,`max_latency`,`lock_latency`,`cpu_latency`,`rows_sent`,`rows_examined`,`rows_affected`,`full_scans`) AS select if((`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`) AS `user`,substring_index(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`EVENT_NAME`,'/',-(1)) AS `statement`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`MAX_TIMER_WAIT` AS `max_latency`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_LOCK_TIME` AS `lock_latency`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_CPU_TIME` AS `cpu_latency`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_SENT` AS `rows_sent`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_EXAMINED` AS `rows_examined`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_AFFECTED` AS `rows_affected`,(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_NO_INDEX_USED` + `performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_NO_GOOD_INDEX_USED`) AS `full_scans` from `performance_schema`.`events_statements_summary_by_user_by_event_name` where (`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` <> 0) order by if((`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`),`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$wait_classes_global_by_avg_latency`
--

/*!50001 DROP VIEW IF EXISTS `x$wait_classes_global_by_avg_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$wait_classes_global_by_avg_latency` (`event_class`,`total`,`total_latency`,`min_latency`,`avg_latency`,`max_latency`) AS select substring_index(`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME`,'/',3) AS `event_class`,sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`) AS `total`,sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,min(`performance_schema`.`events_waits_summary_global_by_event_name`.`MIN_TIMER_WAIT`) AS `min_latency`,ifnull((sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) / nullif(sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`),0)),0) AS `avg_latency`,max(`performance_schema`.`events_waits_summary_global_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency` from `performance_schema`.`events_waits_summary_global_by_event_name` where ((`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT` > 0) and (`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME` <> 'idle')) group by `event_class` order by ifnull((sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) / nullif(sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`),0)),0) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$wait_classes_global_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `x$wait_classes_global_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$wait_classes_global_by_latency` (`event_class`,`total`,`total_latency`,`min_latency`,`avg_latency`,`max_latency`) AS select substring_index(`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME`,'/',3) AS `event_class`,sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`) AS `total`,sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,min(`performance_schema`.`events_waits_summary_global_by_event_name`.`MIN_TIMER_WAIT`) AS `min_latency`,ifnull((sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) / nullif(sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`),0)),0) AS `avg_latency`,max(`performance_schema`.`events_waits_summary_global_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency` from `performance_schema`.`events_waits_summary_global_by_event_name` where ((`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT` > 0) and (`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME` <> 'idle')) group by substring_index(`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME`,'/',3) order by sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$waits_by_host_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `x$waits_by_host_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$waits_by_host_by_latency` (`host`,`event`,`total`,`total_latency`,`avg_latency`,`max_latency`) AS select if((`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`) AS `host`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`EVENT_NAME` AS `event`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`AVG_TIMER_WAIT` AS `avg_latency`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`MAX_TIMER_WAIT` AS `max_latency` from `performance_schema`.`events_waits_summary_by_host_by_event_name` where ((`performance_schema`.`events_waits_summary_by_host_by_event_name`.`EVENT_NAME` <> 'idle') and (`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` > 0)) order by if((`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`),`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$waits_by_user_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `x$waits_by_user_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$waits_by_user_by_latency` (`user`,`event`,`total`,`total_latency`,`avg_latency`,`max_latency`) AS select if((`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`) AS `user`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` AS `event`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`AVG_TIMER_WAIT` AS `avg_latency`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`MAX_TIMER_WAIT` AS `max_latency` from `performance_schema`.`events_waits_summary_by_user_by_event_name` where ((`performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` <> 'idle') and (`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is not null) and (`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` > 0)) order by if((`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is null),'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`),`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$waits_global_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `x$waits_global_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$waits_global_by_latency` (`events`,`total`,`total_latency`,`avg_latency`,`max_latency`) AS select `performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME` AS `event`,`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_waits_summary_global_by_event_name`.`AVG_TIMER_WAIT` AS `avg_latency`,`performance_schema`.`events_waits_summary_global_by_event_name`.`MAX_TIMER_WAIT` AS `max_latency` from `performance_schema`.`events_waits_summary_global_by_event_name` where ((`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME` <> 'idle') and (`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT` > 0)) order by `performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-11 18:06:49
-- MySQL dump 10.13  Distrib 8.0.29, for Linux (x86_64)
--
-- Host: localhost    Database: registration_form
-- ------------------------------------------------------
-- Server version	8.0.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `user_info`
--

DROP TABLE IF EXISTS `user_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_info` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `activation_key` varchar(45) DEFAULT NULL,
  `isActivated` varchar(45) DEFAULT '0',
  `registered_time` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_info`
--

LOCK TABLES `user_info` WRITE;
/*!40000 ALTER TABLE `user_info` DISABLE KEYS */;
INSERT INTO `user_info` VALUES (1,'jaini','jaini@gmail.com','1234',NULL,NULL,'2023-03-07 05:26:27'),(2,'jaini','j@gmail.com','12',NULL,NULL,'2023-03-07 05:45:18'),(3,'nikita','nikita@gmail.com','13',NULL,NULL,'2023-03-07 05:47:51'),(4,'nikita','nikita@gmail.com','13',NULL,NULL,'2023-03-07 05:48:09'),(5,'Khushi','khushi@gmail.com','11',NULL,NULL,'2023-03-07 05:54:09'),(6,'jaini','j@gmail.com','12',NULL,NULL,'2023-03-07 06:02:51'),(7,'nikita','j@gmail.com','12',NULL,NULL,'2023-03-07 06:09:01'),(8,'nikita','j@gmail.com','12',NULL,NULL,'2023-03-07 06:12:18'),(9,'vijay','vijay@gmail.com','[object Promise]',NULL,NULL,'2023-03-07 06:47:45'),(10,'vijay','vijay@gmail.com','$2a$10$IZShSHD.G200NP1MRMEeQuvL6OilqAJOdIT0S4qe9sO4YOj9q3Ccm',NULL,NULL,'2023-03-07 06:50:31'),(11,'Naresh','n@gmail.com','$2a$10$ByOWkAp1BddVTSApejMPrOyYgpvqYWROX6041ixyYdUmrrsRvmgVe',NULL,NULL,'2023-03-07 07:59:41'),(12,'user','user@gmail.com','$2a$10$Fl33CpqlqIWsvhrg23qZnuNsqJMkCpCt5Oj6UWY9Oc2s.2FItwhQO',NULL,NULL,'2023-03-07 10:20:47'),(13,'users','uses@gmail.com','$2a$10$3x6ThTo6Bm6gTKc/DuoQlOPqVkWLHv1PJb1F9VRMxrtcyhh3Rt5Xm',NULL,NULL,'2023-03-07 12:56:12'),(14,'nisarg','nisarg@gmail.com','$2a$10$2bNiJ..RrhmyKOHSfvs1Du/OIfxKps9h2xFJuafhVxjb9DufzBmtS',NULL,NULL,'2023-03-07 13:24:57'),(15,'','','$2a$10$lj58LxkD52KimGndcHUZrOatBqCIwo.8PkHjKPQ33gA1LuO.TZTHK',NULL,NULL,'2023-03-09 04:51:08'),(16,'om','om@gmail.com','$2a$10$cAC9jWVX6v.3NGJdq8g3VuwbadaZnqwJZCY7OOXqH7lR8fXVOLdZq',NULL,NULL,'2023-03-09 05:12:24'),(17,'priya','priya@gmail.com','$2a$10$ttuEx/Vq9sB.6UkDVYjXY.alp4lbkfGqffnEhzLkeGsQfa6HcQ4E.',NULL,NULL,'2023-03-09 05:15:03'),(18,'Jsi','jsi@gmail.com','$2a$10$WOWVusesZhPbmPtDVeWfru6SESoYX5.CB8NRLTO29HQ.kmxAblnra',NULL,NULL,'2023-03-09 09:15:23'),(19,'tama','tama@gmail.com','$2a$10$6LTiRZydtJMmmRQQnZL7lOA.6.RtPHM6NVrufd70eCYF51qqUr2j.',NULL,NULL,'2023-03-09 09:55:01'),(20,'xfgh','de@gmail.com','$2a$10$XxS0UmiJhd8X2H1sOFFrROx1ZEysfRJurK6Q6Y/CKi9tLflFpTQUu',NULL,NULL,'2023-03-09 10:04:21'),(21,'be','sad@gmail.com','$2a$10$4h//1aki2JZj/N2ShkzHXOoNbnPiUbDmCPYwlM/VV0JS1D.P0zrvy',NULL,NULL,'2023-03-09 10:06:05'),(22,'om','om@gmail.com','$2a$10$UO1YBnID4Ra7HnfSSBN/0eJenDoQIRtqd8nfSdFaQH4RL0fxwoygu',NULL,NULL,'2023-03-09 11:36:08'),(23,'Dhruv','dhruv@gmail.com','$2a$10$RoFltfjvIbRs7vRnFZohxOESU3X1J2/mvp6DxzPgf7W4RXrMmTD8S','4cf5vk6uo6q',NULL,'2023-03-09 12:18:46'),(24,'Dhruvi','dhruvi@gmail.com','$2a$10$4mYaUELCdSIRrL7XDwakXODwtV1.CxCj8.8HsDMcupJ8ZKaagyAKG','qtpvzeg1lpp','1','2023-03-09 12:21:15'),(25,'Dhruvin','dhruvin@gmail.com','$2a$10$K9rtSKNRBbjN/POwOEeNWOxNm0sKq0PJ0rqAjCyQZ8XKTmKL38AVK','95c6frzno68','1','2023-03-09 12:27:48'),(26,'Dhruvinu','dhruvinu@gmail.com','$2a$10$vjkhIHepEZyWD1qCoilc7.pL1oJsFcWWwKzAsiAehBn58WlPaGYK6','8ef6t5pedbc','1','2023-03-09 12:40:05'),(27,'khush','khush@gmail.com','$2a$10$LWd6R0QlxQeBmUnLZpAe/OiNVumHZQ0yK9ia0v0TewhCp8oaQLo2K','ozd6jfr3uvj','1','2023-03-09 12:42:26'),(28,'jainika','jainika12@gmail.com','$2a$10$8rId5iaomb4cfV2QGwKYyekXFP/Qor0N1sUnUpoFHMF/fr4B4whvi','kvbj7eo3p4l','1','2023-03-09 12:49:07'),(29,'kiran','kiran@gmail.com','$2a$10$ckDn2SiEWPX2symVZeojB.1O5rFOzG6Xb4AilLqJ020lBoKyB2bRW','4b4gns0zpiy','1','2023-03-09 13:23:07'),(30,'dasd','vijaydasd@gmail.com','$2a$10$fcpjSeMVm5pMGQrGtPLQY.rG.F1y110ccTfsC0wK3CMb.ERA1OT0G','41m5j3m7cto','0','2023-03-10 05:17:43'),(31,'Hinal','hinal@gmail.com','$2a$10$8XbjDqzbdX/RpMyjtnBpG.P6gJsz1/u/be8gVKB3QSfVE2OwcNSaS','bm451lsfz5a','1','2023-03-10 11:37:07'),(32,'jenifer','jenifer@gmail.com','$2a$10$8hIgRpD4GSFqO4LpBYNlU.zMnvD/CMFnp9hDwt7cTMh78bj7VRXzm','fmq33fofaoq','1','2023-03-10 11:57:53'),(33,'nency','nency@gmail.com','$2a$10$J3glvc/jJypve0hvlERPR.9BXICzjheEUdwpVx9ZchwtqCkUSCHKi','9texyx5wp49','1','2023-03-10 12:00:31');
/*!40000 ALTER TABLE `user_info` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-11 18:06:49
-- MySQL dump 10.13  Distrib 8.0.29, for Linux (x86_64)
--
-- Host: localhost    Database: student_express
-- ------------------------------------------------------
-- Server version	8.0.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `student_basicDetails`
--

DROP TABLE IF EXISTS `student_basicDetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_basicDetails` (
  `stud_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(30) DEFAULT NULL,
  `last_name` varchar(30) DEFAULT NULL,
  `dob` varchar(20) DEFAULT NULL,
  `college` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `contact_number` varchar(10) DEFAULT NULL,
  `mail_id` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`stud_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1501 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_basicDetails`
--

LOCK TABLES `student_basicDetails` WRITE;
/*!40000 ALTER TABLE `student_basicDetails` DISABLE KEYS */;
INSERT INTO `student_basicDetails` VALUES (1,'Adain','Bhandari','16/4/2002','GEC Gandhinagar','Vadodara','9859191591','Adain92@gmail.com'),(2,'Ibrahim','Raval','19/9/2002','GMIT Bhavnagar','The Dangs','2856152292','Ibrahim75@gmail.com'),(3,'Carrick','Panchal','22/2/2002','GEC Modasa','Mehsana','7892348126','Carrick43@gmail.com'),(4,'Angel','Mistry','23/3/2001','GEC Bhavnagar','Navsari','7729184193','Angel97@gmail.com'),(5,'Apisai','Panchal','7/5/2001','GMIT Bhavnagar','Kheda','9194695656','Apisai58@gmail.com'),(6,'Azaan','Mistry','4/3/1998','GIT Gandhinagar','Patan','8845511465','Azaan68@gmail.com'),(7,'Callun','Hingu','22/2/2001','GEC Gandhinagar','Amreli district','5576241677','Callun82@gmail.com'),(8,'Cael','Joshi','9/10/2000','LJIET Ahmedabad','Surat','2162634593','Cael36@gmail.com'),(9,'Aryn','Kotadiya','26/11/2001','GEC Modasa','Surat','8155973662','Aryn96@gmail.com'),(10,'Gian','Banarjee','4/7/2002','GIT Gandhinagar','Junagadh','8222965853','Gian55@gmail.com'),(11,'Fabian','Prajapati','20/6/1998','GEC Gandhinagar','Amreli district','9467212977','Fabian83@gmail.com'),(12,'Declyan','Panchal','19/10/2002','GEC Modasa','Vyara','9597936128','Declyan81@gmail.com'),(13,'Conlon','Kotadiya','14/4/2001','GH Patel Anand','Vyara','4733325379','Conlon44@gmail.com'),(14,'Clyde','Chakrabarty','5/8/1998','LJIET Ahmedabad','Gandhinagar','9488311829','Clyde66@gmail.com'),(15,'Erdehan','Panchal','9/4/2001','GEC Gandhinagar','Navsari','6254687995','Erdehan37@gmail.com'),(16,'Havila','Rajodiya','13/5/1998','GEC Anand','Vadodara','4628136848','Havila93@gmail.com'),(17,'Garren','Shah','11/12/2002','GEC Gandhinagar','Valsad','1424164479','Garren39@gmail.com'),(18,'Gordon','Rajodiya','22/3/1999','LJIET Ahmedabad','Anand','5314645865','Gordon78@gmail.com'),(19,'CJ','Patel','20/9/2002','GMIT Bhavnagar','The Dangs','6982292179','CJ24@gmail.com'),(20,'Forbes','Bhandari','24/6/2001','GEC Gandhinagar','Navsari','2812925526','Forbes31@gmail.com'),(21,'Arunas','Bhandari','23/7/2002','GEC Gandhinagar','Mehsana','7159246245','Arunas58@gmail.com'),(22,'Coll','Suthar','13/6/1998','GIT Gandhinagar','Dahod','4974817349','Coll64@gmail.com'),(23,'Christian','Bhavsar','10/5/2002','GEC Anand','Gandhinagar','5561531482','Christian95@gmail.com'),(24,'Franko','Sanghvi','6/7/2000','LJIET Ahmedabad','Rajkot','5429673918','Franko95@gmail.com'),(25,'Derrie','Chudasma','6/4/1998','GEC Modasa','Gandhinagar','7842458833','Derrie61@gmail.com'),(26,'Geoffrey','Hingu','25/5/2002','GEC Anand','Dahod','4927459797','Geoffrey49@gmail.com'),(27,'Bohbi','Prajapati','18/1/2001','GMIT Bhavnagar','Amreli district','8426592173','Bohbi83@gmail.com'),(28,'Breogan','Chakrabarty','15/6/1998','GEC Bhavnagar','Vyara','6724467729','Breogan18@gmail.com'),(29,'Avinash','Hingu','2/9/2001','LJIET Ahmedabad','The Dangs','2635871221','Avinash11@gmail.com'),(30,'Amir','Mistry','10/8/2002','GH Patel Anand','Valsad','2242591138','Amir83@gmail.com'),(31,'Aref','Bhandari','26/11/1998','GH Patel Anand','The Dangs','8173372628','Aref19@gmail.com'),(32,'Derrie','Hingu','11/3/1998','GMIT Bhavnagar','Sabarkantha','3998528537','Derrie91@gmail.com'),(33,'AJ','Prajapati','13/3/1999','GEC Anand','Patan','1561746112','AJ49@gmail.com'),(34,'Arman','Sanghvi','21/12/1999','LJIET Ahmedabad','Valsad','9524649752','Arman36@gmail.com'),(35,'Bailie','Bhavsar','22/1/1998','GMIT Bhavnagar','Bharuch','7817234872','Bailie34@gmail.com'),(36,'Crombie','Prajapati','7/2/2000','GEC Modasa','Valsad','3656655196','Crombie47@gmail.com'),(37,'Bowie','Chudasma','1/11/1998','LJIET Ahmedabad','Banaskantha','3783535525','Bowie94@gmail.com'),(38,'Christopher','Chudasma','7/6/1998','GEC Bhavnagar','Gandhinagar','4283121285','Christopher54@gmail.com'),(39,'Abir','Sanghvi','23/5/2000','GH Patel Anand','Ahmedabad','8766899669','Abir73@gmail.com'),(40,'Danar','Barot','28/11/1999','GMIT Bhavnagar','Amreli district','9691357251','Danar54@gmail.com'),(41,'Aytug','Kotadiya','3/9/2002','GEC Modasa','Narmada','6568151319','Aytug22@gmail.com'),(42,'Ayrton','Joshi','11/7/2001','LJIET Ahmedabad','Gandhinagar','9395857216','Ayrton12@gmail.com'),(43,'Bohbi','Bhandari','16/3/2001','GEC Bhavnagar','Dahod','7442835316','Bohbi24@gmail.com'),(44,'Caden','Modi','27/7/2002','GEC Gandhinagar','Porbandar','8596364941','Caden71@gmail.com'),(45,'Ciaran','Sanghvi','20/11/2001','GMIT Bhavnagar','Anand','7342398797','Ciaran56@gmail.com'),(46,'Denton','Bhavsar','5/4/2002','GEC Bhavnagar','Gandhinagar','4259298265','Denton45@gmail.com'),(47,'Gideon','Joshi','6/4/2001','GIT Gandhinagar','Valsad','5962571588','Gideon43@gmail.com'),(48,'Daud','Bhandari','22/10/2001','LJIET Ahmedabad','Ahmedabad','8776878995','Daud66@gmail.com'),(49,'Finlay','Mehta','6/12/1999','GMIT Bhavnagar','The Dangs','5153476262','Finlay31@gmail.com'),(50,'Alessandro','Bhavsar','25/4/2001','GEC Gandhinagar','Surendranagar','4886323343','Alessandro81@gmail.com'),(51,'Conrad','Kotadiya','16/11/2000','GEC Bhavnagar','Patan','2563872951','Conrad88@gmail.com'),(52,'Aaron','Raval','6/5/2000','GEC Modasa','Bharuch','8523877847','Aaron19@gmail.com'),(53,'Cator','Sanghvi','13/2/1999','GEC Modasa','Rajkot','1545387155','Cator11@gmail.com'),(54,'Andreas','Suthar','25/11/2001','GIT Gandhinagar','Porbandar','8113378498','Andreas31@gmail.com'),(55,'Cain','Prajapati','14/7/1999','LJIET Ahmedabad','Jamnagar','2638644782','Cain64@gmail.com'),(56,'Arunas','Raval','27/7/2002','GEC Bhavnagar','Ahmedabad','2559859742','Arunas81@gmail.com'),(57,'Clement','Suthar','23/2/1999','GMIT Bhavnagar','Valsad','7199231276','Clement48@gmail.com'),(58,'Bjorn','Mistry','19/12/1999','GEC Bhavnagar','Dahod','2113719147','Bjorn44@gmail.com'),(59,'Anthony','Patel','19/5/2001','GEC Modasa','Sabarkantha','2491771559','Anthony98@gmail.com'),(60,'Campbell','Raval','23/12/2000','GEC Modasa','Kutch','6245285673','Campbell14@gmail.com'),(61,'Cain','Joshi','24/9/2002','GEC Gandhinagar','Rajkot','6291865423','Cain39@gmail.com'),(62,'Archibald','Joshi','19/10/2002','GEC Bhavnagar','Kheda','1576591633','Archibald87@gmail.com'),(63,'Domhnall','Suthar','15/1/1998','GEC Modasa','Junagadh','7637465795','Domhnall52@gmail.com'),(64,'Craig-James','Mistry','7/4/2001','GH Patel Anand','Kutch','2267231333','Craig-James21@gmail.com'),(65,'Airlie','Modi','1/7/2000','LJIET Ahmedabad','Dahod','8111489711','Airlie68@gmail.com'),(66,'Ahmed-Aziz','Panchal','10/5/2001','GEC Anand','Kutch','9239267792','Ahmed-Aziz16@gmail.com'),(67,'Evann','Shah','28/6/1999','GEC Gandhinagar','Panchmahal','8478658549','Evann21@gmail.com'),(68,'Ezekiel','Raval','25/5/2000','GEC Bhavnagar','Bharuch','2847873929','Ezekiel97@gmail.com'),(69,'Artem','Raval','7/10/1998','GIT Gandhinagar','Ahmedabad','7346347535','Artem75@gmail.com'),(70,'Antonyo','Sanghvi','9/11/1998','GH Patel Anand','Dahod','1332612778','Antonyo11@gmail.com'),(71,'Folarinwa','Bhavsar','2/3/2000','GMIT Bhavnagar','Surat','8396221978','Folarinwa53@gmail.com'),(72,'Attila','Bhavsar','23/1/2001','GH Patel Anand','Bharuch','6991448989','Attila48@gmail.com'),(73,'Dominick','Chudasma','10/9/1998','GH Patel Anand','The Dangs','5563436872','Dominick39@gmail.com'),(74,'Cohen','Kotadiya','23/5/2001','GEC Gandhinagar','The Dangs','4485886628','Cohen38@gmail.com'),(75,'Glen','Doshi','7/3/2000','LJIET Ahmedabad','Surat','2916682428','Glen63@gmail.com'),(76,'Caidan','Suthar','13/7/2001','GMIT Bhavnagar','Amreli district','2484231219','Caidan31@gmail.com'),(77,'Guang','Joshi','19/8/2000','GH Patel Anand','Anand','1211714434','Guang78@gmail.com'),(78,'Attila','Shah','14/3/2000','GEC Modasa','Navsari','8794319425','Attila22@gmail.com'),(79,'CJ','Prajapati','9/7/2002','GEC Bhavnagar','Bhavnagar','3843968884','CJ33@gmail.com'),(80,'Guang','Bhavsar','17/1/2002','GMIT Bhavnagar','Ahmedabad','4296132579','Guang56@gmail.com'),(81,'Douglas','Shah','22/8/2001','GIT Gandhinagar','Narmada','1152637628','Douglas32@gmail.com'),(82,'Findlay','Chakrabarty','12/1/2001','GH Patel Anand','Bharuch','2131511253','Findlay97@gmail.com'),(83,'Attila','Banarjee','28/12/1998','GEC Bhavnagar','Kutch','5725389917','Attila62@gmail.com'),(84,'Hope','Hingu','28/5/1998','GEC Modasa','Vyara','5689766736','Hope96@gmail.com'),(85,'Adegbolahan','Chakrabarty','8/3/2001','GEC Gandhinagar','Banaskantha','6531394195','Adegbolahan98@gmail.com'),(86,'Aodhan','Doshi','12/1/2001','GEC Gandhinagar','Gandhinagar','8864664941','Aodhan67@gmail.com'),(87,'Flint','Rajodiya','23/1/1998','GEC Anand','Vyara','5389839147','Flint93@gmail.com'),(88,'Aydin','Joshi','25/9/2002','GEC Anand','Anand','2397919858','Aydin69@gmail.com'),(89,'Hugh','Banarjee','20/11/2002','LJIET Ahmedabad','Surat','5532269877','Hugh21@gmail.com'),(90,'Ammar','Suthar','16/12/1998','GEC Gandhinagar','Valsad','4796423476','Ammar42@gmail.com'),(91,'Aleksandr','Sanghvi','14/2/2002','GEC Bhavnagar','Bhavnagar','8835559345','Aleksandr88@gmail.com'),(92,'Brendan','Modi','9/5/2002','GEC Modasa','Vadodara','2868848673','Brendan24@gmail.com'),(93,'Ardal','Sanghvi','11/1/2000','GEC Modasa','Mehsana','1932738256','Ardal18@gmail.com'),(94,'Diarmuid','Hingu','11/6/2001','GEC Bhavnagar','Amreli district','4789824111','Diarmuid23@gmail.com'),(95,'Akan','Barot','9/5/1999','GEC Modasa','Ahmedabad','4524766575','Akan46@gmail.com'),(96,'Cory','Doshi','27/7/2002','LJIET Ahmedabad','Bhavnagar','9828491822','Cory37@gmail.com'),(97,'Abdur-Rahman','Barot','18/2/1998','GEC Modasa','Ahmedabad','1439538538','Abdur-Rahman75@gmail.com'),(98,'Donnacha','Chakrabarty','7/10/2001','LJIET Ahmedabad','Jamnagar','5286886349','Donnacha11@gmail.com'),(99,'Dominic','Prajapati','22/6/1998','GEC Anand','Panchmahal','7538962652','Dominic93@gmail.com'),(100,'Athos-Carlos','Makwana','10/9/1999','GIT Gandhinagar','Surat','3522277472','Athos-Carlos49@gmail.com'),(101,'Conall','Raval','23/2/1999','LJIET Ahmedabad','Kheda','5674237226','Conall88@gmail.com'),(102,'Damian','Sanghvi','22/3/1999','LJIET Ahmedabad','The Dangs','4394422598','Damian71@gmail.com'),(103,'Dissanayake','Banarjee','26/9/1998','GH Patel Anand','Banaskantha','2378845134','Dissanayake42@gmail.com'),(104,'Fraser','Raval','5/9/2001','GIT Gandhinagar','Vyara','9173942928','Fraser71@gmail.com'),(105,'Fearghus','Rajodiya','26/5/2002','GEC Bhavnagar','Mehsana','6198312973','Fearghus27@gmail.com'),(106,'Havila','Makwana','1/2/2001','GEC Bhavnagar','Narmada','6372211516','Havila98@gmail.com'),(107,'Cruiz','Patel','4/8/1998','GH Patel Anand','Anand','1649862245','Cruiz27@gmail.com'),(108,'Cameron','Mehta','9/6/1999','GEC Modasa','Dahod','4559743866','Cameron42@gmail.com'),(109,'Abdul-Majeed','Bhavsar','13/2/2002','GEC Gandhinagar','Kutch','9988772195','Abdul-Majeed63@gmail.com'),(110,'Farhan','Sanghvi','16/9/2000','GEC Bhavnagar','Junagadh','7993884753','Farhan77@gmail.com'),(111,'Danyal','Hingu','11/8/2000','GMIT Bhavnagar','The Dangs','2834662959','Danyal25@gmail.com'),(112,'Ash','Hingu','19/6/2001','GEC Bhavnagar','Navsari','5392472773','Ash43@gmail.com'),(113,'Aiden-Jack','Barot','22/6/2000','GEC Modasa','Panchmahal','9841962725','Aiden-Jack45@gmail.com'),(114,'Dalton','Bhavsar','3/1/1999','GEC Bhavnagar','Surendranagar','5442478194','Dalton55@gmail.com'),(115,'Azeem','Mistry','10/11/2001','GIT Gandhinagar','Jamnagar','4383496185','Azeem79@gmail.com'),(116,'Aleksandr','Doshi','1/5/1998','LJIET Ahmedabad','Valsad','2282174426','Aleksandr64@gmail.com'),(117,'Cambell','Barot','24/10/2002','GH Patel Anand','Dahod','7316285149','Cambell51@gmail.com'),(118,'Blake','Bhavsar','8/11/2001','LJIET Ahmedabad','Anand','6716945398','Blake55@gmail.com'),(119,'Akram','Chakrabarty','13/9/2000','GH Patel Anand','Navsari','9811286558','Akram59@gmail.com'),(120,'Connolly','Barot','25/8/1998','LJIET Ahmedabad','Panchmahal','1576316331','Connolly47@gmail.com'),(121,'Dilano','Hingu','5/6/1998','GIT Gandhinagar','Jamnagar','8411985931','Dilano49@gmail.com'),(122,'Greig','Chudasma','20/1/1999','GEC Anand','Porbandar','1564685839','Greig97@gmail.com'),(123,'Heddle','Hingu','3/12/1998','GH Patel Anand','The Dangs','5297952629','Heddle67@gmail.com'),(124,'Dregan','Suthar','28/9/1999','GEC Gandhinagar','Narmada','4115381356','Dregan83@gmail.com'),(125,'Athol','Rajodiya','9/5/2001','GEC Bhavnagar','Narmada','6359913987','Athol42@gmail.com'),(126,'Eshan','Bhandari','24/8/2000','GMIT Bhavnagar','Vyara','9836518537','Eshan37@gmail.com'),(127,'Carter','Sanghvi','11/2/2002','GH Patel Anand','Navsari','6354716356','Carter69@gmail.com'),(128,'Alessandro','Bhavsar','12/6/2000','GEC Bhavnagar','Vyara','9968312497','Alessandro25@gmail.com'),(129,'Dilano','Rajodiya','18/10/1998','LJIET Ahmedabad','Patan','4254455447','Dilano79@gmail.com'),(130,'Alessio','Sanghvi','16/2/2001','GEC Modasa','Valsad','3718289468','Alessio66@gmail.com'),(131,'Gil','Bhavsar','24/11/2002','GEC Gandhinagar','Navsari','2524342992','Gil65@gmail.com'),(132,'Fynn','Rajodiya','2/10/1999','GEC Gandhinagar','Narmada','1939222363','Fynn55@gmail.com'),(133,'Eamon','Mistry','28/10/1998','GEC Bhavnagar','Valsad','1455748594','Eamon22@gmail.com'),(134,'Aleksandar','Bhavsar','3/12/2000','LJIET Ahmedabad','Jamnagar','3128792349','Aleksandar85@gmail.com'),(135,'Davis','Raval','13/12/2000','GIT Gandhinagar','Banaskantha','9765311858','Davis33@gmail.com'),(136,'Brydon','Mehta','24/2/1999','GEC Modasa','Amreli district','1683842342','Brydon49@gmail.com'),(137,'Etienne','Shah','7/10/2000','LJIET Ahmedabad','Banaskantha','3713762177','Etienne94@gmail.com'),(138,'Ayyub','Joshi','20/8/2000','LJIET Ahmedabad','Surendranagar','7981389373','Ayyub58@gmail.com'),(139,'Adam-James','Sanghvi','25/4/2002','GEC Anand','Ahmedabad','2465753464','Adam-James46@gmail.com'),(140,'Corran','Raval','19/7/2001','GEC Gandhinagar','Bhavnagar','2955287129','Corran23@gmail.com'),(141,'Arnab','Sanghvi','17/6/1999','GMIT Bhavnagar','Bhavnagar','2351158237','Arnab59@gmail.com'),(142,'Amos','Sanghvi','22/11/2000','GH Patel Anand','Valsad','6291726384','Amos96@gmail.com'),(143,'Fiachra','Makwana','23/5/2002','GEC Bhavnagar','Banaskantha','8648654723','Fiachra57@gmail.com'),(144,'Armaan','Raval','7/1/1998','GEC Gandhinagar','Surat','6534574989','Armaan64@gmail.com'),(145,'Forrest','Modi','2/7/2001','GEC Gandhinagar','Bharuch','3332655926','Forrest79@gmail.com'),(146,'Ace','Suthar','19/5/1998','GIT Gandhinagar','Navsari','5372914283','Ace94@gmail.com'),(147,'Dennan','Chudasma','10/3/1999','GEC Bhavnagar','Junagadh','1331931165','Dennan13@gmail.com'),(148,'Ciarian','Shah','1/8/1999','GEC Anand','Surat','6876582456','Ciarian42@gmail.com'),(149,'Alishan','Doshi','3/12/1998','GIT Gandhinagar','Anand','9727148194','Alishan18@gmail.com'),(150,'Duriel','Suthar','20/7/2002','GEC Modasa','Dahod','4171324333','Duriel96@gmail.com'),(151,'Carl','Bhavsar','11/2/1998','LJIET Ahmedabad','Porbandar','8272114434','Carl49@gmail.com'),(152,'Frazer','Sanghvi','13/4/1999','GEC Anand','Dahod','4354348165','Frazer83@gmail.com'),(153,'Adain','Banarjee','21/7/2000','GH Patel Anand','Kutch','4862299111','Adain48@gmail.com'),(154,'Fearghus','Sanghvi','25/4/2000','LJIET Ahmedabad','Surendranagar','6621951562','Fearghus26@gmail.com'),(155,'Aaran','Barot','27/1/1999','GEC Gandhinagar','The Dangs','9186887663','Aaran69@gmail.com'),(156,'Danys','Mehta','12/3/1999','GH Patel Anand','Panchmahal','4258944237','Danys81@gmail.com'),(157,'Aodhan','Sanghvi','2/6/2000','GEC Modasa','Patan','7399318539','Aodhan89@gmail.com'),(158,'Asif','Panchal','6/12/2001','GEC Gandhinagar','Patan','8218694214','Asif24@gmail.com'),(159,'Findlay','Banarjee','28/12/1998','GEC Anand','Banaskantha','9988482136','Findlay55@gmail.com'),(160,'Connor','Chakrabarty','23/8/2002','GMIT Bhavnagar','Mehsana','9894588892','Connor45@gmail.com'),(161,'Frank','Sanghvi','8/7/2001','GIT Gandhinagar','Kutch','7883419844','Frank87@gmail.com'),(162,'Brydon','Modi','7/5/1998','GMIT Bhavnagar','Patan','9142673967','Brydon56@gmail.com'),(163,'Ammer','Mistry','24/11/1999','LJIET Ahmedabad','Porbandar','3944323712','Ammer32@gmail.com'),(164,'Coray','Raval','3/10/1998','GIT Gandhinagar','Bharuch','1572242467','Coray98@gmail.com'),(165,'Cristian','Sanghvi','28/8/1999','LJIET Ahmedabad','Panchmahal','7517729539','Cristian35@gmail.com'),(166,'Conal','Sanghvi','17/4/1998','LJIET Ahmedabad','Banaskantha','8936763136','Conal88@gmail.com'),(167,'Carlos','Mistry','6/12/2000','GMIT Bhavnagar','Jamnagar','3153236116','Carlos13@gmail.com'),(168,'Callan-Adam','Chakrabarty','18/12/2000','GEC Anand','Patan','8912156319','Callan-Adam36@gmail.com'),(169,'Cale','Modi','17/10/1999','GEC Modasa','Bharuch','6519164673','Cale61@gmail.com'),(170,'Abubakar','Panchal','8/6/1998','GH Patel Anand','Dahod','1685896668','Abubakar19@gmail.com'),(171,'Armaan','Rajodiya','24/5/1999','LJIET Ahmedabad','Surat','3426662319','Armaan94@gmail.com'),(172,'Cobain','Doshi','3/7/2001','GIT Gandhinagar','Banaskantha','2324761749','Cobain78@gmail.com'),(173,'Eagann','Panchal','25/9/2002','GH Patel Anand','Amreli district','2135182746','Eagann55@gmail.com'),(174,'Finnlay','Mehta','2/11/1999','GMIT Bhavnagar','Ahmedabad','1859116453','Finnlay56@gmail.com'),(175,'Callan-Adam','Chudasma','8/10/2000','GEC Anand','Gandhinagar','5821142714','Callan-Adam62@gmail.com'),(176,'Conner','Joshi','20/6/1999','GIT Gandhinagar','Patan','3273153684','Conner56@gmail.com'),(177,'Aliekber','Chakrabarty','2/9/2000','GEC Gandhinagar','Vadodara','7264286713','Aliekber91@gmail.com'),(178,'Cristian','Doshi','7/8/2000','GEC Gandhinagar','Panchmahal','5672323792','Cristian94@gmail.com'),(179,'Calan','Bhavsar','8/6/2002','GEC Gandhinagar','Banaskantha','2831968745','Calan47@gmail.com'),(180,'Asfhan','Kotadiya','5/10/1998','GIT Gandhinagar','Vadodara','8993192779','Asfhan26@gmail.com'),(181,'Dhyia','Kotadiya','20/2/2000','GEC Anand','Mehsana','6918452964','Dhyia61@gmail.com'),(182,'Avani','Shah','8/5/2002','GEC Gandhinagar','Rajkot','4866359478','Avani96@gmail.com'),(183,'Bjorn','Hingu','23/6/2000','GMIT Bhavnagar','Bharuch','4429823314','Bjorn58@gmail.com'),(184,'Flint','Modi','2/6/2002','GIT Gandhinagar','Amreli district','8844952861','Flint66@gmail.com'),(185,'Cory','Doshi','22/8/2002','GEC Modasa','Narmada','5898891695','Cory62@gmail.com'),(186,'Daniele','Joshi','27/1/2002','LJIET Ahmedabad','Dahod','9961981842','Daniele39@gmail.com'),(187,'Arayan','Prajapati','12/5/2001','GH Patel Anand','Kutch','6179212667','Arayan94@gmail.com'),(188,'Dean','Bhandari','6/11/2000','GH Patel Anand','Panchmahal','6424546471','Dean29@gmail.com'),(189,'Dylan-James','Prajapati','17/1/1999','GMIT Bhavnagar','Surat','7726999635','Dylan-James57@gmail.com'),(190,'Ayden','Makwana','23/8/2002','GEC Gandhinagar','Kheda','7277249211','Ayden39@gmail.com'),(191,'Darryn','Panchal','11/7/2001','GIT Gandhinagar','Gandhinagar','9357985266','Darryn41@gmail.com'),(192,'Digby','Makwana','1/7/2001','GEC Modasa','Kutch','5121489275','Digby93@gmail.com'),(193,'Brodi','Suthar','17/10/1998','GH Patel Anand','Rajkot','8334435238','Brodi13@gmail.com'),(194,'Aidy','Doshi','26/2/1998','GEC Gandhinagar','Surendranagar','1568745943','Aidy26@gmail.com'),(195,'Iagan','Barot','20/11/1999','GEC Anand','Panchmahal','3564352642','Iagan26@gmail.com'),(196,'Danyal','Doshi','8/4/2001','GEC Anand','Banaskantha','2664836615','Danyal17@gmail.com'),(197,'Guerin','Prajapati','21/8/2000','GMIT Bhavnagar','Dahod','3342299395','Guerin59@gmail.com'),(198,'Bruin','Patel','4/5/2002','GIT Gandhinagar','Dahod','2345869443','Bruin92@gmail.com'),(199,'Adnan','Bhandari','16/3/2000','GEC Anand','Narmada','6567352562','Adnan89@gmail.com'),(200,'Cavan','Suthar','17/2/1999','GEC Bhavnagar','Sabarkantha','8466219417','Cavan17@gmail.com'),(201,'Cruz','Shah','17/2/2002','GH Patel Anand','Porbandar','5697874342','Cruz31@gmail.com'),(202,'Denis','Makwana','20/4/2002','GEC Gandhinagar','Vyara','3536375619','Denis75@gmail.com'),(203,'Ciaran','Bhandari','24/11/2001','GH Patel Anand','Anand','8635578747','Ciaran38@gmail.com'),(204,'Blair','Banarjee','22/11/2001','GH Patel Anand','Vadodara','9239983343','Blair98@gmail.com'),(205,'Akram','Raval','23/12/2001','GMIT Bhavnagar','Surendranagar','3522126978','Akram68@gmail.com'),(206,'Azaan','Doshi','26/1/2002','GEC Modasa','Anand','8578614956','Azaan17@gmail.com'),(207,'Idahosa','Patel','9/8/2000','GH Patel Anand','Jamnagar','3654991446','Idahosa86@gmail.com'),(208,'Adegbola','Bhandari','6/8/2002','GIT Gandhinagar','Porbandar','9221263243','Adegbola59@gmail.com'),(209,'Daryl','Rajodiya','7/3/2000','GH Patel Anand','Sabarkantha','1638294217','Daryl52@gmail.com'),(210,'Darl','Mistry','3/9/1998','GEC Bhavnagar','Bhavnagar','9316219958','Darl19@gmail.com'),(211,'Ezra','Kotadiya','23/10/2002','GEC Modasa','Sabarkantha','8663541937','Ezra81@gmail.com'),(212,'Dennys','Chudasma','3/12/2002','LJIET Ahmedabad','Bharuch','4887769283','Dennys67@gmail.com'),(213,'Craig','Mistry','11/4/2001','GEC Gandhinagar','Navsari','5993634575','Craig43@gmail.com'),(214,'Connell','Mistry','25/10/1998','GEC Bhavnagar','The Dangs','6499383194','Connell74@gmail.com'),(215,'Ian','Doshi','2/11/2002','GMIT Bhavnagar','Valsad','7813373556','Ian65@gmail.com'),(216,'Chu','Joshi','15/5/1998','GMIT Bhavnagar','Amreli district','8134951376','Chu91@gmail.com'),(217,'Ernie-Jacks','Banarjee','20/3/2002','GEC Anand','Amreli district','8348182565','Ernie-Jacks46@gmail.com'),(218,'Diarmaid','Joshi','17/2/1998','GIT Gandhinagar','Junagadh','2214959821','Diarmaid89@gmail.com'),(219,'Donald','Modi','24/7/1999','GIT Gandhinagar','The Dangs','5152445596','Donald67@gmail.com'),(220,'Cameron','Bhandari','28/10/1999','GEC Gandhinagar','Surat','1266275966','Cameron45@gmail.com'),(221,'Edison','Joshi','12/10/2000','GIT Gandhinagar','Sabarkantha','5213235838','Edison26@gmail.com'),(222,'Cadan','Modi','6/9/1999','GEC Modasa','Anand','7854722482','Cadan55@gmail.com'),(223,'Deelan','Joshi','20/6/2000','GEC Bhavnagar','Surendranagar','2759713757','Deelan44@gmail.com'),(224,'Hosea','Prajapati','24/4/1998','GH Patel Anand','Gandhinagar','3467272198','Hosea48@gmail.com'),(225,'Aleksander','Panchal','3/11/1999','GMIT Bhavnagar','Bhavnagar','4387393594','Aleksander86@gmail.com'),(226,'Coben','Mehta','13/2/2000','GMIT Bhavnagar','Surat','6222875675','Coben66@gmail.com'),(227,'Antoine','Mehta','28/5/2001','GEC Anand','Bhavnagar','2192562736','Antoine85@gmail.com'),(228,'Boab','Joshi','11/9/2000','GEC Anand','Navsari','1567892167','Boab91@gmail.com'),(229,'Calum-James','Makwana','26/10/2001','GEC Gandhinagar','Narmada','2912821727','Calum-James25@gmail.com'),(230,'Amaan','Makwana','13/9/2000','GEC Gandhinagar','Banaskantha','6521129344','Amaan63@gmail.com'),(231,'Dailey','Doshi','23/6/1999','GMIT Bhavnagar','Rajkot','8258757775','Dailey39@gmail.com'),(232,'Domhnall','Joshi','26/1/2001','GEC Anand','Valsad','1367494366','Domhnall45@gmail.com'),(233,'Cian','Kotadiya','13/4/1999','GH Patel Anand','Banaskantha','8156426431','Cian21@gmail.com'),(234,'Ezra','Bhavsar','28/8/2001','GMIT Bhavnagar','Anand','7655821353','Ezra34@gmail.com'),(235,'Connell','Rajodiya','19/3/2000','LJIET Ahmedabad','Kutch','5444136958','Connell48@gmail.com'),(236,'Calan','Chudasma','5/12/2002','GEC Bhavnagar','Vadodara','7932764873','Calan11@gmail.com'),(237,'Fodeba','Kotadiya','9/12/2000','GEC Modasa','Vadodara','5196332258','Fodeba41@gmail.com'),(238,'Baley','Suthar','27/8/2000','GIT Gandhinagar','Dahod','4956638991','Baley42@gmail.com'),(239,'Giacomo','Mehta','21/7/1999','GH Patel Anand','Vyara','6212882643','Giacomo67@gmail.com'),(240,'Erdehan','Mehta','8/4/2000','GEC Gandhinagar','The Dangs','5924336388','Erdehan48@gmail.com'),(241,'Hopkin','Mistry','19/9/2002','GH Patel Anand','Narmada','8163982459','Hopkin74@gmail.com'),(242,'Blazey','Shah','21/2/1999','GEC Bhavnagar','Patan','5514813635','Blazey74@gmail.com'),(243,'Daren','Banarjee','27/11/1998','GMIT Bhavnagar','Valsad','6389772442','Daren55@gmail.com'),(244,'Dylan-James','Banarjee','10/7/1998','GIT Gandhinagar','Junagadh','3572693776','Dylan-James51@gmail.com'),(245,'Adenn','Modi','28/10/2000','GIT Gandhinagar','Surat','7394849852','Adenn67@gmail.com'),(246,'Greg','Patel','5/11/2001','LJIET Ahmedabad','The Dangs','4274684196','Greg97@gmail.com'),(247,'Dre','Suthar','22/2/1998','GEC Anand','Sabarkantha','9135633565','Dre39@gmail.com'),(248,'Euan','Chudasma','27/2/2001','GMIT Bhavnagar','Porbandar','6714543989','Euan75@gmail.com'),(249,'Anmolpreet','Raval','6/12/2001','GH Patel Anand','Amreli district','2398815987','Anmolpreet81@gmail.com'),(250,'Dhyia','Banarjee','6/7/2002','GMIT Bhavnagar','Porbandar','9723934453','Dhyia16@gmail.com'),(251,'Glenn','Suthar','27/2/2000','LJIET Ahmedabad','Navsari','4982323915','Glenn32@gmail.com'),(252,'Devon','Doshi','4/2/1999','LJIET Ahmedabad','Mehsana','6661349479','Devon87@gmail.com'),(253,'Dilan','Mehta','8/10/2002','GEC Anand','Ahmedabad','6295378666','Dilan39@gmail.com'),(254,'Calder','Kotadiya','11/4/2000','LJIET Ahmedabad','Surat','5711733162','Calder99@gmail.com'),(255,'Erencem','Hingu','24/1/2001','GEC Gandhinagar','Surendranagar','9122364227','Erencem21@gmail.com'),(256,'Abdur','Joshi','14/9/1999','LJIET Ahmedabad','Panchmahal','4747822327','Abdur85@gmail.com'),(257,'Abdur-Rahman','Shah','19/9/2000','GEC Gandhinagar','Valsad','3496562374','Abdur-Rahman81@gmail.com'),(258,'Aaron-James','Chudasma','11/3/1998','GMIT Bhavnagar','Jamnagar','8667283222','Aaron-James59@gmail.com'),(259,'Devon','Banarjee','2/5/2002','LJIET Ahmedabad','Jamnagar','6854361153','Devon47@gmail.com'),(260,'Atom','Bhandari','16/9/2002','GEC Bhavnagar','Amreli district','3145239478','Atom18@gmail.com'),(261,'Aun','Prajapati','11/8/2002','GEC Modasa','Jamnagar','2126134229','Aun89@gmail.com'),(262,'Fodeba','Bhavsar','13/10/1999','GMIT Bhavnagar','Banaskantha','2762735124','Fodeba75@gmail.com'),(263,'Darrach','Hingu','11/7/2002','GEC Modasa','Vyara','1659256281','Darrach88@gmail.com'),(264,'Arian','Bhandari','18/8/2002','LJIET Ahmedabad','Vadodara','5949411328','Arian93@gmail.com'),(265,'Drakeo','Suthar','13/9/1998','GEC Bhavnagar','Mehsana','2658136261','Drakeo22@gmail.com'),(266,'Christie','Chakrabarty','10/2/2001','GH Patel Anand','Porbandar','3928824155','Christie31@gmail.com'),(267,'Gianmarco','Panchal','23/7/1999','GEC Gandhinagar','Narmada','9677183285','Gianmarco97@gmail.com'),(268,'Eamonn','Makwana','23/12/2002','GEC Anand','Kutch','1396958995','Eamonn38@gmail.com'),(269,'Cadyn','Modi','8/8/1999','GEC Bhavnagar','Vyara','7147381698','Cadyn71@gmail.com'),(270,'Evann','Bhandari','4/7/1999','GMIT Bhavnagar','Kheda','7212161683','Evann77@gmail.com'),(271,'Antonyo','Rajodiya','21/10/2002','GEC Gandhinagar','Banaskantha','9581543295','Antonyo45@gmail.com'),(272,'Fares','Prajapati','28/7/1999','GEC Gandhinagar','Anand','5898326259','Fares29@gmail.com'),(273,'Dennis','Suthar','12/10/2002','GMIT Bhavnagar','Kutch','4119842755','Dennis63@gmail.com'),(274,'Brodi','Sanghvi','3/9/2002','GIT Gandhinagar','Gandhinagar','2989511464','Brodi88@gmail.com'),(275,'Cristian','Mistry','8/11/2002','GMIT Bhavnagar','Banaskantha','7383214858','Cristian57@gmail.com'),(276,'Alister','Panchal','23/7/2000','GEC Bhavnagar','Junagadh','4155323539','Alister71@gmail.com'),(277,'Gabriel','Bhandari','21/2/1998','GEC Modasa','Sabarkantha','5791527525','Gabriel48@gmail.com'),(278,'Decklan','Mistry','2/8/1998','GEC Bhavnagar','Surat','3239765222','Decklan17@gmail.com'),(279,'Bradley','Patel','20/10/2002','GEC Anand','The Dangs','6332151763','Bradley58@gmail.com'),(280,'Darius','Sanghvi','26/12/1998','GH Patel Anand','Gandhinagar','2728247534','Darius12@gmail.com'),(281,'Aydon','Raval','26/4/2002','GEC Modasa','Kheda','8128652694','Aydon52@gmail.com'),(282,'Connall','Prajapati','17/2/2000','GEC Bhavnagar','Narmada','7741876959','Connall58@gmail.com'),(283,'Brandon','Banarjee','14/4/2002','GEC Anand','Surat','8963976919','Brandon21@gmail.com'),(284,'C-Jay','Chudasma','27/12/1999','GEC Bhavnagar','Vyara','1668154325','C-Jay26@gmail.com'),(285,'Amrinder','Bhandari','4/11/2000','GMIT Bhavnagar','Ahmedabad','2767217862','Amrinder21@gmail.com'),(286,'Erencem','Kotadiya','27/2/2001','GMIT Bhavnagar','Narmada','2884343951','Erencem94@gmail.com'),(287,'Denzel','Raval','9/12/1998','GH Patel Anand','Porbandar','9972757933','Denzel63@gmail.com'),(288,'Calean','Prajapati','23/1/2000','GMIT Bhavnagar','Kutch','6871645568','Calean87@gmail.com'),(289,'Abdalroof','Joshi','11/8/1999','LJIET Ahmedabad','Surendranagar','1457461717','Abdalroof75@gmail.com'),(290,'Fodeba','Bhavsar','23/3/2000','GEC Gandhinagar','Dahod','4642593621','Fodeba89@gmail.com'),(291,'Glenn','Rajodiya','12/9/1998','GH Patel Anand','Patan','8874219159','Glenn83@gmail.com'),(292,'Abdallah','Kotadiya','21/6/2000','GH Patel Anand','Gandhinagar','7543696828','Abdallah58@gmail.com'),(293,'Ihtisham','Rajodiya','22/3/1999','GEC Anand','Amreli district','8653875414','Ihtisham39@gmail.com'),(294,'Cathal','Hingu','23/8/2000','GMIT Bhavnagar','Gandhinagar','5654857941','Cathal49@gmail.com'),(295,'Bailley','Patel','3/12/1998','GEC Anand','Rajkot','1431214831','Bailley81@gmail.com'),(296,'Dennin','Modi','25/6/2000','GIT Gandhinagar','Gandhinagar','5233698183','Dennin43@gmail.com'),(297,'Arandeep','Prajapati','14/10/2002','GIT Gandhinagar','Vyara','4929176525','Arandeep12@gmail.com'),(298,'Hussan','Patel','9/3/1999','GIT Gandhinagar','Junagadh','7447585978','Hussan76@gmail.com'),(299,'Asim','Joshi','14/7/2002','GEC Gandhinagar','Kheda','6542749598','Asim14@gmail.com'),(300,'Frederick','Kotadiya','7/2/1998','GH Patel Anand','Bhavnagar','9787324934','Frederick24@gmail.com'),(301,'Conlan','Panchal','16/1/1998','GEC Gandhinagar','Banaskantha','3755655962','Conlan65@gmail.com'),(302,'Ethan','Prajapati','2/1/2001','GEC Bhavnagar','Navsari','1422542539','Ethan43@gmail.com'),(303,'Argyll','Joshi','25/5/2000','GEC Gandhinagar','Amreli district','4791582363','Argyll51@gmail.com'),(304,'Arfin','Joshi','28/6/2000','GEC Modasa','Panchmahal','1482519592','Arfin31@gmail.com'),(305,'Ghyll','Mehta','23/1/2001','GEC Bhavnagar','Rajkot','6699324481','Ghyll35@gmail.com'),(306,'Dillon','Hingu','12/6/1999','GIT Gandhinagar','Anand','6133379554','Dillon26@gmail.com'),(307,'Ajay','Mehta','13/6/2000','LJIET Ahmedabad','Banaskantha','8757741559','Ajay78@gmail.com'),(308,'Amolpreet','Doshi','9/8/2002','GEC Bhavnagar','Amreli district','8946744313','Amolpreet19@gmail.com'),(309,'Chris','Prajapati','1/4/2000','GEC Modasa','Kheda','2698569286','Chris25@gmail.com'),(310,'Aulay','Chudasma','19/12/1999','GH Patel Anand','Junagadh','8347556514','Aulay63@gmail.com'),(311,'Angus','Suthar','15/1/2001','LJIET Ahmedabad','Junagadh','6158211269','Angus56@gmail.com'),(312,'Franklin','Mehta','10/8/1999','GEC Gandhinagar','Patan','7775652823','Franklin11@gmail.com'),(313,'Deecan','Barot','11/8/2001','GEC Bhavnagar','Valsad','2338976467','Deecan88@gmail.com'),(314,'Aleksandar','Sanghvi','4/6/1999','GMIT Bhavnagar','Panchmahal','1785419393','Aleksandar41@gmail.com'),(315,'Abhinav','Prajapati','11/5/1999','GMIT Bhavnagar','Vyara','7298392716','Abhinav85@gmail.com'),(316,'Eassan','Rajodiya','23/9/1999','GIT Gandhinagar','Vadodara','8815188516','Eassan23@gmail.com'),(317,'Derrin','Patel','7/2/2002','GMIT Bhavnagar','Anand','3816724246','Derrin95@gmail.com'),(318,'Alfred','Patel','11/3/2002','GMIT Bhavnagar','Amreli district','5221946547','Alfred46@gmail.com'),(319,'Aristomenis','Panchal','8/9/1999','GEC Modasa','Sabarkantha','2744787793','Aristomenis21@gmail.com'),(320,'Alfred','Doshi','24/3/2000','GIT Gandhinagar','Dahod','1467337541','Alfred29@gmail.com'),(321,'Adie','Doshi','6/12/2000','GEC Modasa','Bhavnagar','2896836282','Adie58@gmail.com'),(322,'Arandeep','Banarjee','22/9/2000','GIT Gandhinagar','Porbandar','1566436189','Arandeep54@gmail.com'),(323,'Argyle','Joshi','18/5/1999','GEC Gandhinagar','Junagadh','2847128127','Argyle76@gmail.com'),(324,'Asif','Rajodiya','14/7/1998','GEC Bhavnagar','Dahod','3214775498','Asif29@gmail.com'),(325,'Chiqal','Makwana','10/1/1998','GEC Gandhinagar','Navsari','8726364856','Chiqal71@gmail.com'),(326,'Butchi','Rajodiya','7/2/2002','GEC Gandhinagar','Banaskantha','2391465327','Butchi45@gmail.com'),(327,'Darwyn','Panchal','9/1/2002','GEC Modasa','Amreli district','4141592733','Darwyn78@gmail.com'),(328,'Afonso','Bhavsar','10/5/1998','LJIET Ahmedabad','Junagadh','9775558823','Afonso87@gmail.com'),(329,'Allister','Chakrabarty','2/3/1999','GH Patel Anand','Navsari','7225332135','Allister24@gmail.com'),(330,'Alf','Banarjee','5/11/2002','GEC Bhavnagar','Amreli district','7166591596','Alf29@gmail.com'),(331,'Demetrius','Bhandari','8/5/1999','GMIT Bhavnagar','Banaskantha','7516341582','Demetrius97@gmail.com'),(332,'Abdullah','Bhavsar','17/11/1999','GH Patel Anand','Bharuch','8515639991','Abdullah87@gmail.com'),(333,'Ezra','Barot','19/12/2002','GEC Anand','Patan','2686236174','Ezra21@gmail.com'),(334,'Cahlum','Bhandari','12/6/2001','GMIT Bhavnagar','Anand','3319439547','Cahlum88@gmail.com'),(335,'Howie','Sanghvi','27/1/2002','GH Patel Anand','Valsad','7451134852','Howie74@gmail.com'),(336,'Ediomi','Modi','7/8/2001','GEC Modasa','Mehsana','9789734421','Ediomi37@gmail.com'),(337,'Dominik','Panchal','26/1/1999','LJIET Ahmedabad','Jamnagar','3122747942','Dominik64@gmail.com'),(338,'Ayub','Makwana','24/2/2002','GMIT Bhavnagar','Kutch','3721863128','Ayub33@gmail.com'),(339,'Conall','Banarjee','24/4/1999','GEC Modasa','Anand','6877455669','Conall28@gmail.com'),(340,'Codi','Suthar','23/2/2002','GEC Anand','Bhavnagar','5234554288','Codi43@gmail.com'),(341,'Allan-Laiton','Bhavsar','25/5/1999','GIT Gandhinagar','Jamnagar','1731749452','Allan-Laiton18@gmail.com'),(342,'Fionn','Chudasma','15/1/2002','LJIET Ahmedabad','Surat','2932832413','Fionn54@gmail.com'),(343,'Eric','Panchal','4/7/1999','GH Patel Anand','Patan','2665158822','Eric18@gmail.com'),(344,'Caolain','Chudasma','24/1/2000','GEC Bhavnagar','The Dangs','2923673263','Caolain78@gmail.com'),(345,'Dylin','Barot','23/8/2001','GH Patel Anand','Sabarkantha','6374927721','Dylin78@gmail.com'),(346,'Ainsley','Kotadiya','19/3/1998','GMIT Bhavnagar','Anand','7124822489','Ainsley77@gmail.com'),(347,'Daniels','Banarjee','18/1/2001','GEC Bhavnagar','Bhavnagar','1382987588','Daniels54@gmail.com'),(348,'Atom','Raval','7/1/2002','GMIT Bhavnagar','Mehsana','3642628351','Atom91@gmail.com'),(349,'Babatunmise','Shah','6/1/1998','GH Patel Anand','Vadodara','6845378298','Babatunmise81@gmail.com'),(350,'Dexter','Chakrabarty','26/2/2000','GEC Gandhinagar','The Dangs','9167881725','Dexter77@gmail.com'),(351,'Conal','Makwana','20/9/2002','GEC Gandhinagar','The Dangs','3873845222','Conal86@gmail.com'),(352,'Argyll','Chakrabarty','7/9/1999','GH Patel Anand','Bhavnagar','8759523185','Argyll95@gmail.com'),(353,'Akram','Hingu','28/12/2002','GEC Gandhinagar','Vyara','8539389628','Akram75@gmail.com'),(354,'Aaryan','Shah','8/11/1999','GIT Gandhinagar','Panchmahal','3187472521','Aaryan17@gmail.com'),(355,'Aleksandar','Patel','10/9/2002','GEC Bhavnagar','Amreli district','8697368786','Aleksandar15@gmail.com'),(356,'Dylan-Patrick','Banarjee','8/2/1999','LJIET Ahmedabad','Surendranagar','1297363172','Dylan-Patrick78@gmail.com'),(357,'Farzad','Shah','23/2/2001','GEC Bhavnagar','Junagadh','9583739834','Farzad56@gmail.com'),(358,'Connel','Kotadiya','5/12/1999','GMIT Bhavnagar','Kheda','8313914143','Connel62@gmail.com'),(359,'Diarmuid','Chakrabarty','11/9/2001','GMIT Bhavnagar','Gandhinagar','2154423366','Diarmuid48@gmail.com'),(360,'Corrie','Kotadiya','3/10/1998','GH Patel Anand','Bharuch','6816828496','Corrie72@gmail.com'),(361,'Hope','Suthar','26/2/2001','GIT Gandhinagar','The Dangs','1884249192','Hope45@gmail.com'),(362,'Arann','Hingu','14/8/2000','GEC Anand','Banaskantha','2867393781','Arann94@gmail.com'),(363,'Bony','Suthar','8/10/2000','GMIT Bhavnagar','Sabarkantha','2351841787','Bony28@gmail.com'),(364,'Francis','Chudasma','28/3/2000','GEC Bhavnagar','Kutch','1298794397','Francis68@gmail.com'),(365,'Anton','Barot','2/6/1998','GEC Modasa','Surat','2515756267','Anton94@gmail.com'),(366,'Anubhav','Mistry','20/10/2002','GEC Bhavnagar','Banaskantha','1954648817','Anubhav18@gmail.com'),(367,'Avani','Bhandari','23/10/2001','GH Patel Anand','Sabarkantha','8474146134','Avani87@gmail.com'),(368,'Coupar','Shah','25/2/2002','GIT Gandhinagar','Valsad','6155325734','Coupar85@gmail.com'),(369,'Deryn','Chakrabarty','20/7/2001','GEC Bhavnagar','Banaskantha','1263738828','Deryn84@gmail.com'),(370,'David','Bhandari','24/12/2002','GH Patel Anand','Jamnagar','6499347768','David93@gmail.com'),(371,'Calder','Rajodiya','3/6/1999','GMIT Bhavnagar','Vyara','3829325925','Calder66@gmail.com'),(372,'Abraham','Chakrabarty','19/1/1998','GMIT Bhavnagar','Ahmedabad','3346577876','Abraham28@gmail.com'),(373,'Campbell','Barot','5/3/2002','GEC Modasa','Vadodara','6139971341','Campbell89@gmail.com'),(374,'Abel','Sanghvi','17/10/1999','GEC Anand','Amreli district','4516993314','Abel72@gmail.com'),(375,'Damien','Raval','16/9/2000','GEC Anand','Surat','5781838465','Damien43@gmail.com'),(376,'Garren','Chudasma','14/10/1999','GEC Bhavnagar','Vyara','3396384569','Garren13@gmail.com'),(377,'Bailley','Kotadiya','2/7/1999','GMIT Bhavnagar','Panchmahal','9944151461','Bailley11@gmail.com'),(378,'Cori','Sanghvi','20/8/1998','LJIET Ahmedabad','Surendranagar','9172628143','Cori32@gmail.com'),(379,'Aydon','Prajapati','17/7/1998','GEC Modasa','Banaskantha','7491558625','Aydon43@gmail.com'),(380,'Garry','Makwana','9/12/1999','GEC Gandhinagar','Panchmahal','9789515484','Garry53@gmail.com'),(381,'Dagon','Chudasma','23/6/1999','GIT Gandhinagar','Surat','7815154794','Dagon37@gmail.com'),(382,'Geomer','Modi','23/5/2000','GIT Gandhinagar','Mehsana','8653898245','Geomer19@gmail.com'),(383,'Fauzaan','Shah','3/2/1999','LJIET Ahmedabad','Jamnagar','2544877859','Fauzaan48@gmail.com'),(384,'Austen','Banarjee','21/7/1999','LJIET Ahmedabad','Banaskantha','3464914638','Austen54@gmail.com'),(385,'Aaran','Hingu','1/8/2000','GEC Modasa','The Dangs','2136919446','Aaran36@gmail.com'),(386,'Alec','Doshi','17/9/2000','GEC Bhavnagar','Bharuch','2637696627','Alec41@gmail.com'),(387,'Angus','Chakrabarty','2/7/1999','GEC Gandhinagar','Panchmahal','4275552539','Angus67@gmail.com'),(388,'Caelen','Mistry','25/10/2000','GMIT Bhavnagar','Navsari','4823353981','Caelen23@gmail.com'),(389,'Dmitri','Shah','11/1/2001','GEC Bhavnagar','Vyara','4213724768','Dmitri23@gmail.com'),(390,'Atapattu','Joshi','14/5/2002','GEC Gandhinagar','Valsad','5251558438','Atapattu67@gmail.com'),(391,'Gio','Banarjee','12/3/2000','GEC Bhavnagar','Kutch','1569374544','Gio91@gmail.com'),(392,'Argyle','Chakrabarty','3/5/1998','LJIET Ahmedabad','Banaskantha','8514486465','Argyle79@gmail.com'),(393,'Argyll','Hingu','19/3/1999','GIT Gandhinagar','Sabarkantha','7712657821','Argyll44@gmail.com'),(394,'Eonan','Prajapati','8/9/1999','GEC Bhavnagar','Mehsana','9363958925','Eonan15@gmail.com'),(395,'Exodi','Shah','27/10/2000','GEC Bhavnagar','Dahod','2786148716','Exodi31@gmail.com'),(396,'Griffin','Hingu','6/7/1998','GEC Gandhinagar','Gandhinagar','7374886871','Griffin79@gmail.com'),(397,'Antoni','Hingu','26/11/2002','LJIET Ahmedabad','Jamnagar','2114833975','Antoni37@gmail.com'),(398,'Arturo','Banarjee','7/12/2002','GMIT Bhavnagar','Banaskantha','3731197474','Arturo54@gmail.com'),(399,'Arnab','Raval','19/3/1999','GEC Modasa','Junagadh','4545543556','Arnab92@gmail.com'),(400,'Alber','Bhandari','25/12/2001','GMIT Bhavnagar','Mehsana','5188346571','Alber43@gmail.com'),(401,'Areez','Kotadiya','19/6/1999','GEC Gandhinagar','Surat','8579151712','Areez32@gmail.com'),(402,'Darryl','Barot','28/3/2001','GEC Modasa','Valsad','7814768831','Darryl55@gmail.com'),(403,'Francis','Modi','5/7/1998','GEC Bhavnagar','Jamnagar','9657914669','Francis22@gmail.com'),(404,'Ala','Chakrabarty','5/5/2000','GEC Bhavnagar','Bharuch','1251812665','Ala89@gmail.com'),(405,'Corin','Sanghvi','6/4/2000','GEC Modasa','Jamnagar','1666758729','Corin47@gmail.com'),(406,'Eugene','Modi','10/10/2001','GEC Modasa','Valsad','8141479186','Eugene64@gmail.com'),(407,'Dissanayake','Rajodiya','17/7/2000','GEC Gandhinagar','Anand','7457573535','Dissanayake75@gmail.com'),(408,'Fyfe','Shah','27/1/1998','GIT Gandhinagar','Vadodara','5147646827','Fyfe61@gmail.com'),(409,'Atli','Raval','20/9/2001','GH Patel Anand','Porbandar','9579398362','Atli55@gmail.com'),(410,'Ammer','Patel','24/1/1998','GIT Gandhinagar','Kutch','8556978593','Ammer99@gmail.com'),(411,'Fyn','Mistry','26/10/2000','LJIET Ahmedabad','Vadodara','1325958583','Fyn56@gmail.com'),(412,'David-Jay','Doshi','27/8/2002','GEC Modasa','Bhavnagar','1789897797','David-Jay89@gmail.com'),(413,'Declain','Makwana','26/10/2002','GIT Gandhinagar','Surendranagar','5144244156','Declain63@gmail.com'),(414,'Aeron','Doshi','3/3/2000','LJIET Ahmedabad','Gandhinagar','8377371155','Aeron91@gmail.com'),(415,'Arturo','Patel','22/4/1999','GEC Modasa','Surendranagar','1857555989','Arturo16@gmail.com'),(416,'Famara','Suthar','6/10/2002','GIT Gandhinagar','Porbandar','3167987327','Famara27@gmail.com'),(417,'Albie','Mistry','7/7/1999','GEC Bhavnagar','Dahod','2252797575','Albie97@gmail.com'),(418,'Findlay','Mehta','5/4/2000','GEC Gandhinagar','Surendranagar','2782655285','Findlay24@gmail.com'),(419,'Atom','Sanghvi','14/3/2001','GEC Gandhinagar','Surendranagar','6532599815','Atom13@gmail.com'),(420,'Arjuna','Kotadiya','6/4/2000','GEC Anand','Patan','9828961989','Arjuna32@gmail.com'),(421,'Alistair','Rajodiya','2/1/2000','GIT Gandhinagar','Dahod','7769938665','Alistair45@gmail.com'),(422,'Alvin','Shah','28/2/2000','LJIET Ahmedabad','Vyara','2536893251','Alvin52@gmail.com'),(423,'Igor','Shah','18/12/1999','GEC Bhavnagar','Patan','3168634822','Igor26@gmail.com'),(424,'Declain','Sanghvi','8/10/2002','GEC Modasa','Junagadh','4263418949','Declain74@gmail.com'),(425,'Atli','Panchal','20/1/2001','GEC Bhavnagar','Valsad','2163816673','Atli27@gmail.com'),(426,'Enzo','Hingu','20/3/2002','LJIET Ahmedabad','Kheda','4844561976','Enzo37@gmail.com'),(427,'Aditya','Bhandari','12/2/1998','GEC Anand','Surat','3261693962','Aditya61@gmail.com'),(428,'Conall','Bhavsar','27/12/2002','LJIET Ahmedabad','Ahmedabad','6239112995','Conall15@gmail.com'),(429,'Aaron','Prajapati','13/2/1999','LJIET Ahmedabad','Banaskantha','9243562258','Aaron38@gmail.com'),(430,'Badsha','Hingu','18/6/1998','GH Patel Anand','Rajkot','3394887827','Badsha48@gmail.com'),(431,'Dalton','Barot','19/1/2002','GEC Gandhinagar','Patan','8542127922','Dalton85@gmail.com'),(432,'Gavin-Lee','Chudasma','2/8/2002','GEC Anand','Amreli district','3645646696','Gavin-Lee18@gmail.com'),(433,'Brett','Modi','23/11/1999','GH Patel Anand','Mehsana','8381993219','Brett54@gmail.com'),(434,'Forgan','Doshi','17/4/1998','GIT Gandhinagar','Valsad','9742485747','Forgan87@gmail.com'),(435,'Clarke','Chakrabarty','10/6/1998','GEC Anand','Gandhinagar','1899914698','Clarke76@gmail.com'),(436,'Creag','Hingu','20/2/2001','LJIET Ahmedabad','Ahmedabad','8743726381','Creag95@gmail.com'),(437,'Brady','Mehta','5/11/1998','GH Patel Anand','Patan','8879786771','Brady76@gmail.com'),(438,'Caidan','Bhandari','20/5/2000','GH Patel Anand','Valsad','4963995656','Caidan16@gmail.com'),(439,'Attila','Kotadiya','27/4/1999','GIT Gandhinagar','Jamnagar','1531853763','Attila14@gmail.com'),(440,'Davy','Patel','2/2/1998','GEC Bhavnagar','Kutch','2928497882','Davy14@gmail.com'),(441,'Eagann','Bhandari','19/11/2000','GEC Gandhinagar','Kutch','5795863214','Eagann64@gmail.com'),(442,'Finn','Chakrabarty','24/11/1999','GEC Anand','Porbandar','1526582319','Finn22@gmail.com'),(443,'Arnab','Raval','19/11/2000','GH Patel Anand','The Dangs','9611328673','Arnab62@gmail.com'),(444,'Chiqal','Panchal','9/6/2001','GEC Bhavnagar','Jamnagar','2289222878','Chiqal28@gmail.com'),(445,'Athos-Carlos','Doshi','14/11/1998','LJIET Ahmedabad','Gandhinagar','7428284936','Athos-Carlos88@gmail.com'),(446,'Armaan','Prajapati','22/5/2002','GEC Modasa','Kutch','2965183357','Armaan54@gmail.com'),(447,'Aray','Raval','18/7/2001','GEC Modasa','Amreli district','2425357714','Aray42@gmail.com'),(448,'Edison','Mehta','17/10/1999','GMIT Bhavnagar','Jamnagar','6159927358','Edison81@gmail.com'),(449,'Fergus','Barot','2/3/2002','GMIT Bhavnagar','Kutch','2595449688','Fergus38@gmail.com'),(450,'Anesu','Sanghvi','16/8/2002','GIT Gandhinagar','Mehsana','4215432925','Anesu57@gmail.com'),(451,'Chiqal','Shah','15/3/1999','GH Patel Anand','Panchmahal','7143486962','Chiqal97@gmail.com'),(452,'Bracken','Prajapati','4/12/1998','GMIT Bhavnagar','Banaskantha','8337167726','Bracken21@gmail.com'),(453,'Daimhin','Panchal','15/10/2000','GMIT Bhavnagar','Bhavnagar','1164383518','Daimhin43@gmail.com'),(454,'Fergie','Modi','7/9/1998','GH Patel Anand','Navsari','3858717966','Fergie47@gmail.com'),(455,'Dyllon','Raval','4/8/2002','GH Patel Anand','Vadodara','4393437396','Dyllon26@gmail.com'),(456,'Derryn','Mehta','3/2/1999','GEC Bhavnagar','Kutch','5736231373','Derryn81@gmail.com'),(457,'Dimitri','Joshi','7/3/1998','GIT Gandhinagar','Anand','6152452573','Dimitri28@gmail.com'),(458,'Hopkin','Modi','14/4/2002','LJIET Ahmedabad','Dahod','5654273575','Hopkin52@gmail.com'),(459,'Glascott','Makwana','6/4/1999','GEC Bhavnagar','Bhavnagar','7774359638','Glascott48@gmail.com'),(460,'Cormac','Mehta','25/11/1999','GIT Gandhinagar','Panchmahal','4735236972','Cormac48@gmail.com'),(461,'Darrel','Mistry','7/4/2002','GMIT Bhavnagar','Panchmahal','5577725625','Darrel25@gmail.com'),(462,'Eryk','Chudasma','15/6/1999','GIT Gandhinagar','Vadodara','6697553772','Eryk99@gmail.com'),(463,'Hristomir','Shah','24/6/2002','GEC Modasa','Surendranagar','6527528959','Hristomir77@gmail.com'),(464,'Antonyo','Rajodiya','26/12/1999','LJIET Ahmedabad','Rajkot','1751957191','Antonyo57@gmail.com'),(465,'Arran','Raval','22/3/2000','GEC Bhavnagar','Dahod','9487531256','Arran31@gmail.com'),(466,'Ihtisham','Banarjee','28/8/2001','GIT Gandhinagar','Banaskantha','6737449636','Ihtisham26@gmail.com'),(467,'Aidy','Bhandari','17/11/1999','GEC Bhavnagar','Rajkot','4372383519','Aidy76@gmail.com'),(468,'Eduardo','Bhavsar','27/11/2002','GH Patel Anand','Surendranagar','9221981816','Eduardo81@gmail.com'),(469,'Bilal','Makwana','23/9/2002','GEC Modasa','Vyara','2744973379','Bilal19@gmail.com'),(470,'Heddle','Joshi','20/6/1998','GMIT Bhavnagar','Mehsana','2236244474','Heddle54@gmail.com'),(471,'Fodeba','Hingu','17/3/1998','GEC Bhavnagar','Sabarkantha','2839756921','Fodeba47@gmail.com'),(472,'Bryden','Patel','20/10/2001','GH Patel Anand','Rajkot','2644218189','Bryden88@gmail.com'),(473,'Crispin','Doshi','13/2/2001','GEC Bhavnagar','Surendranagar','9997931213','Crispin58@gmail.com'),(474,'Anthony','Shah','26/4/2001','GH Patel Anand','Kutch','9563458464','Anthony89@gmail.com'),(475,'Fahad','Bhandari','2/4/1998','LJIET Ahmedabad','Banaskantha','7948426474','Fahad74@gmail.com'),(476,'Ghyll','Hingu','12/7/1999','GMIT Bhavnagar','Vyara','4354222261','Ghyll65@gmail.com'),(477,'Fynlay','Prajapati','18/9/1998','GIT Gandhinagar','Amreli district','6682228741','Fynlay29@gmail.com'),(478,'Arved','Shah','1/12/2000','GEC Modasa','Kutch','1744347184','Arved62@gmail.com'),(479,'Bruin','Rajodiya','4/1/1998','GEC Bhavnagar','Navsari','4586819868','Bruin82@gmail.com'),(480,'Adain','Suthar','13/3/2002','GEC Modasa','Vyara','9771233989','Adain63@gmail.com'),(481,'Caedan','Suthar','19/3/2002','GEC Bhavnagar','Amreli district','6759335125','Caedan89@gmail.com'),(482,'Ashley','Chakrabarty','10/1/1999','GMIT Bhavnagar','Bhavnagar','2829747488','Ashley94@gmail.com'),(483,'Bjorn','Kotadiya','10/3/1998','GEC Gandhinagar','Narmada','2523156948','Bjorn92@gmail.com'),(484,'Darrel','Rajodiya','4/9/1999','GEC Modasa','Dahod','5287746828','Darrel74@gmail.com'),(485,'Felix','Shah','13/12/2001','GMIT Bhavnagar','Surat','9458415114','Felix37@gmail.com'),(486,'Geomer','Kotadiya','26/10/2002','GEC Bhavnagar','Kheda','8294365178','Geomer68@gmail.com'),(487,'Butali','Banarjee','25/6/2002','GEC Gandhinagar','Panchmahal','3112378117','Butali47@gmail.com'),(488,'Alfee','Rajodiya','16/7/1999','GEC Anand','Surat','7468746667','Alfee86@gmail.com'),(489,'Darrius','Modi','16/10/2002','LJIET Ahmedabad','Vyara','6789639737','Darrius93@gmail.com'),(490,'Aeron','Mehta','20/4/2001','GEC Anand','Bhavnagar','7782973554','Aeron78@gmail.com'),(491,'Dennan','Barot','16/1/2001','GMIT Bhavnagar','Navsari','9821242428','Dennan47@gmail.com'),(492,'Chukwuemeka','Bhandari','5/9/2001','GEC Anand','Banaskantha','7733242594','Chukwuemeka63@gmail.com'),(493,'Daksh','Kotadiya','14/1/2000','GIT Gandhinagar','Junagadh','3286778624','Daksh44@gmail.com'),(494,'CJ','Raval','23/1/2000','GEC Bhavnagar','Surat','9242349524','CJ99@gmail.com'),(495,'Cori','Joshi','27/1/2000','GEC Modasa','Porbandar','2648855248','Cori41@gmail.com'),(496,'Forbes','Chakrabarty','24/7/2001','GEC Modasa','Kutch','5963216257','Forbes48@gmail.com'),(497,'Daegyu','Joshi','6/3/1999','GEC Modasa','Surendranagar','5635482856','Daegyu38@gmail.com'),(498,'Caiden-Paul','Hingu','13/3/1999','GEC Bhavnagar','Surat','7577181632','Caiden-Paul67@gmail.com'),(499,'Brody','Rajodiya','4/9/1998','GIT Gandhinagar','Gandhinagar','7417415356','Brody89@gmail.com'),(500,'Daimhin','Suthar','3/6/2002','LJIET Ahmedabad','Patan','8863577187','Daimhin55@gmail.com'),(501,'Ferre','Patel','16/9/2000','GEC Bhavnagar','Vyara','7125588136','Ferre66@gmail.com'),(502,'Daanyaal','Chudasma','23/6/2000','GEC Bhavnagar','Navsari','5238996437','Daanyaal97@gmail.com'),(503,'Frankie','Joshi','10/3/2000','GIT Gandhinagar','Bharuch','1128759498','Frankie73@gmail.com'),(504,'Ericlee','Hingu','14/5/2001','LJIET Ahmedabad','Narmada','2712668772','Ericlee95@gmail.com'),(505,'Dailey','Suthar','5/7/1999','GIT Gandhinagar','Kheda','4836715259','Dailey34@gmail.com'),(506,'Abdisalam','Makwana','2/10/2000','GIT Gandhinagar','Valsad','5932471885','Abdisalam96@gmail.com'),(507,'Georgia','Makwana','12/10/2000','GH Patel Anand','Navsari','8244665164','Georgia92@gmail.com'),(508,'Georgy','Doshi','11/5/1998','LJIET Ahmedabad','Junagadh','2343189911','Georgy17@gmail.com'),(509,'Evann','Hingu','17/11/2002','GEC Anand','The Dangs','8986824566','Evann79@gmail.com'),(510,'Daegyu','Chudasma','13/9/2002','GEC Gandhinagar','Jamnagar','1541271879','Daegyu74@gmail.com'),(511,'Binod','Prajapati','22/6/1998','LJIET Ahmedabad','Junagadh','8767224174','Binod45@gmail.com'),(512,'Cahlum','Joshi','12/2/1999','GEC Gandhinagar','Bharuch','6167658379','Cahlum86@gmail.com'),(513,'Adegbolahan','Makwana','4/2/2001','GEC Modasa','Anand','1551477669','Adegbolahan63@gmail.com'),(514,'Fruin','Bhandari','3/10/1998','GEC Anand','Navsari','2725195633','Fruin88@gmail.com'),(515,'Callan-Adam','Bhandari','10/9/1999','GEC Anand','Patan','2213772298','Callan-Adam67@gmail.com'),(516,'Cairn','Chakrabarty','24/9/2002','GEC Gandhinagar','Vadodara','5623482127','Cairn64@gmail.com'),(517,'Arandeep','Mistry','18/5/2002','GIT Gandhinagar','Dahod','8144221854','Arandeep54@gmail.com'),(518,'Daniel','Mehta','14/3/1998','LJIET Ahmedabad','Vadodara','6493127886','Daniel42@gmail.com'),(519,'Carter','Mehta','18/7/2000','GIT Gandhinagar','Dahod','6677622859','Carter84@gmail.com'),(520,'Ahmed-Aziz','Barot','20/10/2001','GEC Bhavnagar','Kheda','8192481746','Ahmed-Aziz39@gmail.com'),(521,'Avi','Barot','20/9/1998','GEC Bhavnagar','Navsari','2314895666','Avi26@gmail.com'),(522,'Bradyn','Kotadiya','12/11/2001','GMIT Bhavnagar','Banaskantha','2684872745','Bradyn11@gmail.com'),(523,'Athos-Carlos','Prajapati','23/7/1999','GEC Modasa','Bhavnagar','2721534547','Athos-Carlos46@gmail.com'),(524,'Heini','Prajapati','17/7/1999','GEC Bhavnagar','Vadodara','9792965477','Heini97@gmail.com'),(525,'Dylan-James','Barot','9/7/2001','GIT Gandhinagar','Kheda','4458121994','Dylan-James56@gmail.com'),(526,'Blue','Panchal','21/6/1998','GEC Anand','The Dangs','2151562131','Blue87@gmail.com'),(527,'Idahosa','Banarjee','11/8/1998','GEC Anand','Anand','4563943794','Idahosa11@gmail.com'),(528,'Eoghan','Sanghvi','1/3/2001','GEC Bhavnagar','Banaskantha','7292695581','Eoghan59@gmail.com'),(529,'Conlan','Panchal','1/12/2002','GEC Bhavnagar','Gandhinagar','4343235925','Conlan85@gmail.com'),(530,'Folarinwa','Raval','9/9/2002','LJIET Ahmedabad','Anand','7129937592','Folarinwa53@gmail.com'),(531,'Adain','Bhavsar','14/12/1998','GEC Anand','Sabarkantha','4921424842','Adain25@gmail.com'),(532,'Francis','Raval','18/10/2002','LJIET Ahmedabad','Dahod','2881535118','Francis23@gmail.com'),(533,'Guerin','Modi','7/5/1999','LJIET Ahmedabad','Kheda','5867248385','Guerin77@gmail.com'),(534,'Allen','Makwana','12/8/1998','GH Patel Anand','Bhavnagar','5214861549','Allen27@gmail.com'),(535,'Ashton-Lloyd','Shah','8/6/1998','GEC Modasa','Valsad','6178515836','Ashton-Lloyd42@gmail.com'),(536,'Grahame','Mehta','18/7/1999','GEC Anand','Mehsana','3622221186','Grahame98@gmail.com'),(537,'Conor','Panchal','26/2/1999','LJIET Ahmedabad','Gandhinagar','1355831656','Conor22@gmail.com'),(538,'Amrinder','Patel','10/3/2002','GEC Bhavnagar','Dahod','4557142441','Amrinder29@gmail.com'),(539,'Flyn','Prajapati','15/9/1998','GH Patel Anand','Sabarkantha','6586254183','Flyn63@gmail.com'),(540,'Abdalroof','Bhandari','22/5/1998','GMIT Bhavnagar','Porbandar','9851613415','Abdalroof15@gmail.com'),(541,'Danish','Panchal','14/7/1998','GEC Modasa','Porbandar','5699126223','Danish34@gmail.com'),(542,'Gordon','Panchal','12/1/1999','GEC Bhavnagar','Anand','3681488685','Gordon42@gmail.com'),(543,'Caileb-John','Sanghvi','13/5/2000','GIT Gandhinagar','Vadodara','6931584944','Caileb-John78@gmail.com'),(544,'Fyn','Bhandari','12/10/1998','GEC Gandhinagar','Bhavnagar','7252499625','Fyn51@gmail.com'),(545,'Arann','Suthar','11/1/1998','GIT Gandhinagar','Navsari','2971973784','Arann41@gmail.com'),(546,'Aayan','Patel','26/11/2000','GEC Modasa','Vyara','8961768529','Aayan32@gmail.com'),(547,'Gregor','Chudasma','10/9/2002','GEC Modasa','Narmada','4145486589','Gregor15@gmail.com'),(548,'Gerard','Patel','28/9/2001','GMIT Bhavnagar','Kheda','7322623629','Gerard98@gmail.com'),(549,'Abdallah','Raval','2/4/2001','GEC Modasa','Bhavnagar','6327236876','Abdallah43@gmail.com'),(550,'Aaron','Panchal','4/4/1999','LJIET Ahmedabad','Patan','7816168714','Aaron33@gmail.com'),(551,'Idrees','Makwana','9/5/1998','GEC Anand','Porbandar','7628885241','Idrees71@gmail.com'),(552,'Ayden','Suthar','5/2/1999','GMIT Bhavnagar','Amreli district','3143386237','Ayden59@gmail.com'),(553,'Cadan','Chudasma','5/8/1998','LJIET Ahmedabad','Surat','9685114459','Cadan64@gmail.com'),(554,'Dane','Bhavsar','9/10/2000','GEC Gandhinagar','Bharuch','4511385455','Dane53@gmail.com'),(555,'Abaan','Rajodiya','19/8/1999','GIT Gandhinagar','Anand','7848392338','Abaan31@gmail.com'),(556,'Colvin','Bhandari','3/7/2002','GEC Modasa','Valsad','7198268924','Colvin47@gmail.com'),(557,'Darroch','Joshi','20/1/2000','GEC Anand','Vadodara','4313175465','Darroch24@gmail.com'),(558,'Connall','Joshi','5/4/1998','GEC Modasa','Anand','5549475243','Connall48@gmail.com'),(559,'Francis','Bhandari','9/8/1998','GEC Gandhinagar','Gandhinagar','6967587379','Francis98@gmail.com'),(560,'Brendan','Hingu','10/4/1999','GEC Anand','Surendranagar','8276937769','Brendan45@gmail.com'),(561,'Chintu','Doshi','15/3/2000','GEC Bhavnagar','Valsad','5994468161','Chintu72@gmail.com'),(562,'Connar','Chudasma','4/8/2000','GEC Bhavnagar','Rajkot','4154768814','Connar84@gmail.com'),(563,'Bret','Patel','1/1/2000','GH Patel Anand','Jamnagar','6524739616','Bret25@gmail.com'),(564,'Anthony','Bhavsar','9/12/1999','GMIT Bhavnagar','Jamnagar','8366588327','Anthony41@gmail.com'),(565,'Antony','Doshi','28/4/1998','GMIT Bhavnagar','Mehsana','1919958142','Antony79@gmail.com'),(566,'Derryn','Modi','1/10/2000','GH Patel Anand','Gandhinagar','6769898288','Derryn47@gmail.com'),(567,'Abdul-Rehman','Prajapati','27/12/2002','GIT Gandhinagar','Navsari','5862286133','Abdul-Rehman49@gmail.com'),(568,'Colton','Chakrabarty','4/6/2002','GEC Modasa','Surendranagar','6579837379','Colton43@gmail.com'),(569,'Cormak','Kotadiya','12/1/2002','GEC Anand','Anand','3465348471','Cormak62@gmail.com'),(570,'Adrien','Bhandari','12/11/1999','GMIT Bhavnagar','Panchmahal','3292888471','Adrien15@gmail.com'),(571,'Boab','Modi','4/6/2000','GIT Gandhinagar','Amreli district','2849453846','Boab57@gmail.com'),(572,'Babatunmise','Kotadiya','5/3/1999','GMIT Bhavnagar','Surendranagar','7543198317','Babatunmise59@gmail.com'),(573,'Ewan','Hingu','12/6/1998','GEC Anand','Panchmahal','4544923829','Ewan72@gmail.com'),(574,'Asa','Chakrabarty','13/3/1998','GEC Bhavnagar','Kutch','5548375556','Asa36@gmail.com'),(575,'Davi','Doshi','27/9/1998','GIT Gandhinagar','Vyara','8932872615','Davi85@gmail.com'),(576,'Fearghus','Raval','5/6/2000','GEC Bhavnagar','Surendranagar','8179423827','Fearghus49@gmail.com'),(577,'Caleb','Bhandari','2/7/1998','GEC Bhavnagar','Amreli district','7898588126','Caleb94@gmail.com'),(578,'Blaike','Joshi','23/3/2000','GMIT Bhavnagar','Sabarkantha','8114422456','Blaike15@gmail.com'),(579,'Cinar','Modi','24/5/2002','GMIT Bhavnagar','Vyara','9874175812','Cinar77@gmail.com'),(580,'Allen','Modi','26/3/2000','GH Patel Anand','Dahod','1547648513','Allen66@gmail.com'),(581,'Danniel','Mehta','10/4/1998','GIT Gandhinagar','Amreli district','9679644178','Danniel53@gmail.com'),(582,'Eduardo','Chudasma','4/6/2001','LJIET Ahmedabad','Mehsana','4131396356','Eduardo65@gmail.com'),(583,'Aedin','Mehta','11/4/2002','GMIT Bhavnagar','Banaskantha','4173821848','Aedin88@gmail.com'),(584,'D\'arcy','Joshi','27/11/2002','GEC Anand','Ahmedabad','6697729742','D\'arcy14@gmail.com'),(585,'Arandeep','Shah','4/4/2001','LJIET Ahmedabad','Rajkot','9537547627','Arandeep48@gmail.com'),(586,'Demetrius','Banarjee','1/11/1999','GEC Bhavnagar','Bharuch','8775337823','Demetrius22@gmail.com'),(587,'Ewing','Kotadiya','10/5/2001','GEC Bhavnagar','Gandhinagar','3274765334','Ewing33@gmail.com'),(588,'Aron','Chudasma','7/1/1998','GEC Gandhinagar','Rajkot','6224911284','Aron17@gmail.com'),(589,'Aliyaan','Patel','19/7/1998','GEC Gandhinagar','Narmada','4436399214','Aliyaan69@gmail.com'),(590,'Finlay','Sanghvi','25/10/2000','GH Patel Anand','Valsad','3311826895','Finlay28@gmail.com'),(591,'Abubakar','Chakrabarty','24/8/1998','GEC Anand','Jamnagar','4354472313','Abubakar38@gmail.com'),(592,'Corey-Jay','Modi','18/1/2001','GEC Gandhinagar','Bhavnagar','3351625933','Corey-Jay25@gmail.com'),(593,'Connal','Bhavsar','16/12/1999','GEC Gandhinagar','Valsad','1763429284','Connal43@gmail.com'),(594,'Darien','Shah','2/7/2000','GEC Gandhinagar','Bharuch','3578289878','Darien19@gmail.com'),(595,'Faheem','Modi','7/7/1998','GEC Anand','Valsad','3145322258','Faheem78@gmail.com'),(596,'Herbert','Doshi','7/8/2000','GEC Bhavnagar','Narmada','9262491355','Herbert94@gmail.com'),(597,'Colvin','Mistry','4/4/2001','GH Patel Anand','Ahmedabad','9424256488','Colvin87@gmail.com'),(598,'Dafydd','Doshi','2/3/1999','GH Patel Anand','Vadodara','5341982798','Dafydd49@gmail.com'),(599,'Alekzander','Bhavsar','4/3/1999','GEC Anand','Banaskantha','4123927589','Alekzander56@gmail.com'),(600,'Gavin-Lee','Patel','17/11/1999','GEC Anand','Valsad','9117751912','Gavin-Lee99@gmail.com'),(601,'Azeem','Mehta','12/1/2000','GIT Gandhinagar','Patan','3372711381','Azeem96@gmail.com'),(602,'Farren','Mehta','8/4/2002','GIT Gandhinagar','Narmada','7151967853','Farren93@gmail.com'),(603,'Hiro','Makwana','5/11/2000','GMIT Bhavnagar','Kutch','1231929924','Hiro71@gmail.com'),(604,'Fintan','Joshi','23/1/1999','GMIT Bhavnagar','Kutch','8941725372','Fintan25@gmail.com'),(605,'Desmond','Hingu','6/6/2001','GEC Gandhinagar','Bharuch','3179679517','Desmond59@gmail.com'),(606,'Caley','Banarjee','18/10/1998','GIT Gandhinagar','Vyara','8862632899','Caley14@gmail.com'),(607,'Caedyn','Kotadiya','4/7/1999','GEC Gandhinagar','Jamnagar','9856842196','Caedyn46@gmail.com'),(608,'Anmolpreet','Makwana','8/11/2002','GH Patel Anand','Navsari','3832282669','Anmolpreet46@gmail.com'),(609,'Antony','Prajapati','6/7/2002','GMIT Bhavnagar','Dahod','1133936422','Antony94@gmail.com'),(610,'Cailin','Banarjee','12/9/2002','GIT Gandhinagar','Kheda','5958732816','Cailin35@gmail.com'),(611,'Daimhin','Hingu','11/3/2000','GEC Bhavnagar','Surat','6485783314','Daimhin17@gmail.com'),(612,'Cory','Prajapati','21/12/2000','GEC Bhavnagar','Vyara','6924572175','Cory75@gmail.com'),(613,'Darroch','Bhandari','20/12/2002','GEC Bhavnagar','Rajkot','2979446275','Darroch21@gmail.com'),(614,'Daniil','Hingu','18/3/1998','GH Patel Anand','Surendranagar','6715641242','Daniil24@gmail.com'),(615,'Azzam','Makwana','2/3/1999','GEC Gandhinagar','Rajkot','4291273514','Azzam19@gmail.com'),(616,'Cator','Chakrabarty','4/11/2001','GEC Gandhinagar','Amreli district','2517124113','Cator37@gmail.com'),(617,'Alanas','Sanghvi','21/5/2002','GEC Modasa','Junagadh','2799856642','Alanas75@gmail.com'),(618,'Antony','Doshi','24/6/1998','GEC Gandhinagar','Banaskantha','7312278164','Antony25@gmail.com'),(619,'Airlie','Doshi','14/2/1998','GEC Anand','Patan','4828845718','Airlie83@gmail.com'),(620,'Cillian','Mehta','8/9/1998','GEC Gandhinagar','Rajkot','5716236328','Cillian15@gmail.com'),(621,'Conall','Chakrabarty','11/6/1998','GMIT Bhavnagar','Rajkot','6991219614','Conall83@gmail.com'),(622,'Cody','Joshi','16/11/1998','GMIT Bhavnagar','Gandhinagar','8884965119','Cody29@gmail.com'),(623,'Billy','Raval','13/11/2001','GEC Bhavnagar','Surendranagar','7876654942','Billy89@gmail.com'),(624,'Davi','Shah','22/12/2000','GEC Modasa','Vyara','8419919928','Davi53@gmail.com'),(625,'Dylan-Patrick','Kotadiya','16/10/2000','GEC Bhavnagar','Amreli district','5262961692','Dylan-Patrick59@gmail.com'),(626,'Coban','Raval','5/9/1998','GEC Anand','Vadodara','6931814819','Coban65@gmail.com'),(627,'Anndra','Bhandari','4/11/1998','GEC Modasa','Junagadh','6242554317','Anndra16@gmail.com'),(628,'Faisal','Panchal','2/12/2002','GEC Modasa','Navsari','2259596263','Faisal94@gmail.com'),(629,'Caedan','Panchal','26/6/1999','GEC Gandhinagar','Anand','1423337695','Caedan91@gmail.com'),(630,'Dane','Patel','3/9/2001','GEC Bhavnagar','Vyara','1917465117','Dane29@gmail.com'),(631,'Gavin-Lee','Sanghvi','25/1/2001','GEC Gandhinagar','Vyara','7668364225','Gavin-Lee65@gmail.com'),(632,'Aled','Prajapati','21/5/1998','GEC Bhavnagar','Vyara','1875923928','Aled23@gmail.com'),(633,'Caley','Doshi','21/4/2001','GEC Bhavnagar','Porbandar','7617674892','Caley65@gmail.com'),(634,'Colin','Rajodiya','17/4/2000','GIT Gandhinagar','Dahod','8424699398','Colin21@gmail.com'),(635,'Darren','Bhandari','19/1/2002','GIT Gandhinagar','Kheda','5391123458','Darren59@gmail.com'),(636,'Bailee','Kotadiya','25/4/2002','GH Patel Anand','Mehsana','2857178946','Bailee17@gmail.com'),(637,'Ahmad','Shah','8/9/1999','LJIET Ahmedabad','Rajkot','1786336666','Ahmad83@gmail.com'),(638,'Colton','Mistry','8/6/1998','GH Patel Anand','Patan','8693767537','Colton41@gmail.com'),(639,'Cameron','Modi','16/4/2002','GIT Gandhinagar','Navsari','5733769866','Cameron65@gmail.com'),(640,'Gianmarco','Prajapati','18/8/2001','GEC Bhavnagar','Surendranagar','5729945995','Gianmarco93@gmail.com'),(641,'Ayrton','Suthar','9/8/2001','GH Patel Anand','Jamnagar','5763912287','Ayrton96@gmail.com'),(642,'Bully','Makwana','19/6/2001','GEC Anand','Vyara','7112352328','Bully45@gmail.com'),(643,'Amgad','Chakrabarty','19/10/2001','GEC Modasa','Dahod','4912478993','Amgad46@gmail.com'),(644,'Dennan','Doshi','7/8/1998','GMIT Bhavnagar','Vadodara','4659128234','Dennan74@gmail.com'),(645,'Arun','Panchal','16/1/2002','GIT Gandhinagar','Porbandar','1363477532','Arun81@gmail.com'),(646,'Dawson','Sanghvi','7/10/1999','GMIT Bhavnagar','Narmada','3351926983','Dawson67@gmail.com'),(647,'Eamonn','Patel','25/3/1998','GEC Anand','Anand','1841433919','Eamonn77@gmail.com'),(648,'Aarron','Patel','24/10/2002','GH Patel Anand','Dahod','1755371795','Aarron66@gmail.com'),(649,'Branden','Mistry','18/1/2000','GIT Gandhinagar','Vadodara','8819466884','Branden71@gmail.com'),(650,'Hopkin','Patel','19/8/1998','GEC Gandhinagar','Ahmedabad','7281812826','Hopkin21@gmail.com'),(651,'Conall','Chudasma','24/10/2001','GEC Anand','Panchmahal','2448142491','Conall36@gmail.com'),(652,'Braydon','Patel','14/7/1998','GEC Modasa','Ahmedabad','5838552454','Braydon46@gmail.com'),(653,'Corrie','Modi','13/7/1998','GIT Gandhinagar','The Dangs','7187956482','Corrie99@gmail.com'),(654,'Carter','Raval','24/2/2000','GEC Bhavnagar','Vadodara','9521842452','Carter83@gmail.com'),(655,'Ibraheem','Prajapati','27/11/1998','GEC Gandhinagar','The Dangs','6736973473','Ibraheem11@gmail.com'),(656,'Deagan','Kotadiya','6/3/2000','GIT Gandhinagar','Bharuch','8325215584','Deagan49@gmail.com'),(657,'Alistair','Barot','4/6/2000','GEC Bhavnagar','Rajkot','7834912783','Alistair18@gmail.com'),(658,'Anselm','Chudasma','21/6/1998','GEC Anand','Jamnagar','1642688532','Anselm57@gmail.com'),(659,'Damian','Doshi','2/12/2002','GIT Gandhinagar','Banaskantha','9263277459','Damian72@gmail.com'),(660,'Freddie','Mehta','23/2/2000','GIT Gandhinagar','Mehsana','1635698473','Freddie71@gmail.com'),(661,'Ciarian','Banarjee','12/2/2000','LJIET Ahmedabad','Amreli district','5687684873','Ciarian68@gmail.com'),(662,'Christopher-Lee','Doshi','18/6/2002','GEC Bhavnagar','Junagadh','9142291395','Christopher-Lee63@gmail.com'),(663,'Bodhan','Chakrabarty','26/4/1999','GEC Anand','Bharuch','4458853974','Bodhan53@gmail.com'),(664,'Folarinwa','Kotadiya','10/10/1998','GIT Gandhinagar','Valsad','5492373562','Folarinwa77@gmail.com'),(665,'Bailie','Makwana','19/10/2001','GMIT Bhavnagar','Narmada','7737253217','Bailie93@gmail.com'),(666,'Aidy','Suthar','2/7/2002','GEC Bhavnagar','Banaskantha','1491347566','Aidy75@gmail.com'),(667,'Athon','Mehta','2/1/2002','GMIT Bhavnagar','Bhavnagar','6536449282','Athon99@gmail.com'),(668,'Daren','Chudasma','9/7/2000','GMIT Bhavnagar','Sabarkantha','8388398562','Daren25@gmail.com'),(669,'Camerin','Panchal','28/4/2002','GMIT Bhavnagar','Surendranagar','3341139543','Camerin88@gmail.com'),(670,'Allesandro','Banarjee','13/2/1999','GEC Anand','Mehsana','7926598214','Allesandro63@gmail.com'),(671,'Glenn','Mistry','6/10/2002','GEC Bhavnagar','Jamnagar','9648881494','Glenn32@gmail.com'),(672,'Greig','Hingu','15/5/1998','LJIET Ahmedabad','Jamnagar','7153241695','Greig41@gmail.com'),(673,'Carter','Mistry','10/4/1999','GEC Anand','Bhavnagar','2498151874','Carter82@gmail.com'),(674,'Brayden','Chudasma','21/10/2002','GEC Gandhinagar','The Dangs','9632689425','Brayden37@gmail.com'),(675,'Ahmad','Bhavsar','18/3/2000','GIT Gandhinagar','Jamnagar','9226327467','Ahmad16@gmail.com'),(676,'Devin','Mehta','5/10/2001','LJIET Ahmedabad','Bharuch','2544188873','Devin56@gmail.com'),(677,'Alieu','Kotadiya','1/5/2000','GH Patel Anand','Amreli district','6238321354','Alieu94@gmail.com'),(678,'Conghaile','Modi','7/12/2000','GEC Gandhinagar','Vadodara','5346942676','Conghaile48@gmail.com'),(679,'Avraham','Doshi','26/8/1998','GIT Gandhinagar','Rajkot','6735771994','Avraham38@gmail.com'),(680,'Corey-Jay','Prajapati','15/5/1998','GEC Bhavnagar','Valsad','4578171573','Corey-Jay98@gmail.com'),(681,'Ayden','Sanghvi','12/10/2002','GH Patel Anand','Sabarkantha','2656125921','Ayden75@gmail.com'),(682,'Aonghus','Banarjee','9/11/2001','GH Patel Anand','Bharuch','2382831485','Aonghus98@gmail.com'),(683,'Eduardo','Mistry','14/6/1999','GEC Gandhinagar','Banaskantha','7526414199','Eduardo73@gmail.com'),(684,'Aarez','Makwana','23/1/2001','GMIT Bhavnagar','Porbandar','8811116361','Aarez22@gmail.com'),(685,'Dean','Bhavsar','11/2/2002','GEC Gandhinagar','Ahmedabad','3133238668','Dean57@gmail.com'),(686,'Connall','Panchal','25/3/2001','GEC Bhavnagar','Vadodara','4578383283','Connall44@gmail.com'),(687,'Heini','Mehta','2/2/1999','LJIET Ahmedabad','Sabarkantha','3493878759','Heini96@gmail.com'),(688,'Cian','Patel','7/2/2000','GMIT Bhavnagar','Bharuch','4649143577','Cian92@gmail.com'),(689,'Alvern','Sanghvi','25/7/2001','LJIET Ahmedabad','Ahmedabad','5942115984','Alvern36@gmail.com'),(690,'Abdulkarem','Modi','22/5/2002','GMIT Bhavnagar','Navsari','4514527465','Abdulkarem45@gmail.com'),(691,'Drakeo','Bhavsar','18/3/1998','GEC Anand','The Dangs','2981322417','Drakeo65@gmail.com'),(692,'Hubert','Sanghvi','7/2/1999','GEC Gandhinagar','Kheda','6233399324','Hubert47@gmail.com'),(693,'Coll','Joshi','10/11/2000','GMIT Bhavnagar','Amreli district','6941799595','Coll76@gmail.com'),(694,'Derek','Prajapati','22/5/2002','GH Patel Anand','Anand','6295518662','Derek99@gmail.com'),(695,'Dorian','Bhandari','9/12/2001','GEC Gandhinagar','Gandhinagar','7763338172','Dorian74@gmail.com'),(696,'Connan','Barot','9/9/1999','GH Patel Anand','Narmada','4549317912','Connan46@gmail.com'),(697,'Derrin','Mehta','1/11/1998','GEC Bhavnagar','Anand','3623736385','Derrin44@gmail.com'),(698,'Baxter','Bhandari','20/2/1998','GEC Modasa','Junagadh','1391469375','Baxter41@gmail.com'),(699,'Aedan','Mehta','14/5/2001','GEC Anand','Kheda','5796261733','Aedan68@gmail.com'),(700,'Dissanayake','Makwana','24/5/2000','GEC Anand','Patan','4682567526','Dissanayake71@gmail.com'),(701,'Athon','Doshi','27/12/2002','LJIET Ahmedabad','Kheda','2688881965','Athon84@gmail.com'),(702,'Dhani','Suthar','18/7/2002','GEC Gandhinagar','Anand','5479734356','Dhani82@gmail.com'),(703,'David','Modi','4/8/2002','GIT Gandhinagar','Banaskantha','5466475889','David43@gmail.com'),(704,'Dean','Hingu','9/10/2002','LJIET Ahmedabad','Banaskantha','7638588941','Dean44@gmail.com'),(705,'Adnan','Bhandari','8/6/1999','GEC Bhavnagar','Jamnagar','4754828894','Adnan52@gmail.com'),(706,'Andy','Joshi','12/8/2002','GEC Anand','Banaskantha','7137389113','Andy59@gmail.com'),(707,'Ami','Kotadiya','15/7/1999','GEC Modasa','Amreli district','3953639195','Ami83@gmail.com'),(708,'Eason','Bhandari','4/11/2000','GEC Gandhinagar','The Dangs','8268311781','Eason59@gmail.com'),(709,'Hussnan','Kotadiya','4/3/1998','LJIET Ahmedabad','Kheda','4483717381','Hussnan82@gmail.com'),(710,'Aidian','Makwana','4/9/1998','GMIT Bhavnagar','Jamnagar','3676252894','Aidian55@gmail.com'),(711,'Guerin','Banarjee','2/3/2000','GEC Modasa','Surat','4419741785','Guerin68@gmail.com'),(712,'Drakeo','Banarjee','8/2/2002','GEC Bhavnagar','Porbandar','5688894743','Drakeo21@gmail.com'),(713,'Christie','Suthar','1/2/1998','GEC Anand','Anand','1373273556','Christie73@gmail.com'),(714,'Garrett','Joshi','15/6/1999','GEC Anand','Amreli district','1512881651','Garrett55@gmail.com'),(715,'Brandan','Raval','12/5/1998','GEC Anand','Navsari','6332315399','Brandan41@gmail.com'),(716,'Abdirahman','Patel','10/7/1999','GH Patel Anand','Panchmahal','1328834983','Abdirahman68@gmail.com'),(717,'Azedine','Rajodiya','17/3/2002','GEC Gandhinagar','Porbandar','2688591266','Azedine71@gmail.com'),(718,'Idris','Bhandari','17/9/1999','GMIT Bhavnagar','Surat','3952151314','Idris63@gmail.com'),(719,'Eriz','Chakrabarty','18/5/1998','GEC Bhavnagar','Anand','5723615778','Eriz24@gmail.com'),(720,'Bruce','Mistry','26/12/2001','LJIET Ahmedabad','Rajkot','3816968195','Bruce87@gmail.com'),(721,'Denon','Banarjee','9/7/2002','GEC Modasa','Amreli district','7534493745','Denon81@gmail.com'),(722,'Amro','Doshi','25/9/2000','GEC Gandhinagar','Kutch','5966958814','Amro83@gmail.com'),(723,'Calib','Shah','9/4/1999','GH Patel Anand','Surendranagar','2238689736','Calib92@gmail.com'),(724,'Cael','Raval','22/9/2001','GMIT Bhavnagar','Navsari','1179275828','Cael15@gmail.com'),(725,'Callum','Doshi','16/10/1999','GEC Bhavnagar','Kheda','5489412175','Callum83@gmail.com'),(726,'Gallagher','Hingu','7/10/1998','LJIET Ahmedabad','Banaskantha','7781431443','Gallagher14@gmail.com'),(727,'Ewan','Rajodiya','6/3/2002','GEC Gandhinagar','Navsari','2997139273','Ewan22@gmail.com'),(728,'Henri','Makwana','1/11/2000','GEC Bhavnagar','Dahod','8526591499','Henri92@gmail.com'),(729,'Dmitri','Chudasma','3/4/2002','GMIT Bhavnagar','Patan','8414322847','Dmitri57@gmail.com'),(730,'Giacomo','Raval','21/11/2002','LJIET Ahmedabad','Mehsana','2399162779','Giacomo19@gmail.com'),(731,'Connell','Mistry','22/6/1998','GEC Modasa','Rajkot','4976757978','Connell39@gmail.com'),(732,'Anay','Modi','4/6/2002','GMIT Bhavnagar','Kutch','5638621274','Anay86@gmail.com'),(733,'Heyden','Chakrabarty','6/12/1998','GMIT Bhavnagar','Mehsana','9468857329','Heyden88@gmail.com'),(734,'Deegan','Doshi','3/11/2002','GH Patel Anand','Junagadh','6742412417','Deegan58@gmail.com'),(735,'Flint','Makwana','3/11/1998','GMIT Bhavnagar','Vadodara','8832433955','Flint35@gmail.com'),(736,'Angus','Sanghvi','13/3/1998','GEC Bhavnagar','Kheda','2863466589','Angus53@gmail.com'),(737,'Brendan','Makwana','1/11/1998','GEC Bhavnagar','Bharuch','2358383779','Brendan59@gmail.com'),(738,'Alf','Mehta','25/5/2000','GEC Bhavnagar','Vyara','1934749513','Alf27@gmail.com'),(739,'Adegbola','Sanghvi','6/11/2000','GEC Gandhinagar','Gandhinagar','7127391168','Adegbola84@gmail.com'),(740,'Bradly','Rajodiya','13/8/2001','GIT Gandhinagar','Navsari','6817334584','Bradly76@gmail.com'),(741,'Dylan-Jack','Bhandari','19/4/2001','GEC Anand','Vadodara','6734463141','Dylan-Jack66@gmail.com'),(742,'Ata','Shah','23/1/1999','GEC Anand','Sabarkantha','2949868961','Ata15@gmail.com'),(743,'Hussnain','Panchal','23/11/2001','GEC Anand','Banaskantha','3395336184','Hussnain82@gmail.com'),(744,'Callin','Kotadiya','26/1/2001','GEC Bhavnagar','Panchmahal','8811516462','Callin59@gmail.com'),(745,'Arunas','Modi','2/5/1998','GEC Gandhinagar','Surendranagar','4462437532','Arunas41@gmail.com'),(746,'Amrit','Suthar','6/12/2000','LJIET Ahmedabad','Surat','8498244986','Amrit67@gmail.com'),(747,'Asim','Bhandari','20/2/2001','GH Patel Anand','Bhavnagar','7328764692','Asim93@gmail.com'),(748,'Christoph','Patel','3/5/2001','GEC Anand','Dahod','1568848748','Christoph33@gmail.com'),(749,'Aodhan','Patel','20/7/2001','GMIT Bhavnagar','Vadodara','4571328792','Aodhan56@gmail.com'),(750,'Blazey','Mistry','22/10/1998','GEC Bhavnagar','Vadodara','5819335543','Blazey67@gmail.com'),(751,'Chu','Chudasma','11/8/1998','GEC Anand','Vyara','6769817224','Chu78@gmail.com'),(752,'Blaire','Makwana','5/4/2001','GEC Modasa','Narmada','9731148696','Blaire41@gmail.com'),(753,'Ibrahim','Shah','16/8/2000','GH Patel Anand','Narmada','9944758619','Ibrahim45@gmail.com'),(754,'Fruin','Shah','16/2/2001','LJIET Ahmedabad','Anand','5122961999','Fruin54@gmail.com'),(755,'Anay','Raval','10/2/1999','GMIT Bhavnagar','Anand','3361916387','Anay85@gmail.com'),(756,'Alec','Mehta','16/11/2000','GH Patel Anand','Dahod','8338848895','Alec42@gmail.com'),(757,'Crispin','Bhandari','10/3/2002','GEC Modasa','Narmada','5988446541','Crispin26@gmail.com'),(758,'Dilraj','Panchal','4/8/1998','GIT Gandhinagar','Junagadh','5359856344','Dilraj48@gmail.com'),(759,'Banan','Shah','2/3/2000','GIT Gandhinagar','Mehsana','4752991857','Banan28@gmail.com'),(760,'Cassy','Bhandari','28/9/2000','GEC Modasa','The Dangs','2948981686','Cassy46@gmail.com'),(761,'Artem','Prajapati','25/2/2001','GEC Gandhinagar','Panchmahal','4779916342','Artem76@gmail.com'),(762,'Franklin','Makwana','21/4/2001','GMIT Bhavnagar','Bharuch','5932116962','Franklin93@gmail.com'),(763,'Darryn','Mistry','9/12/2001','GH Patel Anand','Dahod','4672477596','Darryn98@gmail.com'),(764,'Alfie','Raval','13/11/2002','GEC Modasa','Rajkot','1565713935','Alfie37@gmail.com'),(765,'Denton','Suthar','20/9/1999','LJIET Ahmedabad','Navsari','3329515129','Denton86@gmail.com'),(766,'Ciar','Bhandari','21/4/1998','GIT Gandhinagar','Navsari','6846362226','Ciar46@gmail.com'),(767,'Dylan','Banarjee','4/11/2000','GEC Gandhinagar','Ahmedabad','2157642254','Dylan39@gmail.com'),(768,'Bryce','Raval','19/1/2002','GIT Gandhinagar','Valsad','8632453295','Bryce57@gmail.com'),(769,'Famara','Mehta','19/5/1998','GIT Gandhinagar','Rajkot','3835129972','Famara24@gmail.com'),(770,'Glenn','Sanghvi','10/2/2002','GEC Modasa','Patan','6355523682','Glenn27@gmail.com'),(771,'Florin','Sanghvi','15/2/2000','LJIET Ahmedabad','Vadodara','7329198136','Florin32@gmail.com'),(772,'Athos-Carlos','Doshi','15/9/2001','GEC Bhavnagar','Vyara','8296397492','Athos-Carlos59@gmail.com'),(773,'Conlin','Bhandari','27/7/2001','LJIET Ahmedabad','Jamnagar','7767154418','Conlin38@gmail.com'),(774,'Anselm','Suthar','26/9/2002','LJIET Ahmedabad','Surat','8299643331','Anselm58@gmail.com'),(775,'Cavan','Hingu','3/7/2002','GEC Bhavnagar','Panchmahal','2439579593','Cavan18@gmail.com'),(776,'Abid','Joshi','6/6/1999','GEC Bhavnagar','Junagadh','8115271318','Abid73@gmail.com'),(777,'Alec','Chakrabarty','10/11/2001','GMIT Bhavnagar','Vyara','4512235774','Alec75@gmail.com'),(778,'Demetrius','Chakrabarty','5/3/2000','GH Patel Anand','Sabarkantha','4167162532','Demetrius45@gmail.com'),(779,'Babur','Raval','8/10/2001','LJIET Ahmedabad','Kutch','1789468861','Babur61@gmail.com'),(780,'Faheem','Chakrabarty','24/1/2000','GMIT Bhavnagar','Navsari','8168128496','Faheem35@gmail.com'),(781,'Deniss','Mehta','5/12/2002','GEC Anand','Porbandar','6785656225','Deniss89@gmail.com'),(782,'Deniss','Hingu','19/3/1998','GH Patel Anand','Bharuch','8536725272','Deniss33@gmail.com'),(783,'Alekzander','Bhavsar','19/5/1999','GIT Gandhinagar','Dahod','3758875656','Alekzander18@gmail.com'),(784,'Chu','Patel','24/10/2002','GEC Gandhinagar','Porbandar','3156869379','Chu68@gmail.com'),(785,'Deagan','Bhavsar','9/2/2002','GEC Gandhinagar','Kheda','3146738161','Deagan71@gmail.com'),(786,'Arandeep','Kotadiya','6/11/1998','GMIT Bhavnagar','Mehsana','6874537865','Arandeep91@gmail.com'),(787,'Dane','Sanghvi','16/1/2001','LJIET Ahmedabad','Surat','6752367733','Dane86@gmail.com'),(788,'Cairn','Shah','5/7/2000','LJIET Ahmedabad','Amreli district','7896767863','Cairn34@gmail.com'),(789,'Caedyn','Kotadiya','18/7/2001','GMIT Bhavnagar','Banaskantha','8189152653','Caedyn82@gmail.com'),(790,'Chris','Mehta','25/9/1999','GEC Anand','Vadodara','6718549785','Chris67@gmail.com'),(791,'Ikechukwu','Panchal','1/5/1999','LJIET Ahmedabad','Surendranagar','3511775558','Ikechukwu19@gmail.com'),(792,'Baillie','Raval','25/4/2001','GEC Modasa','Gandhinagar','1218284833','Baillie68@gmail.com'),(793,'Ahmad','Rajodiya','21/10/2001','GIT Gandhinagar','Gandhinagar','8992623681','Ahmad94@gmail.com'),(794,'Abdul-Aziz','Hingu','3/3/1998','LJIET Ahmedabad','Amreli district','1866651834','Abdul-Aziz15@gmail.com'),(795,'Cailin','Sanghvi','10/5/1998','GH Patel Anand','Junagadh','3685773189','Cailin45@gmail.com'),(796,'Anndra','Hingu','7/8/2002','GH Patel Anand','Vadodara','3965383785','Anndra59@gmail.com'),(797,'Artur','Barot','11/5/1998','GEC Anand','Patan','8781698732','Artur37@gmail.com'),(798,'Bracken','Panchal','8/5/1999','GEC Anand','Bhavnagar','4641317657','Bracken25@gmail.com'),(799,'Cobi','Bhandari','26/3/2002','GIT Gandhinagar','Vyara','6254486682','Cobi67@gmail.com'),(800,'Ashwin','Doshi','19/12/1999','GEC Bhavnagar','Anand','6253986891','Ashwin94@gmail.com'),(801,'Copeland','Doshi','11/12/1998','GEC Anand','Porbandar','7911731794','Copeland61@gmail.com'),(802,'Arman','Shah','4/2/1998','LJIET Ahmedabad','Navsari','2521388765','Arman46@gmail.com'),(803,'Ainsley','Bhandari','26/6/1999','GEC Modasa','Dahod','1815686337','Ainsley68@gmail.com'),(804,'Davi','Doshi','1/7/2001','GEC Gandhinagar','Jamnagar','4985272284','Davi42@gmail.com'),(805,'Barkley','Kotadiya','27/10/2001','GH Patel Anand','Vadodara','6364229715','Barkley74@gmail.com'),(806,'Findlie','Prajapati','14/11/2002','GIT Gandhinagar','Patan','6368618963','Findlie81@gmail.com'),(807,'Calum-James','Shah','24/6/1999','GEC Gandhinagar','Narmada','3758383935','Calum-James34@gmail.com'),(808,'Altyiab','Modi','7/1/1998','GIT Gandhinagar','Vyara','4499474632','Altyiab64@gmail.com'),(809,'Chris-Daniel','Mehta','1/4/2000','GIT Gandhinagar','Gandhinagar','7989982261','Chris-Daniel19@gmail.com'),(810,'Arthur','Banarjee','7/2/2000','GIT Gandhinagar','Panchmahal','7328511569','Arthur53@gmail.com'),(811,'Eugene','Banarjee','7/10/1998','GH Patel Anand','Jamnagar','8395613582','Eugene45@gmail.com'),(812,'Aman','Raval','27/7/1999','GEC Gandhinagar','Sabarkantha','7481114978','Aman11@gmail.com'),(813,'Corin','Makwana','28/3/2001','LJIET Ahmedabad','Bharuch','7452361895','Corin13@gmail.com'),(814,'Cade','Suthar','28/4/1998','GEC Bhavnagar','Anand','7441864942','Cade95@gmail.com'),(815,'Aman','Chakrabarty','23/11/2002','GEC Anand','Amreli district','2562575589','Aman24@gmail.com'),(816,'Bader','Raval','12/2/2000','GH Patel Anand','Banaskantha','3917584521','Bader71@gmail.com'),(817,'Alister','Rajodiya','11/4/2001','GEC Anand','Bhavnagar','6545838775','Alister68@gmail.com'),(818,'Afonso','Bhandari','15/6/1998','LJIET Ahmedabad','Bhavnagar','3349773576','Afonso41@gmail.com'),(819,'Braydyn','Bhavsar','1/10/2001','GEC Bhavnagar','Narmada','9875923923','Braydyn75@gmail.com'),(820,'Conan','Kotadiya','18/9/2000','LJIET Ahmedabad','Ahmedabad','8788354961','Conan63@gmail.com'),(821,'Forrest','Bhandari','19/12/2001','GIT Gandhinagar','Narmada','7715859119','Forrest47@gmail.com'),(822,'Deelan','Chudasma','28/9/2000','GIT Gandhinagar','Kutch','1572272888','Deelan82@gmail.com'),(823,'Francesco','Suthar','8/10/1998','GMIT Bhavnagar','Anand','7686553272','Francesco37@gmail.com'),(824,'Dakota','Mehta','24/4/2000','GEC Anand','Ahmedabad','3885116849','Dakota19@gmail.com'),(825,'Corran','Panchal','1/6/2000','GH Patel Anand','Jamnagar','9188325884','Corran51@gmail.com'),(826,'Brogan','Banarjee','16/10/2002','GEC Modasa','Narmada','6913141357','Brogan48@gmail.com'),(827,'Amos','Prajapati','3/3/2000','GEC Anand','Junagadh','6222763529','Amos33@gmail.com'),(828,'Cory','Patel','8/7/2001','GEC Gandhinagar','Dahod','4384617911','Cory65@gmail.com'),(829,'Cory','Patel','21/7/2002','GMIT Bhavnagar','Patan','8433392947','Cory48@gmail.com'),(830,'Arihant','Bhandari','28/4/2000','LJIET Ahmedabad','Bhavnagar','3143271763','Arihant47@gmail.com'),(831,'Bryn','Makwana','2/7/2000','GEC Bhavnagar','Ahmedabad','2522588935','Bryn48@gmail.com'),(832,'Christopher','Banarjee','22/6/1998','GEC Modasa','Dahod','4878152641','Christopher44@gmail.com'),(833,'Arian','Prajapati','2/7/1998','GH Patel Anand','Bharuch','4395257664','Arian38@gmail.com'),(834,'Hussain','Barot','17/1/2002','GEC Gandhinagar','Kutch','4766984377','Hussain59@gmail.com'),(835,'Ezra','Chudasma','5/4/2000','GH Patel Anand','Bhavnagar','5633341589','Ezra14@gmail.com'),(836,'Darragh','Sanghvi','25/2/1999','LJIET Ahmedabad','Panchmahal','7179687661','Darragh15@gmail.com'),(837,'Hosea','Prajapati','4/3/2002','GEC Anand','Navsari','2337479276','Hosea82@gmail.com'),(838,'Ezra','Rajodiya','21/3/1999','GMIT Bhavnagar','Rajkot','1965417213','Ezra11@gmail.com'),(839,'Ciaran','Raval','23/9/2002','GEC Anand','Porbandar','6516124178','Ciaran29@gmail.com'),(840,'Hcen','Bhandari','24/12/1998','GEC Anand','Rajkot','5373164332','Hcen47@gmail.com'),(841,'Farren','Shah','4/9/1998','GMIT Bhavnagar','Patan','1984621691','Farren54@gmail.com'),(842,'Folarinwa','Hingu','3/7/1999','GEC Bhavnagar','Bhavnagar','6529816686','Folarinwa27@gmail.com'),(843,'Chrismedi','Patel','18/7/2000','GEC Anand','Surat','6194583883','Chrismedi66@gmail.com'),(844,'Asrar','Barot','27/9/2000','GEC Bhavnagar','Rajkot','8982786155','Asrar25@gmail.com'),(845,'Ari','Makwana','15/1/2000','LJIET Ahmedabad','Ahmedabad','7778138735','Ari94@gmail.com'),(846,'Cailaen','Shah','25/10/1999','GIT Gandhinagar','Navsari','9593337862','Cailaen49@gmail.com'),(847,'Daniels','Kotadiya','12/2/2001','GMIT Bhavnagar','Kheda','1761579569','Daniels55@gmail.com'),(848,'Evann','Kotadiya','16/6/1999','GEC Modasa','Patan','7738755312','Evann29@gmail.com'),(849,'Franciszek','Panchal','1/3/1998','LJIET Ahmedabad','Porbandar','2864338837','Franciszek98@gmail.com'),(850,'Dennis','Mistry','4/9/1998','GMIT Bhavnagar','Panchmahal','9989948355','Dennis49@gmail.com'),(851,'Darcy','Sanghvi','12/11/2002','GMIT Bhavnagar','Rajkot','6755239524','Darcy42@gmail.com'),(852,'Dawud','Panchal','11/7/1999','GIT Gandhinagar','Amreli district','6326931729','Dawud51@gmail.com'),(853,'Amrit','Patel','17/2/2000','GEC Modasa','Sabarkantha','3185243891','Amrit84@gmail.com'),(854,'Cody','Doshi','12/12/1998','GEC Modasa','The Dangs','8556669958','Cody12@gmail.com'),(855,'Alisdair','Chakrabarty','28/1/2002','GEC Anand','Rajkot','3433249848','Alisdair65@gmail.com'),(856,'Gil','Makwana','18/7/1998','GH Patel Anand','Anand','3225837329','Gil12@gmail.com'),(857,'Eriz','Chakrabarty','9/3/1998','GEC Gandhinagar','Rajkot','2282931246','Eriz87@gmail.com'),(858,'Anthony','Suthar','22/4/1998','GH Patel Anand','Rajkot','8372633888','Anthony59@gmail.com'),(859,'Clarke','Modi','17/6/2002','GEC Gandhinagar','Jamnagar','3591697914','Clarke32@gmail.com'),(860,'Gareth','Prajapati','11/4/2001','GIT Gandhinagar','Kheda','4658191973','Gareth97@gmail.com'),(861,'Cody','Sanghvi','15/1/2000','GEC Modasa','Navsari','9128937489','Cody95@gmail.com'),(862,'Husnain','Bhavsar','17/12/2001','GH Patel Anand','The Dangs','5467582771','Husnain12@gmail.com'),(863,'Dawud','Patel','17/3/2000','GIT Gandhinagar','Anand','7115691225','Dawud69@gmail.com'),(864,'Eduardo','Hingu','20/11/1998','LJIET Ahmedabad','Valsad','7711941281','Eduardo66@gmail.com'),(865,'Callum','Doshi','1/10/1999','GEC Modasa','Mehsana','3364759873','Callum73@gmail.com'),(866,'Derron','Doshi','3/10/2000','GMIT Bhavnagar','Vadodara','7635137991','Derron62@gmail.com'),(867,'Diarmid','Makwana','26/3/1998','GIT Gandhinagar','Banaskantha','1617485977','Diarmid39@gmail.com'),(868,'Dakota','Hingu','10/9/2001','LJIET Ahmedabad','Valsad','5589972581','Dakota94@gmail.com'),(869,'Diego','Sanghvi','3/9/2001','GH Patel Anand','Valsad','6642145421','Diego95@gmail.com'),(870,'Callahan','Raval','23/8/1999','GEC Anand','Amreli district','5252469412','Callahan26@gmail.com'),(871,'Conli','Mehta','15/3/2001','GEC Gandhinagar','Amreli district','3949686851','Conli58@gmail.com'),(872,'Ammaar','Rajodiya','6/12/2002','GEC Anand','Amreli district','2224813425','Ammaar48@gmail.com'),(873,'Dougal','Barot','9/6/1999','LJIET Ahmedabad','Amreli district','5326679488','Dougal92@gmail.com'),(874,'Colton','Bhandari','15/10/2001','LJIET Ahmedabad','Jamnagar','6418919259','Colton46@gmail.com'),(875,'Abdur-Rehmaan','Chudasma','24/11/2002','LJIET Ahmedabad','Panchmahal','5984188248','Abdur-Rehmaan19@gmail.com'),(876,'Dawid','Doshi','10/11/1999','GEC Anand','Amreli district','4759216797','Dawid15@gmail.com'),(877,'Edwin','Modi','7/3/2002','GIT Gandhinagar','Jamnagar','2198674585','Edwin79@gmail.com'),(878,'Ayomide','Makwana','24/9/1998','GEC Anand','Panchmahal','9934261198','Ayomide67@gmail.com'),(879,'Alasdair','Raval','4/6/2001','GH Patel Anand','Surendranagar','3696496438','Alasdair56@gmail.com'),(880,'Dayem','Modi','21/9/2001','GIT Gandhinagar','Anand','8849131288','Dayem29@gmail.com'),(881,'Colton','Raval','20/3/2002','GEC Anand','Surendranagar','3492892826','Colton94@gmail.com'),(882,'Fox','Banarjee','14/12/2001','GIT Gandhinagar','Navsari','8297692842','Fox94@gmail.com'),(883,'Colt','Bhandari','7/9/2001','GMIT Bhavnagar','Sabarkantha','2416393514','Colt28@gmail.com'),(884,'Danys','Modi','27/2/2000','GEC Gandhinagar','Navsari','2414661725','Danys56@gmail.com'),(885,'Blazey','Raval','17/1/2001','GEC Bhavnagar','Rajkot','3435522285','Blazey28@gmail.com'),(886,'Ericlee','Kotadiya','2/2/2001','GEC Gandhinagar','Dahod','6468373127','Ericlee45@gmail.com'),(887,'Chin','Mistry','20/4/2000','GEC Anand','Gandhinagar','6157573982','Chin38@gmail.com'),(888,'Drakeo','Patel','8/5/1998','GMIT Bhavnagar','Junagadh','7216778485','Drakeo85@gmail.com'),(889,'Atom','Chakrabarty','24/5/1999','GEC Bhavnagar','Amreli district','3244881312','Atom27@gmail.com'),(890,'Ethan','Makwana','2/11/2002','GMIT Bhavnagar','Rajkot','9919951461','Ethan76@gmail.com'),(891,'Dakota','Bhandari','16/3/1998','GIT Gandhinagar','Gandhinagar','2332771462','Dakota84@gmail.com'),(892,'Basher','Mistry','28/6/1999','GEC Gandhinagar','The Dangs','8462938292','Basher98@gmail.com'),(893,'Dalton','Kotadiya','22/1/2002','GEC Anand','Bharuch','1676766513','Dalton82@gmail.com'),(894,'Carter','Banarjee','26/8/2001','LJIET Ahmedabad','Sabarkantha','9396168594','Carter75@gmail.com'),(895,'Chu','Suthar','5/5/1999','GMIT Bhavnagar','Patan','6931678538','Chu33@gmail.com'),(896,'Conal','Makwana','13/9/2002','GH Patel Anand','Vyara','1678114855','Conal59@gmail.com'),(897,'Cole','Bhandari','17/1/1998','GMIT Bhavnagar','Rajkot','2689151748','Cole96@gmail.com'),(898,'Cormac','Chudasma','27/7/1998','LJIET Ahmedabad','Banaskantha','7167432533','Cormac78@gmail.com'),(899,'Diarmuid','Banarjee','5/4/1999','GEC Bhavnagar','The Dangs','4584612765','Diarmuid31@gmail.com'),(900,'Abdirahman','Mehta','15/4/1999','GEC Anand','Bhavnagar','5444491136','Abdirahman19@gmail.com'),(901,'Alvern','Patel','18/1/2002','GEC Anand','Vadodara','5278556321','Alvern41@gmail.com'),(902,'Bodhan','Makwana','22/2/1999','GEC Anand','Gandhinagar','3835215269','Bodhan33@gmail.com'),(903,'Hcen','Patel','22/10/2000','GH Patel Anand','The Dangs','8637987741','Hcen51@gmail.com'),(904,'Eamonn','Chakrabarty','5/7/2002','GEC Modasa','Kheda','4474425159','Eamonn67@gmail.com'),(905,'Fawaz','Prajapati','17/3/2001','LJIET Ahmedabad','Kutch','8583134616','Fawaz67@gmail.com'),(906,'Dalong','Rajodiya','6/5/2002','GEC Gandhinagar','Sabarkantha','7555537365','Dalong48@gmail.com'),(907,'Abraham','Joshi','24/2/1999','GMIT Bhavnagar','Banaskantha','9686984918','Abraham61@gmail.com'),(908,'Brydon','Patel','12/12/1998','LJIET Ahmedabad','Gandhinagar','1138957945','Brydon68@gmail.com'),(909,'Darrell','Panchal','14/9/1999','GH Patel Anand','Junagadh','9835854179','Darrell25@gmail.com'),(910,'Aonghus','Barot','24/11/1998','GEC Gandhinagar','Bharuch','2387663271','Aonghus78@gmail.com'),(911,'Blue','Prajapati','9/8/1998','GEC Modasa','Mehsana','1673974783','Blue82@gmail.com'),(912,'Denon','Mistry','22/9/2002','LJIET Ahmedabad','Sabarkantha','4698947185','Denon24@gmail.com'),(913,'Deecan','Rajodiya','23/1/2002','GH Patel Anand','Bhavnagar','6359442435','Deecan98@gmail.com'),(914,'Ashlee-jay','Chudasma','27/9/2000','LJIET Ahmedabad','Amreli district','3686241112','Ashlee-jay41@gmail.com'),(915,'Babur','Bhandari','22/2/2001','GH Patel Anand','Vadodara','9655774576','Babur32@gmail.com'),(916,'Deelan','Rajodiya','1/9/2002','GEC Bhavnagar','Gandhinagar','6999966263','Deelan19@gmail.com'),(917,'Arya','Chakrabarty','23/9/2001','GMIT Bhavnagar','Kutch','8629981491','Arya24@gmail.com'),(918,'Dyllon','Doshi','19/7/1998','GMIT Bhavnagar','Sabarkantha','7882891928','Dyllon19@gmail.com'),(919,'Camron','Kotadiya','27/1/1998','GEC Gandhinagar','Anand','8566376196','Camron33@gmail.com'),(920,'Finlay','Makwana','20/7/2000','GIT Gandhinagar','Kheda','8855498658','Finlay29@gmail.com'),(921,'Frazer','Bhavsar','16/6/2002','GH Patel Anand','Dahod','5599796382','Frazer72@gmail.com'),(922,'Coby','Mehta','13/2/1998','GEC Modasa','Vyara','2683672828','Coby12@gmail.com'),(923,'Corey-James','Banarjee','18/1/1999','GEC Modasa','The Dangs','5381194484','Corey-James47@gmail.com'),(924,'Ieuan','Suthar','13/3/1998','GIT Gandhinagar','Surendranagar','3623894589','Ieuan52@gmail.com'),(925,'Geordie','Makwana','18/4/2000','GEC Bhavnagar','Jamnagar','2847932823','Geordie37@gmail.com'),(926,'Calan','Panchal','13/8/2000','GEC Gandhinagar','Sabarkantha','5233372746','Calan12@gmail.com'),(927,'Girius','Barot','8/10/2000','GMIT Bhavnagar','Bharuch','9443726274','Girius72@gmail.com'),(928,'Grzegorz','Raval','14/11/1999','GIT Gandhinagar','Gandhinagar','6747281296','Grzegorz59@gmail.com'),(929,'Calib','Mistry','15/7/1999','GEC Anand','Navsari','1247598699','Calib41@gmail.com'),(930,'Aiden','Chakrabarty','26/6/2002','GMIT Bhavnagar','Narmada','6194146811','Aiden83@gmail.com'),(931,'Aulay','Joshi','14/1/2001','GEC Gandhinagar','Bharuch','7226263343','Aulay62@gmail.com'),(932,'Glen','Hingu','10/1/1998','GEC Modasa','Patan','1678342765','Glen58@gmail.com'),(933,'Denzel','Rajodiya','12/11/1999','LJIET Ahmedabad','Kutch','6836447129','Denzel34@gmail.com'),(934,'Callun','Kotadiya','17/12/2001','GEC Modasa','Rajkot','9554394752','Callun47@gmail.com'),(935,'Hosea','Barot','11/5/1999','GEC Bhavnagar','Porbandar','6131583141','Hosea39@gmail.com'),(936,'Abhinav','Barot','9/8/1999','GIT Gandhinagar','Narmada','3169132463','Abhinav46@gmail.com'),(937,'Cullin','Suthar','9/8/1999','GH Patel Anand','Rajkot','1214643842','Cullin69@gmail.com'),(938,'Cormak','Mehta','15/4/1998','GEC Bhavnagar','Navsari','7887369823','Cormak29@gmail.com'),(939,'Fyfe','Rajodiya','5/9/2002','GH Patel Anand','Gandhinagar','2341174159','Fyfe19@gmail.com'),(940,'Anmolpreet','Chakrabarty','25/8/1998','GEC Modasa','Ahmedabad','4183315257','Anmolpreet21@gmail.com'),(941,'Allesandro','Bhandari','4/9/1999','GEC Gandhinagar','Anand','9835112774','Allesandro27@gmail.com'),(942,'Darroch','Doshi','3/6/2000','GEC Gandhinagar','Rajkot','9582263327','Darroch66@gmail.com'),(943,'Athol','Patel','1/7/2001','GEC Modasa','Amreli district','6932566216','Athol61@gmail.com'),(944,'Corran','Chakrabarty','26/12/2001','GIT Gandhinagar','Kutch','2594255352','Corran28@gmail.com'),(945,'Aydon','Bhavsar','1/7/1999','GH Patel Anand','Surat','7273175858','Aydon27@gmail.com'),(946,'Gary','Raval','9/6/2001','GIT Gandhinagar','Patan','8714945914','Gary66@gmail.com'),(947,'Ash','Joshi','12/6/2001','GMIT Bhavnagar','Valsad','2969874879','Ash98@gmail.com'),(948,'Caiden-Paul','Sanghvi','24/3/2000','GH Patel Anand','Jamnagar','8452375928','Caiden-Paul61@gmail.com'),(949,'Abdur-Rehmaan','Chakrabarty','7/12/1998','GMIT Bhavnagar','Sabarkantha','2618183133','Abdur-Rehmaan84@gmail.com'),(950,'Conar','Panchal','22/4/2000','GEC Gandhinagar','Valsad','5964874689','Conar95@gmail.com'),(951,'Amrinder','Makwana','25/9/1998','LJIET Ahmedabad','Kutch','4743317658','Amrinder77@gmail.com'),(952,'Eoghain','Sanghvi','7/9/1999','GEC Modasa','Amreli district','8865812255','Eoghain79@gmail.com'),(953,'Archie','Joshi','19/12/1999','GEC Bhavnagar','Mehsana','5781255365','Archie44@gmail.com'),(954,'Anesu','Modi','3/11/2001','GEC Modasa','Gandhinagar','7123988997','Anesu39@gmail.com'),(955,'Gideon','Kotadiya','25/10/2001','GMIT Bhavnagar','Kheda','4243136144','Gideon49@gmail.com'),(956,'Abdihakim','Joshi','13/8/2001','GH Patel Anand','Bharuch','5667238823','Abdihakim74@gmail.com'),(957,'Afonso','Panchal','8/5/2001','GMIT Bhavnagar','Patan','8152768768','Afonso12@gmail.com'),(958,'Corrie','Raval','14/12/2000','GEC Anand','Kheda','4467566189','Corrie28@gmail.com'),(959,'Allesandro','Kotadiya','24/10/1999','GIT Gandhinagar','Kutch','9572764281','Allesandro21@gmail.com'),(960,'Azaan','Chakrabarty','24/9/2002','GEC Modasa','Bhavnagar','1716777518','Azaan22@gmail.com'),(961,'Decklan','Rajodiya','24/8/1999','GIT Gandhinagar','Panchmahal','1378695974','Decklan72@gmail.com'),(962,'Bailie','Mistry','11/3/2001','GEC Anand','Surat','1351658964','Bailie17@gmail.com'),(963,'Albert','Chakrabarty','8/3/1998','GEC Gandhinagar','Kheda','9541941944','Albert51@gmail.com'),(964,'Aaryan','Prajapati','15/6/2000','GEC Modasa','Surat','1537773521','Aaryan94@gmail.com'),(965,'Geoff','Makwana','16/12/1998','GEC Bhavnagar','Narmada','6435463622','Geoff59@gmail.com'),(966,'AJ','Bhandari','16/7/2002','GEC Modasa','Panchmahal','7577553362','AJ59@gmail.com'),(967,'Alexander','Prajapati','17/11/2001','GEC Modasa','Gandhinagar','3667483369','Alexander34@gmail.com'),(968,'Coll','Kotadiya','4/11/2002','GEC Gandhinagar','Kheda','9826731378','Coll98@gmail.com'),(969,'Aleksandr','Joshi','9/10/2000','GEC Anand','Surendranagar','2173642767','Aleksandr62@gmail.com'),(970,'Basher','Sanghvi','10/6/2002','GMIT Bhavnagar','Valsad','3488128937','Basher49@gmail.com'),(971,'Brayden','Rajodiya','15/5/2000','GMIT Bhavnagar','Amreli district','3152736732','Brayden74@gmail.com'),(972,'Garren','Kotadiya','21/9/2000','GEC Modasa','Mehsana','6756129988','Garren85@gmail.com'),(973,'Graham','Chudasma','25/11/2001','GEC Gandhinagar','Vyara','8942454974','Graham44@gmail.com'),(974,'Ayrton','Modi','3/4/1998','GEC Gandhinagar','Surendranagar','1248736171','Ayrton17@gmail.com'),(975,'Greg','Modi','25/12/2002','GMIT Bhavnagar','Sabarkantha','5923937333','Greg93@gmail.com'),(976,'Ambanimoh','Banarjee','20/5/1999','GEC Bhavnagar','Surendranagar','6687352193','Ambanimoh75@gmail.com'),(977,'Hunter','Doshi','3/12/2000','GMIT Bhavnagar','Junagadh','2636971148','Hunter59@gmail.com'),(978,'Doire','Mistry','15/5/2002','GMIT Bhavnagar','Kheda','3314633686','Doire67@gmail.com'),(979,'Artur','Hingu','4/9/1998','GMIT Bhavnagar','Mehsana','1235553577','Artur54@gmail.com'),(980,'Albert','Joshi','7/4/2002','LJIET Ahmedabad','Banaskantha','5988756766','Albert21@gmail.com'),(981,'Arthur','Joshi','12/8/2000','GH Patel Anand','Navsari','5645686288','Arthur37@gmail.com'),(982,'Callahan','Banarjee','4/6/2001','GEC Modasa','Narmada','5146561838','Callahan36@gmail.com'),(983,'Aleksandar','Hingu','7/11/2000','GIT Gandhinagar','Surendranagar','2763277186','Aleksandar65@gmail.com'),(984,'Addison','Panchal','11/5/1999','LJIET Ahmedabad','Sabarkantha','6276664133','Addison29@gmail.com'),(985,'Fred','Raval','10/12/2002','GEC Gandhinagar','Ahmedabad','7387334332','Fred31@gmail.com'),(986,'Douglas','Mehta','15/6/2002','LJIET Ahmedabad','Bhavnagar','2885724848','Douglas48@gmail.com'),(987,'Avraham','Mehta','19/9/1999','GEC Gandhinagar','Anand','3379353497','Avraham37@gmail.com'),(988,'Cruiz','Chudasma','28/9/1999','GEC Gandhinagar','Navsari','9195242272','Cruiz76@gmail.com'),(989,'Billy','Joshi','12/9/1998','GEC Gandhinagar','Navsari','4137482542','Billy61@gmail.com'),(990,'Davis','Mistry','25/6/2000','GEC Gandhinagar','Vyara','3473711842','Davis89@gmail.com'),(991,'Abdulbasir','Joshi','9/10/2001','GEC Anand','Bhavnagar','1562986262','Abdulbasir51@gmail.com'),(992,'Garrett','Kotadiya','25/4/2001','GEC Bhavnagar','Kheda','2984125942','Garrett26@gmail.com'),(993,'Arsalan','Bhandari','10/6/2002','GEC Gandhinagar','Ahmedabad','9657899977','Arsalan93@gmail.com'),(994,'Anselm','Modi','8/3/2000','GEC Anand','Panchmahal','7382256654','Anselm52@gmail.com'),(995,'Farhaan','Suthar','16/8/2001','GEC Anand','Vyara','8232224597','Farhaan96@gmail.com'),(996,'Alexx','Mistry','19/3/2001','GEC Bhavnagar','Ahmedabad','8728279961','Alexx16@gmail.com'),(997,'Antonio','Patel','19/3/1998','LJIET Ahmedabad','Patan','8276926926','Antonio48@gmail.com'),(998,'Diesel','Shah','9/6/2001','GMIT Bhavnagar','Narmada','2969327521','Diesel76@gmail.com'),(999,'Frank','Modi','9/9/1998','GEC Bhavnagar','Bharuch','3296544798','Frank64@gmail.com'),(1000,'Aun','Kotadiya','17/12/2001','GEC Modasa','The Dangs','5885419532','Aun56@gmail.com'),(1001,'Calvin','Mehta','18/8/1999','GH Patel Anand','Patan','6376485279','Calvin59@gmail.com'),(1002,'Fyfe','Chudasma','20/4/1999','GH Patel Anand','Amreli district','8565819762','Fyfe23@gmail.com'),(1003,'Andrew','Sanghvi','10/11/2001','GIT Gandhinagar','Navsari','4239128315','Andrew26@gmail.com'),(1004,'Dara','Bhavsar','4/11/1998','GH Patel Anand','Bhavnagar','7151435182','Dara72@gmail.com'),(1005,'Darrius','Hingu','10/9/1998','GEC Bhavnagar','Gandhinagar','1581553666','Darrius24@gmail.com'),(1006,'Dennan','Kotadiya','10/3/2002','GEC Anand','Bharuch','3973498237','Dennan95@gmail.com'),(1007,'Braydyn','Suthar','28/2/1999','GEC Bhavnagar','Kheda','3985393812','Braydyn31@gmail.com'),(1008,'Ashley','Suthar','17/9/1998','GEC Modasa','Kutch','5434312479','Ashley22@gmail.com'),(1009,'Davy','Prajapati','7/11/1998','GEC Gandhinagar','Porbandar','9917395683','Davy57@gmail.com'),(1010,'Ernie-Jacks','Panchal','27/12/2000','GEC Bhavnagar','Gandhinagar','9648845256','Ernie-Jacks94@gmail.com'),(1011,'Hong','Chakrabarty','19/2/2002','GEC Gandhinagar','Surendranagar','4322153935','Hong26@gmail.com'),(1012,'Allister','Chakrabarty','24/3/2000','GEC Gandhinagar','Valsad','7311126638','Allister81@gmail.com'),(1013,'Danish','Mehta','1/1/1998','GH Patel Anand','Navsari','6583378619','Danish49@gmail.com'),(1014,'Dhyia','Banarjee','14/1/1998','GIT Gandhinagar','Rajkot','3631577125','Dhyia98@gmail.com'),(1015,'Danyal','Prajapati','27/3/1999','GEC Anand','Valsad','2788379417','Danyal79@gmail.com'),(1016,'Deegan','Modi','8/6/2002','GEC Modasa','Narmada','7328377627','Deegan43@gmail.com'),(1017,'Abdul-Aziz','Joshi','9/3/1999','GEC Bhavnagar','Surat','7545711933','Abdul-Aziz29@gmail.com'),(1018,'Ayyub','Mehta','10/9/1999','GEC Modasa','Bharuch','1143493431','Ayyub22@gmail.com'),(1019,'Calley','Suthar','11/12/2000','GEC Bhavnagar','Kheda','5957425236','Calley17@gmail.com'),(1020,'Bilal','Doshi','15/4/1999','GEC Bhavnagar','Kutch','9823179549','Bilal88@gmail.com'),(1021,'Aydin','Rajodiya','26/2/2002','GIT Gandhinagar','Surat','6489687642','Aydin21@gmail.com'),(1022,'Alan','Suthar','15/8/2002','GEC Bhavnagar','Patan','1299699421','Alan23@gmail.com'),(1023,'Howie','Prajapati','5/4/1999','GEC Bhavnagar','Porbandar','7656719415','Howie67@gmail.com'),(1024,'Albert','Hingu','9/4/2000','LJIET Ahmedabad','Navsari','1824626536','Albert74@gmail.com'),(1025,'Dylan-John','Shah','13/8/1998','GEC Bhavnagar','Sabarkantha','6228968823','Dylan-John46@gmail.com'),(1026,'Georgy','Bhandari','20/6/1998','LJIET Ahmedabad','Anand','7727421127','Georgy47@gmail.com'),(1027,'Antoni','Hingu','8/10/1998','GEC Gandhinagar','Anand','2313968649','Antoni18@gmail.com'),(1028,'Calvin','Doshi','7/11/1998','GMIT Bhavnagar','Surat','1269744692','Calvin66@gmail.com'),(1029,'Colton','Bhandari','24/11/2002','GEC Modasa','Jamnagar','3543495199','Colton81@gmail.com'),(1030,'Hayden','Raval','14/8/1998','GEC Modasa','Rajkot','5518223532','Hayden28@gmail.com'),(1031,'Brunon','Joshi','3/1/1999','GEC Bhavnagar','Ahmedabad','2747521327','Brunon26@gmail.com'),(1032,'Ghyll','Panchal','3/6/2000','GIT Gandhinagar','The Dangs','4586123381','Ghyll89@gmail.com'),(1033,'Dalton','Makwana','16/2/2000','GH Patel Anand','Surendranagar','2486486422','Dalton36@gmail.com'),(1034,'Cosmo','Prajapati','6/1/1999','GEC Bhavnagar','Narmada','3427524158','Cosmo18@gmail.com'),(1035,'Abu','Modi','9/11/1998','GEC Modasa','Bharuch','1458999741','Abu24@gmail.com'),(1036,'Folarinwa','Barot','1/8/2002','GEC Modasa','Patan','9891735246','Folarinwa71@gmail.com'),(1037,'Danyal','Bhavsar','3/7/2000','GEC Modasa','Gandhinagar','7627537874','Danyal17@gmail.com'),(1038,'Denon','Modi','21/9/2001','GMIT Bhavnagar','Narmada','5481241257','Denon14@gmail.com'),(1039,'Angel','Mehta','20/10/2002','LJIET Ahmedabad','Kheda','7915721573','Angel26@gmail.com'),(1040,'Cullin','Makwana','11/7/2000','GEC Modasa','Sabarkantha','3491639454','Cullin51@gmail.com'),(1041,'Carlo','Bhandari','26/4/1998','GIT Gandhinagar','Narmada','2142733741','Carlo22@gmail.com'),(1042,'Bailley','Sanghvi','23/5/1999','GEC Gandhinagar','Dahod','7549355117','Bailley54@gmail.com'),(1043,'Arda','Doshi','18/4/1998','LJIET Ahmedabad','The Dangs','3713934434','Arda69@gmail.com'),(1044,'Cailean','Raval','19/2/2001','LJIET Ahmedabad','Kutch','7464279175','Cailean32@gmail.com'),(1045,'Carter','Raval','25/6/1998','GEC Modasa','Mehsana','4323634862','Carter64@gmail.com'),(1046,'Giacomo','Doshi','22/10/2002','GH Patel Anand','Ahmedabad','9636585823','Giacomo33@gmail.com'),(1047,'Gallagher','Mehta','9/10/1999','GH Patel Anand','Navsari','5525911679','Gallagher31@gmail.com'),(1048,'Atapattu','Chakrabarty','2/1/2000','LJIET Ahmedabad','Bharuch','4839197465','Atapattu24@gmail.com'),(1049,'Aodhan','Chudasma','2/8/1999','LJIET Ahmedabad','Ahmedabad','3864244895','Aodhan85@gmail.com'),(1050,'Clark','Chakrabarty','8/7/1998','LJIET Ahmedabad','Kheda','5169442391','Clark18@gmail.com'),(1051,'Arian','Modi','11/9/1998','GH Patel Anand','Patan','8993441816','Arian18@gmail.com'),(1052,'Dion','Barot','4/1/1998','GH Patel Anand','Junagadh','9563279959','Dion95@gmail.com'),(1053,'Callan-Adam','Chakrabarty','28/9/1999','GEC Bhavnagar','Narmada','7163444121','Callan-Adam66@gmail.com'),(1054,'Dissanayake','Joshi','21/4/2002','GH Patel Anand','Surat','3564747451','Dissanayake45@gmail.com'),(1055,'Cristian','Chudasma','7/8/2000','LJIET Ahmedabad','Dahod','2161212394','Cristian72@gmail.com'),(1056,'Gurardass','Sanghvi','9/9/2000','GIT Gandhinagar','Navsari','7373389939','Gurardass83@gmail.com'),(1057,'Airen','Joshi','3/5/1998','GEC Bhavnagar','Bhavnagar','1388184228','Airen24@gmail.com'),(1058,'Gavin','Makwana','23/7/2000','LJIET Ahmedabad','The Dangs','5565869637','Gavin58@gmail.com'),(1059,'Blake','Mistry','14/2/2002','GMIT Bhavnagar','Surendranagar','7189512179','Blake91@gmail.com'),(1060,'Eroni','Doshi','26/12/2002','LJIET Ahmedabad','Amreli district','7175361223','Eroni96@gmail.com'),(1061,'Famara','Chudasma','15/2/1998','GMIT Bhavnagar','Bharuch','7163916538','Famara31@gmail.com'),(1062,'Anees','Bhandari','3/7/2002','GIT Gandhinagar','Sabarkantha','2337589248','Anees79@gmail.com'),(1063,'Bryce','Panchal','1/8/2000','GEC Anand','Surendranagar','3287338439','Bryce86@gmail.com'),(1064,'Dhavid','Chudasma','25/11/2000','GIT Gandhinagar','Gandhinagar','1845679753','Dhavid56@gmail.com'),(1065,'Hendri','Sanghvi','21/7/2000','GIT Gandhinagar','Narmada','6547657217','Hendri61@gmail.com'),(1066,'Gordon','Prajapati','19/10/2000','LJIET Ahmedabad','Patan','4935555892','Gordon85@gmail.com'),(1067,'Aleksandrs','Modi','18/5/2002','GEC Bhavnagar','Kheda','4192453293','Aleksandrs28@gmail.com'),(1068,'Butali','Banarjee','19/7/1999','GEC Gandhinagar','Gandhinagar','5659133644','Butali14@gmail.com'),(1069,'Avani','Panchal','1/3/2001','LJIET Ahmedabad','Navsari','1969752675','Avani65@gmail.com'),(1070,'Caley','Joshi','2/11/2001','GEC Anand','Gandhinagar','7998677422','Caley14@gmail.com'),(1071,'Anir','Raval','10/9/2001','GIT Gandhinagar','Amreli district','5192534935','Anir49@gmail.com'),(1072,'Abir','Banarjee','27/3/1998','GEC Gandhinagar','Banaskantha','9958789798','Abir76@gmail.com'),(1073,'Alasdair','Shah','2/5/1999','GEC Anand','Narmada','3762976341','Alasdair66@gmail.com'),(1074,'Breandan','Modi','7/1/2001','LJIET Ahmedabad','Mehsana','6326154833','Breandan67@gmail.com'),(1075,'Hector','Rajodiya','8/4/1998','LJIET Ahmedabad','Kheda','3681736897','Hector29@gmail.com'),(1076,'Erik','Patel','22/1/2000','LJIET Ahmedabad','The Dangs','8914692981','Erik75@gmail.com'),(1077,'Alastair','Sanghvi','25/3/1998','GIT Gandhinagar','Surendranagar','9777948862','Alastair65@gmail.com'),(1078,'Brydon-Craig','Doshi','26/12/2000','LJIET Ahmedabad','Jamnagar','4914587553','Brydon-Craig17@gmail.com'),(1079,'Abdul-Aziz','Mehta','27/10/1999','GEC Anand','Panchmahal','6696918119','Abdul-Aziz28@gmail.com'),(1080,'Alanas','Bhavsar','22/8/2000','GIT Gandhinagar','Bharuch','9235975642','Alanas18@gmail.com'),(1081,'Danyal','Bhavsar','2/1/2002','GEC Anand','Amreli district','8744754216','Danyal48@gmail.com'),(1082,'Connolly','Sanghvi','26/6/2001','GEC Gandhinagar','Junagadh','8882711632','Connolly11@gmail.com'),(1083,'Bjorn','Panchal','10/2/2000','GMIT Bhavnagar','Amreli district','5882649716','Bjorn49@gmail.com'),(1084,'Digby','Shah','11/1/1998','GEC Bhavnagar','Amreli district','7418475154','Digby61@gmail.com'),(1085,'Aslam','Rajodiya','23/12/1998','GEC Bhavnagar','Mehsana','8885858668','Aslam76@gmail.com'),(1086,'Brett','Rajodiya','1/5/2002','GIT Gandhinagar','Narmada','4116924379','Brett46@gmail.com'),(1087,'Carson','Sanghvi','27/2/2002','GEC Modasa','Bharuch','6439135248','Carson78@gmail.com'),(1088,'Amrinder','Hingu','13/11/1999','GIT Gandhinagar','Narmada','2761812357','Amrinder81@gmail.com'),(1089,'Derrin','Makwana','2/3/1999','GH Patel Anand','Junagadh','6368725886','Derrin13@gmail.com'),(1090,'Eamonn','Prajapati','1/8/2002','GEC Bhavnagar','Jamnagar','5274943258','Eamonn78@gmail.com'),(1091,'Alexei','Chudasma','22/4/2002','GEC Modasa','Anand','5392412813','Alexei46@gmail.com'),(1092,'Daniel','Hingu','21/1/2002','GH Patel Anand','Bhavnagar','1372243215','Daniel17@gmail.com'),(1093,'Adrien','Prajapati','17/2/1999','GEC Bhavnagar','Porbandar','2732279581','Adrien25@gmail.com'),(1094,'Cori','Chudasma','28/12/1999','GEC Bhavnagar','Bharuch','9461662511','Cori86@gmail.com'),(1095,'Connor','Banarjee','11/2/2002','GEC Bhavnagar','Narmada','8265852558','Connor84@gmail.com'),(1096,'Davy','Makwana','1/8/2000','GEC Gandhinagar','Vadodara','6436426956','Davy82@gmail.com'),(1097,'Ikechukwu','Barot','11/11/1998','GIT Gandhinagar','The Dangs','3261233391','Ikechukwu54@gmail.com'),(1098,'Erencem','Patel','7/2/2001','GH Patel Anand','Narmada','8729929892','Erencem43@gmail.com'),(1099,'Devin','Makwana','13/5/1999','GMIT Bhavnagar','Panchmahal','2169439897','Devin22@gmail.com'),(1100,'Filip','Shah','27/5/2002','GEC Modasa','Kheda','7946816672','Filip38@gmail.com'),(1101,'Abdisalam','Prajapati','12/6/2001','GH Patel Anand','Narmada','4763298622','Abdisalam31@gmail.com'),(1102,'Eroni','Kotadiya','26/11/2001','GEC Modasa','Surat','5357927145','Eroni22@gmail.com'),(1103,'Ashley','Chakrabarty','26/11/1998','GEC Modasa','Banaskantha','3368152492','Ashley91@gmail.com'),(1104,'Garrett','Modi','21/9/1998','GEC Modasa','Patan','7235788257','Garrett48@gmail.com'),(1105,'Frankie','Doshi','10/4/2000','GEC Modasa','Kheda','7942722333','Frankie43@gmail.com'),(1106,'Abdirahman','Mistry','4/3/2001','LJIET Ahmedabad','Junagadh','6659117765','Abdirahman11@gmail.com'),(1107,'Heddle','Suthar','4/10/1999','GEC Gandhinagar','Sabarkantha','5671294827','Heddle79@gmail.com'),(1108,'Ethan','Chudasma','11/3/1998','GEC Gandhinagar','Dahod','3347334242','Ethan46@gmail.com'),(1109,'Apisai','Prajapati','25/5/2002','GEC Anand','Porbandar','5335525752','Apisai46@gmail.com'),(1110,'Haydon','Sanghvi','11/8/1998','GMIT Bhavnagar','Narmada','9774268854','Haydon68@gmail.com'),(1111,'Etinosa','Prajapati','3/6/1998','GEC Anand','Ahmedabad','2556192474','Etinosa35@gmail.com'),(1112,'Abdul-Majeed','Barot','16/2/1999','GH Patel Anand','Gandhinagar','9421642629','Abdul-Majeed42@gmail.com'),(1113,'Blair','Prajapati','16/3/2002','GMIT Bhavnagar','Rajkot','2813131588','Blair92@gmail.com'),(1114,'Aref','Panchal','12/2/2000','GEC Modasa','Junagadh','1522776229','Aref97@gmail.com'),(1115,'Hosea','Chudasma','1/8/2000','GMIT Bhavnagar','Vyara','5689455454','Hosea78@gmail.com'),(1116,'Eren','Barot','25/12/2001','GEC Modasa','Gandhinagar','9768373779','Eren21@gmail.com'),(1117,'Carlos','Prajapati','18/2/2002','GEC Modasa','The Dangs','8411152112','Carlos94@gmail.com'),(1118,'Chris','Bhavsar','2/6/2002','GMIT Bhavnagar','Valsad','8681884933','Chris45@gmail.com'),(1119,'Devan','Bhandari','9/9/2000','GEC Bhavnagar','The Dangs','8194947154','Devan99@gmail.com'),(1120,'Caley','Bhavsar','4/4/1999','GMIT Bhavnagar','Valsad','8867726811','Caley75@gmail.com'),(1121,'Azaan','Banarjee','28/10/2002','LJIET Ahmedabad','Vadodara','8146345966','Azaan65@gmail.com'),(1122,'Alishan','Modi','5/6/1999','GEC Gandhinagar','Amreli district','2336974932','Alishan69@gmail.com'),(1123,'Arun','Bhavsar','16/12/2002','GH Patel Anand','Rajkot','7919269624','Arun47@gmail.com'),(1124,'Billy','Chudasma','3/3/2001','GIT Gandhinagar','The Dangs','7583377582','Billy53@gmail.com'),(1125,'Howie','Joshi','1/10/2000','GEC Bhavnagar','Kheda','9214495677','Howie83@gmail.com'),(1126,'Carrich','Suthar','21/6/2002','GMIT Bhavnagar','Navsari','4922351349','Carrich63@gmail.com'),(1127,'Garrett','Suthar','28/11/2000','GEC Gandhinagar','Sabarkantha','1617745989','Garrett73@gmail.com'),(1128,'Alphonse','Sanghvi','14/2/2002','LJIET Ahmedabad','Surendranagar','9235772588','Alphonse65@gmail.com'),(1129,'Etinosa','Bhavsar','26/4/1999','LJIET Ahmedabad','The Dangs','8191216294','Etinosa37@gmail.com'),(1130,'Gio','Chakrabarty','23/8/1998','GH Patel Anand','Jamnagar','6371221278','Gio79@gmail.com'),(1131,'Ashton-Lloyd','Mehta','19/2/2002','GH Patel Anand','Bhavnagar','5554675825','Ashton-Lloyd91@gmail.com'),(1132,'Cody-Lee','Chudasma','4/11/1998','GIT Gandhinagar','Mehsana','8318587873','Cody-Lee77@gmail.com'),(1133,'Dawson','Makwana','2/2/1998','GH Patel Anand','Jamnagar','7692429544','Dawson55@gmail.com'),(1134,'Donnacha','Makwana','7/8/2001','GEC Anand','Jamnagar','3297377331','Donnacha16@gmail.com'),(1135,'Banan','Prajapati','18/5/2000','GEC Modasa','Amreli district','2913715746','Banan28@gmail.com'),(1136,'Cuillin','Chudasma','6/7/1998','GH Patel Anand','The Dangs','2647455691','Cuillin96@gmail.com'),(1137,'Grant','Chudasma','18/3/1999','LJIET Ahmedabad','Surendranagar','8444296962','Grant65@gmail.com'),(1138,'Famara','Modi','5/2/2000','LJIET Ahmedabad','Valsad','7891965618','Famara14@gmail.com'),(1139,'Dmitri','Doshi','14/3/2001','GH Patel Anand','Dahod','7632456497','Dmitri78@gmail.com'),(1140,'Darryl','Barot','6/10/1999','GMIT Bhavnagar','The Dangs','5256614733','Darryl61@gmail.com'),(1141,'Fergus','Hingu','25/8/2000','GIT Gandhinagar','Narmada','4965438512','Fergus67@gmail.com'),(1142,'Griffyn','Barot','22/6/1999','LJIET Ahmedabad','Panchmahal','4544731577','Griffyn46@gmail.com'),(1143,'Asrar','Doshi','1/3/2000','GEC Modasa','Bhavnagar','4536479911','Asrar98@gmail.com'),(1144,'Caethan','Banarjee','28/12/2000','GEC Anand','Jamnagar','4154146266','Caethan29@gmail.com'),(1145,'Bo','Chudasma','23/6/1998','GEC Bhavnagar','Vadodara','1188963474','Bo41@gmail.com'),(1146,'Bruce','Mistry','15/3/1998','GEC Bhavnagar','The Dangs','7996243514','Bruce56@gmail.com'),(1147,'Christy','Hingu','23/8/2000','GEC Anand','Patan','1524453889','Christy29@gmail.com'),(1148,'Drew','Mistry','20/12/2000','GEC Modasa','Jamnagar','5479486538','Drew63@gmail.com'),(1149,'Devlin','Panchal','17/4/2002','GEC Anand','Vadodara','4246386826','Devlin22@gmail.com'),(1150,'Denver','Chudasma','25/5/1999','LJIET Ahmedabad','Bharuch','5352653993','Denver24@gmail.com'),(1151,'Abel','Joshi','27/7/1998','GEC Modasa','Ahmedabad','1242517457','Abel88@gmail.com'),(1152,'Cale','Patel','18/3/2001','GEC Modasa','Sabarkantha','8966121176','Cale39@gmail.com'),(1153,'Davy','Chudasma','5/7/2002','LJIET Ahmedabad','Banaskantha','4819345531','Davy88@gmail.com'),(1154,'Blake','Rajodiya','16/2/2002','GIT Gandhinagar','Narmada','2823838481','Blake43@gmail.com'),(1155,'Aaren','Patel','14/10/2002','GEC Gandhinagar','Kutch','8422879975','Aaren14@gmail.com'),(1156,'Dilano','Doshi','2/8/1998','GEC Bhavnagar','Mehsana','1545312954','Dilano39@gmail.com'),(1157,'Dennis','Chudasma','8/9/1998','GEC Bhavnagar','Junagadh','1751153746','Dennis91@gmail.com'),(1158,'Fauzaan','Mistry','28/8/2000','GH Patel Anand','Bharuch','8852531147','Fauzaan15@gmail.com'),(1159,'Abhinav','Prajapati','11/3/2001','GEC Bhavnagar','Sabarkantha','3853823935','Abhinav23@gmail.com'),(1160,'Geomer','Shah','20/11/2001','GEC Bhavnagar','Panchmahal','5463188319','Geomer64@gmail.com'),(1161,'Butali','Bhandari','22/1/2002','GEC Modasa','Surat','4265647177','Butali22@gmail.com'),(1162,'Cillian','Shah','17/1/2001','GEC Bhavnagar','Vyara','7115847212','Cillian78@gmail.com'),(1163,'Damian','Chakrabarty','20/11/1998','GEC Gandhinagar','Anand','6641316313','Damian77@gmail.com'),(1164,'Derron','Chudasma','11/7/2002','LJIET Ahmedabad','Rajkot','1993583487','Derron55@gmail.com'),(1165,'Eagann','Suthar','5/8/2001','GEC Gandhinagar','Valsad','5534587994','Eagann46@gmail.com'),(1166,'Aedyn','Mehta','24/11/2001','GEC Bhavnagar','Patan','3851736211','Aedyn56@gmail.com'),(1167,'Calean','Banarjee','4/12/2001','LJIET Ahmedabad','Rajkot','6235226188','Calean65@gmail.com'),(1168,'Ayyub','Raval','1/4/2000','LJIET Ahmedabad','Porbandar','5913731133','Ayyub96@gmail.com'),(1169,'Baron','Bhavsar','17/12/1998','GEC Modasa','Porbandar','3896881644','Baron63@gmail.com'),(1170,'Caethan','Raval','23/8/1999','LJIET Ahmedabad','Kutch','4352994523','Caethan89@gmail.com'),(1171,'Dillon','Modi','7/12/2000','GH Patel Anand','Junagadh','4721567475','Dillon62@gmail.com'),(1172,'Brooke','Doshi','12/7/1999','GEC Bhavnagar','Surendranagar','9341982262','Brooke59@gmail.com'),(1173,'Adegbola','Banarjee','19/2/2002','GEC Gandhinagar','Bharuch','5978934877','Adegbola71@gmail.com'),(1174,'Ali','Doshi','28/3/1999','LJIET Ahmedabad','Gandhinagar','2155816671','Ali72@gmail.com'),(1175,'Evann','Mistry','20/6/2000','GIT Gandhinagar','Vadodara','5679499788','Evann58@gmail.com'),(1176,'Colvin','Sanghvi','6/2/2001','GEC Anand','Vyara','3315299989','Colvin88@gmail.com'),(1177,'Eren','Bhandari','21/4/2001','GEC Modasa','Anand','4174562641','Eren35@gmail.com'),(1178,'Devlin','Raval','20/11/2001','GEC Anand','The Dangs','9441873172','Devlin78@gmail.com'),(1179,'Branden','Kotadiya','22/6/2002','GEC Bhavnagar','Narmada','8145491325','Branden91@gmail.com'),(1180,'Frederick','Panchal','20/5/2000','GMIT Bhavnagar','Amreli district','1787554721','Frederick32@gmail.com'),(1181,'Dyllon','Shah','9/6/2002','GEC Modasa','Narmada','2121768399','Dyllon44@gmail.com'),(1182,'Aliekber','Modi','11/6/2001','GMIT Bhavnagar','Narmada','5653386431','Aliekber45@gmail.com'),(1183,'Idrees','Mistry','21/8/2001','GH Patel Anand','Gandhinagar','1347432148','Idrees85@gmail.com'),(1184,'Clarke','Sanghvi','4/3/2000','GH Patel Anand','Ahmedabad','8995894716','Clarke42@gmail.com'),(1185,'Aleksandr','Rajodiya','10/2/1998','GIT Gandhinagar','Mehsana','1891766494','Aleksandr12@gmail.com'),(1186,'Aleksandr','Shah','5/10/1998','GIT Gandhinagar','Sabarkantha','3542612122','Aleksandr75@gmail.com'),(1187,'Fikret','Patel','9/3/2001','GMIT Bhavnagar','Dahod','5485932137','Fikret91@gmail.com'),(1188,'Arved','Bhavsar','21/1/1998','LJIET Ahmedabad','Patan','5853961532','Arved45@gmail.com'),(1189,'Davi','Modi','6/2/2001','GH Patel Anand','The Dangs','4844585554','Davi94@gmail.com'),(1190,'Antoni','Chudasma','10/12/1999','GMIT Bhavnagar','Amreli district','7646271969','Antoni64@gmail.com'),(1191,'Alfee','Hingu','10/1/2002','GEC Anand','Anand','9389839439','Alfee78@gmail.com'),(1192,'Blaire','Hingu','7/2/1999','GIT Gandhinagar','Vyara','3755356498','Blaire17@gmail.com'),(1193,'Avani','Joshi','26/2/2000','GIT Gandhinagar','Bhavnagar','3142986819','Avani57@gmail.com'),(1194,'Carl','Bhandari','15/3/2001','GEC Modasa','Surendranagar','8238452284','Carl51@gmail.com'),(1195,'Crombie','Suthar','26/3/2002','GEC Bhavnagar','Navsari','3134442645','Crombie29@gmail.com'),(1196,'Eren','Barot','15/11/2000','GH Patel Anand','Anand','1518258599','Eren27@gmail.com'),(1197,'Ashtyn','Shah','7/1/2002','GEC Modasa','Surat','2832173321','Ashtyn36@gmail.com'),(1198,'Conlly','Patel','2/6/1998','GH Patel Anand','Panchmahal','8947275985','Conlly68@gmail.com'),(1199,'Bryce','Raval','13/11/1999','GEC Modasa','Surat','9566382786','Bryce36@gmail.com'),(1200,'Connel','Mistry','1/2/2000','GEC Anand','Banaskantha','5631183771','Connel89@gmail.com'),(1201,'Apisai','Prajapati','14/6/1998','LJIET Ahmedabad','Banaskantha','6437923138','Apisai65@gmail.com'),(1202,'Conrad','Mehta','2/7/2002','GEC Anand','Jamnagar','6476693436','Conrad63@gmail.com'),(1203,'Arturo','Mistry','14/8/2001','GEC Anand','Navsari','4192546113','Arturo74@gmail.com'),(1204,'Deecan','Rajodiya','17/3/1999','GH Patel Anand','Navsari','6287417857','Deecan82@gmail.com'),(1205,'Diarmaid','Raval','10/4/1999','GEC Bhavnagar','Kheda','6779725143','Diarmaid89@gmail.com'),(1206,'Azedine','Joshi','1/6/2001','LJIET Ahmedabad','Kheda','2619532212','Azedine72@gmail.com'),(1207,'Bryce','Bhandari','21/7/2002','GEC Anand','Dahod','6557437417','Bryce18@gmail.com'),(1208,'Argyle','Chakrabarty','26/10/1998','GIT Gandhinagar','Anand','3433612359','Argyle45@gmail.com'),(1209,'Allan','Bhandari','28/12/2002','GH Patel Anand','Jamnagar','2182466551','Allan74@gmail.com'),(1210,'Dinaras','Rajodiya','6/5/2002','GEC Anand','Mehsana','3244164215','Dinaras99@gmail.com'),(1211,'Braydon','Barot','28/3/1999','GMIT Bhavnagar','Navsari','5137443516','Braydon59@gmail.com'),(1212,'Chukwuemeka','Mehta','16/11/1999','GH Patel Anand','Dahod','6289678818','Chukwuemeka31@gmail.com'),(1213,'Dan','Chudasma','4/4/2001','LJIET Ahmedabad','The Dangs','6224646541','Dan38@gmail.com'),(1214,'Corin','Modi','10/7/2001','GEC Gandhinagar','Navsari','1549629826','Corin13@gmail.com'),(1215,'Aslam','Doshi','22/7/2000','LJIET Ahmedabad','Bhavnagar','4171574359','Aslam45@gmail.com'),(1216,'Ciar','Banarjee','24/9/1998','GH Patel Anand','Panchmahal','4756545458','Ciar64@gmail.com'),(1217,'Etienne','Chakrabarty','14/6/2000','LJIET Ahmedabad','Jamnagar','8643847522','Etienne27@gmail.com'),(1218,'Aarron','Hingu','13/12/2001','GH Patel Anand','Vyara','1933912625','Aarron85@gmail.com'),(1219,'Cal','Sanghvi','20/4/2001','LJIET Ahmedabad','Valsad','7163591444','Cal96@gmail.com'),(1220,'Danniel','Barot','17/10/2001','GEC Anand','Kutch','1439274134','Danniel54@gmail.com'),(1221,'Caidyn','Prajapati','20/4/2001','GEC Anand','Bhavnagar','9145766126','Caidyn49@gmail.com'),(1222,'Arlo','Rajodiya','18/2/2001','GH Patel Anand','Sabarkantha','1353288846','Arlo39@gmail.com'),(1223,'Eriz','Mehta','20/1/1999','GH Patel Anand','Patan','5939454946','Eriz14@gmail.com'),(1224,'Burak','Raval','18/10/1998','LJIET Ahmedabad','Ahmedabad','7329896999','Burak84@gmail.com'),(1225,'Alvern','Bhandari','6/6/1999','GEC Gandhinagar','Sabarkantha','5234557254','Alvern12@gmail.com'),(1226,'Favour','Bhandari','3/12/2000','GMIT Bhavnagar','Kheda','2946113615','Favour64@gmail.com'),(1227,'Campbel','Kotadiya','16/10/1999','GEC Bhavnagar','Navsari','9877282593','Campbel79@gmail.com'),(1228,'Daumantas','Doshi','28/2/2000','GEC Modasa','Vadodara','5814111771','Daumantas62@gmail.com'),(1229,'Dailey','Mehta','23/3/2000','GEC Bhavnagar','Sabarkantha','9863343365','Dailey13@gmail.com'),(1230,'Bobby-Lee','Mistry','5/7/2001','GIT Gandhinagar','Anand','7614267837','Bobby-Lee75@gmail.com'),(1231,'Artem','Joshi','7/1/1998','GEC Gandhinagar','Jamnagar','6374257333','Artem55@gmail.com'),(1232,'Aray','Sanghvi','5/4/2002','GEC Modasa','Gandhinagar','2527755575','Aray16@gmail.com'),(1233,'Brendon','Panchal','14/2/1999','GEC Anand','Navsari','8658517519','Brendon59@gmail.com'),(1234,'Cade','Chakrabarty','7/2/2001','LJIET Ahmedabad','Dahod','4474648475','Cade55@gmail.com'),(1235,'Frank','Mehta','20/11/1999','GMIT Bhavnagar','Mehsana','4236833839','Frank59@gmail.com'),(1236,'Caidyn','Mehta','11/10/1998','GEC Anand','Narmada','6529912477','Caidyn56@gmail.com'),(1237,'Cadon','Mehta','15/5/1998','GEC Gandhinagar','Kheda','5178312613','Cadon33@gmail.com'),(1238,'Arron','Modi','3/5/1999','GMIT Bhavnagar','Ahmedabad','1723683375','Arron92@gmail.com'),(1239,'Blaike','Patel','3/8/1998','GEC Gandhinagar','Patan','4759734651','Blaike97@gmail.com'),(1240,'Deano','Hingu','6/12/2002','GMIT Bhavnagar','The Dangs','1347856643','Deano28@gmail.com'),(1241,'Graeme','Kotadiya','20/7/2002','GH Patel Anand','Mehsana','1695266764','Graeme73@gmail.com'),(1242,'Fyn','Joshi','3/3/2001','GMIT Bhavnagar','Vadodara','3253622162','Fyn98@gmail.com'),(1243,'Aleksandrs','Modi','13/8/2002','GMIT Bhavnagar','Panchmahal','1134335537','Aleksandrs43@gmail.com'),(1244,'Desmond','Chakrabarty','2/4/2001','GEC Gandhinagar','Bhavnagar','5195272436','Desmond34@gmail.com'),(1245,'Griffyn','Barot','13/2/1998','GH Patel Anand','Valsad','5549548872','Griffyn27@gmail.com'),(1246,'Giacomo','Sanghvi','28/5/2000','GMIT Bhavnagar','Bharuch','8916613552','Giacomo53@gmail.com'),(1247,'Desmond','Bhandari','28/12/2001','GEC Bhavnagar','Ahmedabad','1788378653','Desmond43@gmail.com'),(1248,'Gurardass','Suthar','19/12/2000','GEC Modasa','Kheda','7166826375','Gurardass88@gmail.com'),(1249,'Badsha','Bhavsar','25/5/2001','GEC Modasa','Anand','3628483887','Badsha46@gmail.com'),(1250,'Caden','Barot','4/4/1999','GH Patel Anand','Junagadh','4359118124','Caden31@gmail.com'),(1251,'Abel','Mehta','21/4/2000','LJIET Ahmedabad','Jamnagar','3638292113','Abel22@gmail.com'),(1252,'Favour','Bhandari','8/6/1998','GEC Modasa','Patan','2619748578','Favour69@gmail.com'),(1253,'Abdalroof','Sanghvi','14/4/2001','GEC Gandhinagar','Bharuch','6449373917','Abdalroof74@gmail.com'),(1254,'Conley','Mehta','23/2/1998','GEC Modasa','Vyara','2614986875','Conley78@gmail.com'),(1255,'Andrew','Prajapati','1/11/1998','GEC Bhavnagar','The Dangs','4738435433','Andrew97@gmail.com'),(1256,'Caelan','Rajodiya','5/11/2000','GEC Modasa','Ahmedabad','6925959267','Caelan36@gmail.com'),(1257,'Aden','Shah','13/3/2001','GEC Bhavnagar','Valsad','1522927164','Aden82@gmail.com'),(1258,'Conan','Panchal','18/3/2000','GMIT Bhavnagar','Mehsana','5697751612','Conan61@gmail.com'),(1259,'Braydyn','Bhandari','1/3/1999','GMIT Bhavnagar','Kheda','8485987694','Braydyn55@gmail.com'),(1260,'Cain','Mehta','14/9/1998','GIT Gandhinagar','Dahod','1859898238','Cain82@gmail.com'),(1261,'Dugald','Mehta','16/11/2000','LJIET Ahmedabad','Narmada','6795695525','Dugald53@gmail.com'),(1262,'Conley','Hingu','19/12/2002','GIT Gandhinagar','Mehsana','8257184978','Conley96@gmail.com'),(1263,'Bartosz','Doshi','18/11/2002','GEC Bhavnagar','The Dangs','1788329231','Bartosz47@gmail.com'),(1264,'Danish','Hingu','4/11/1998','GEC Anand','Sabarkantha','7351793273','Danish12@gmail.com'),(1265,'Hussnan','Shah','1/7/2000','GEC Anand','Surat','5796567324','Hussnan92@gmail.com'),(1266,'Fred','Panchal','1/11/1998','GEC Anand','Panchmahal','8887551829','Fred62@gmail.com'),(1267,'Girijan','Suthar','3/8/1998','GMIT Bhavnagar','Amreli district','5884464625','Girijan76@gmail.com'),(1268,'Derry','Doshi','4/12/2002','GH Patel Anand','Sabarkantha','1873984266','Derry19@gmail.com'),(1269,'Carrich','Hingu','13/3/1998','LJIET Ahmedabad','Gandhinagar','7698716812','Carrich93@gmail.com'),(1270,'Azeem','Prajapati','26/1/2000','GH Patel Anand','Banaskantha','7653227164','Azeem88@gmail.com'),(1271,'Abdihakim','Shah','4/5/1999','GEC Anand','Rajkot','2213786358','Abdihakim46@gmail.com'),(1272,'Hussnan','Sanghvi','8/10/1999','GMIT Bhavnagar','Gandhinagar','6784612464','Hussnan96@gmail.com'),(1273,'Bradley','Prajapati','10/7/2000','GMIT Bhavnagar','Gandhinagar','2223283944','Bradley42@gmail.com'),(1274,'Dion','Chudasma','13/5/1998','GEC Modasa','Banaskantha','6244588142','Dion43@gmail.com'),(1275,'Danyal','Prajapati','9/12/2001','GEC Modasa','Jamnagar','1269966949','Danyal25@gmail.com'),(1276,'Airen','Panchal','8/1/2000','GEC Gandhinagar','Sabarkantha','1196579338','Airen78@gmail.com'),(1277,'Gareth','Mistry','17/1/2002','GH Patel Anand','Porbandar','9898252293','Gareth92@gmail.com'),(1278,'Dilano','Chudasma','3/5/2000','GEC Modasa','Valsad','1816917454','Dilano38@gmail.com'),(1279,'Ardeshir','Bhandari','11/7/2001','GEC Anand','Narmada','8993938798','Ardeshir38@gmail.com'),(1280,'Folarinwa','Panchal','21/3/1998','LJIET Ahmedabad','Panchmahal','7193376982','Folarinwa35@gmail.com'),(1281,'Coray','Panchal','11/9/2002','LJIET Ahmedabad','Junagadh','2733666749','Coray42@gmail.com'),(1282,'Donnacha','Makwana','13/1/2002','GH Patel Anand','Patan','1843372837','Donnacha19@gmail.com'),(1283,'Attila','Rajodiya','22/2/1998','GMIT Bhavnagar','Porbandar','1623587839','Attila69@gmail.com'),(1284,'Arandeep','Chudasma','4/10/2002','LJIET Ahmedabad','Kutch','3643675878','Arandeep52@gmail.com'),(1285,'Brydon','Mistry','17/5/1998','LJIET Ahmedabad','Surat','2658385497','Brydon11@gmail.com'),(1286,'Aditya','Sanghvi','13/2/2002','GMIT Bhavnagar','Sabarkantha','3728794358','Aditya61@gmail.com'),(1287,'Davis','Joshi','25/11/2000','GEC Anand','Kutch','3144329938','Davis89@gmail.com'),(1288,'Angus','Kotadiya','10/10/1999','GIT Gandhinagar','Patan','4418659833','Angus83@gmail.com'),(1289,'Herbert','Modi','11/11/2002','GH Patel Anand','Patan','2448478332','Herbert81@gmail.com'),(1290,'Geomer','Modi','27/10/2000','GEC Bhavnagar','Vadodara','9227284352','Geomer39@gmail.com'),(1291,'Atom','Bhavsar','22/11/2002','GMIT Bhavnagar','Vadodara','7972554832','Atom95@gmail.com'),(1292,'Angelo','Bhavsar','12/3/2002','GH Patel Anand','Dahod','3226559681','Angelo29@gmail.com'),(1293,'Bruin','Mistry','3/9/1999','GMIT Bhavnagar','Bhavnagar','8221996578','Bruin35@gmail.com'),(1294,'Carlo','Raval','22/2/2001','GMIT Bhavnagar','Bharuch','8459275562','Carlo61@gmail.com'),(1295,'Denon','Hingu','9/11/2001','GEC Anand','Rajkot','9759323136','Denon92@gmail.com'),(1296,'Arya','Hingu','17/8/2000','GEC Gandhinagar','The Dangs','5876473928','Arya68@gmail.com'),(1297,'Daniel-James','Modi','20/7/1998','GEC Bhavnagar','Surendranagar','7823154586','Daniel-James85@gmail.com'),(1298,'Damon','Mistry','12/3/2002','LJIET Ahmedabad','Bhavnagar','8666979725','Damon86@gmail.com'),(1299,'Broghan','Banarjee','16/6/2001','GEC Bhavnagar','Bhavnagar','7389248372','Broghan56@gmail.com'),(1300,'Asim','Barot','28/8/2002','LJIET Ahmedabad','The Dangs','6162969747','Asim86@gmail.com'),(1301,'Brad','Modi','19/12/1999','GEC Bhavnagar','Porbandar','7288554863','Brad64@gmail.com'),(1302,'Dougray','Shah','1/6/1998','GEC Modasa','Surat','4338322948','Dougray72@gmail.com'),(1303,'Craig','Joshi','11/11/1999','GEC Anand','The Dangs','4189285388','Craig26@gmail.com'),(1304,'Aaron-James','Chudasma','24/11/1999','GIT Gandhinagar','Kutch','1578377117','Aaron-James84@gmail.com'),(1305,'Fabian','Bhandari','2/12/2001','GIT Gandhinagar','Bhavnagar','7276641831','Fabian75@gmail.com'),(1306,'Howie','Sanghvi','5/8/2001','GEC Modasa','Kutch','1795351397','Howie53@gmail.com'),(1307,'Dedeniseoluwa','Modi','23/10/2002','GEC Bhavnagar','Narmada','5969482897','Dedeniseoluwa86@gmail.com'),(1308,'Conley','Bhavsar','14/9/2000','LJIET Ahmedabad','Rajkot','3581416235','Conley26@gmail.com'),(1309,'Conall','Patel','21/2/1998','GH Patel Anand','Surat','9586343689','Conall51@gmail.com'),(1310,'Boab','Suthar','10/5/2000','GEC Anand','Gandhinagar','5856878791','Boab71@gmail.com'),(1311,'Abu','Bhavsar','24/9/1999','GEC Gandhinagar','Gandhinagar','1318932455','Abu84@gmail.com'),(1312,'Anton','Sanghvi','28/11/2002','GEC Gandhinagar','Jamnagar','4187523911','Anton97@gmail.com'),(1313,'Chin','Panchal','1/10/2000','GH Patel Anand','Surat','4166685281','Chin84@gmail.com'),(1314,'Daimhin','Doshi','24/7/1998','GEC Modasa','Rajkot','8737198968','Daimhin12@gmail.com'),(1315,'David-Jay','Bhandari','7/9/1999','GEC Bhavnagar','Porbandar','2517162629','David-Jay63@gmail.com'),(1316,'Ciaran','Rajodiya','20/11/2002','GEC Modasa','Bharuch','8843181339','Ciaran82@gmail.com'),(1317,'Alvin','Suthar','16/11/1998','GIT Gandhinagar','Kutch','9472772897','Alvin72@gmail.com'),(1318,'Dennis','Panchal','16/8/2001','GMIT Bhavnagar','Junagadh','9115836658','Dennis27@gmail.com'),(1319,'Graham','Bhandari','16/5/1999','GH Patel Anand','Rajkot','4735759589','Graham94@gmail.com'),(1320,'Abdurraheem','Sanghvi','17/10/1999','GMIT Bhavnagar','Vyara','8735415799','Abdurraheem34@gmail.com'),(1321,'Freddie','Makwana','26/2/2002','GEC Anand','Surat','9781152874','Freddie54@gmail.com'),(1322,'Aedan','Mehta','12/4/2000','GEC Modasa','Navsari','2478855356','Aedan99@gmail.com'),(1323,'Bobby','Patel','24/7/1998','GEC Anand','Mehsana','5885336353','Bobby41@gmail.com'),(1324,'Blair','Hingu','15/5/2001','GEC Bhavnagar','Kutch','8185791768','Blair69@gmail.com'),(1325,'Averon','Hingu','2/8/2000','GEC Anand','Gandhinagar','1183989887','Averon28@gmail.com'),(1326,'Banan','Chudasma','7/2/1998','GH Patel Anand','Kutch','5834438415','Banan13@gmail.com'),(1327,'Craig','Kotadiya','21/11/2001','GH Patel Anand','Valsad','8227451962','Craig79@gmail.com'),(1328,'Danniel','Raval','26/5/2001','LJIET Ahmedabad','Bharuch','6215671528','Danniel36@gmail.com'),(1329,'Finnley','Barot','25/1/2002','GEC Anand','Surat','2234429625','Finnley92@gmail.com'),(1330,'Albert','Modi','1/1/2002','GEC Anand','Bhavnagar','6495344479','Albert64@gmail.com'),(1331,'Eduards','Rajodiya','6/7/2000','LJIET Ahmedabad','Sabarkantha','9633539558','Eduards35@gmail.com'),(1332,'Aazaan','Suthar','21/8/2001','GEC Gandhinagar','Junagadh','5962176141','Aazaan19@gmail.com'),(1333,'Damien','Prajapati','23/6/1998','GEC Gandhinagar','Valsad','3591296117','Damien24@gmail.com'),(1334,'Cuillin','Suthar','20/2/1998','GEC Bhavnagar','Surat','8838559546','Cuillin41@gmail.com'),(1335,'Alfee','Sanghvi','4/5/2002','GIT Gandhinagar','Patan','3269692374','Alfee72@gmail.com'),(1336,'Archibald','Modi','6/1/1998','LJIET Ahmedabad','Kutch','5284743243','Archibald33@gmail.com'),(1337,'Abu','Raval','26/12/1999','GEC Bhavnagar','Bhavnagar','8156767685','Abu73@gmail.com'),(1338,'Ahoua','Doshi','6/9/2002','GMIT Bhavnagar','Vyara','5837593371','Ahoua99@gmail.com'),(1339,'Bryan','Joshi','7/4/2001','GEC Modasa','Gandhinagar','6958859891','Bryan37@gmail.com'),(1340,'Eroni','Rajodiya','28/9/2000','LJIET Ahmedabad','Amreli district','7433361373','Eroni64@gmail.com'),(1341,'Arandeep','Joshi','19/2/1999','GEC Modasa','Dahod','3947382927','Arandeep12@gmail.com'),(1342,'Domhnall','Barot','2/1/2001','GH Patel Anand','Junagadh','7775365753','Domhnall35@gmail.com'),(1343,'Avani','Suthar','4/6/2000','GEC Bhavnagar','The Dangs','8882765983','Avani41@gmail.com'),(1344,'Dan','Kotadiya','13/7/1999','GEC Modasa','Porbandar','6961446917','Dan88@gmail.com'),(1345,'Clarke','Barot','5/11/1999','GMIT Bhavnagar','Bhavnagar','6231291721','Clarke71@gmail.com'),(1346,'Brandon-Lee','Suthar','6/3/2002','GIT Gandhinagar','The Dangs','5492435277','Brandon-Lee52@gmail.com'),(1347,'Georgy','Kotadiya','20/6/1998','GEC Anand','Sabarkantha','4272373991','Georgy49@gmail.com'),(1348,'Cadan','Shah','17/10/2000','LJIET Ahmedabad','Gandhinagar','8695146656','Cadan81@gmail.com'),(1349,'Coupar','Mistry','15/10/2000','GMIT Bhavnagar','Banaskantha','5787956738','Coupar63@gmail.com'),(1350,'Denzel','Panchal','21/12/2000','GEC Modasa','Bhavnagar','6371549369','Denzel18@gmail.com'),(1351,'Corbin','Mistry','7/1/1999','GEC Modasa','Anand','9697876624','Corbin42@gmail.com'),(1352,'Derren','Barot','3/11/1998','GEC Anand','Bharuch','3957778719','Derren23@gmail.com'),(1353,'Aonghus','Sanghvi','14/2/1999','GEC Modasa','Valsad','2855637789','Aonghus93@gmail.com'),(1354,'Hristomir','Chudasma','5/6/2002','GIT Gandhinagar','Dahod','4641736769','Hristomir43@gmail.com'),(1355,'Athos-Carlos','Prajapati','3/1/2000','GMIT Bhavnagar','Kheda','8378771667','Athos-Carlos83@gmail.com'),(1356,'Hopkin','Joshi','21/7/1998','GEC Gandhinagar','Bharuch','7358214866','Hopkin46@gmail.com'),(1357,'Aidian','Panchal','13/9/2001','GEC Modasa','Sabarkantha','2948646141','Aidian54@gmail.com'),(1358,'Bryden','Rajodiya','5/2/2002','GIT Gandhinagar','Narmada','6821822423','Bryden98@gmail.com'),(1359,'Aryn','Chakrabarty','9/11/2000','GEC Gandhinagar','Panchmahal','2926616816','Aryn94@gmail.com'),(1360,'Clarke','Modi','5/3/1998','GEC Modasa','Amreli district','7879623691','Clarke78@gmail.com'),(1361,'Davi','Makwana','17/6/2000','GEC Bhavnagar','Surendranagar','1935585439','Davi31@gmail.com'),(1362,'Dennys','Banarjee','18/1/2001','GEC Bhavnagar','Vyara','9736692232','Dennys52@gmail.com'),(1363,'Darroch','Chakrabarty','8/8/2000','GEC Bhavnagar','Vadodara','8435897211','Darroch36@gmail.com'),(1364,'Darcy','Bhandari','15/6/2000','GEC Bhavnagar','Sabarkantha','1229749648','Darcy45@gmail.com'),(1365,'Adrien','Shah','2/2/2000','GH Patel Anand','Banaskantha','3998624358','Adrien32@gmail.com'),(1366,'Ammer','Mehta','8/3/1998','GH Patel Anand','Rajkot','3183467133','Ammer55@gmail.com'),(1367,'Coll','Banarjee','7/11/2001','GEC Bhavnagar','Gandhinagar','3371219186','Coll47@gmail.com'),(1368,'Dylan-James','Modi','4/6/2001','GMIT Bhavnagar','Navsari','3345473375','Dylan-James86@gmail.com'),(1369,'Daithi','Suthar','15/10/1998','GEC Gandhinagar','Surat','9134365953','Daithi54@gmail.com'),(1370,'Adegbolahan','Shah','8/4/2001','GEC Modasa','Gandhinagar','9445312977','Adegbolahan42@gmail.com'),(1371,'Gene','Suthar','10/10/1998','GEC Gandhinagar','Kheda','9637974335','Gene23@gmail.com'),(1372,'Didier','Raval','2/9/2001','GEC Anand','Vyara','3785342928','Didier54@gmail.com'),(1373,'Blue','Banarjee','5/10/1999','GEC Modasa','Ahmedabad','8862146652','Blue18@gmail.com'),(1374,'Arafat','Panchal','13/10/2002','LJIET Ahmedabad','The Dangs','4717474776','Arafat77@gmail.com'),(1375,'Christopher-Lee','Barot','28/3/2002','GEC Bhavnagar','Anand','8951797691','Christopher-Lee81@gmail.com'),(1376,'Connall','Modi','8/1/2001','GEC Gandhinagar','The Dangs','7378824716','Connall12@gmail.com'),(1377,'Hogan','Prajapati','25/11/2002','GEC Anand','The Dangs','3579122334','Hogan72@gmail.com'),(1378,'Boyd','Panchal','7/11/1999','GEC Modasa','Junagadh','2317761477','Boyd36@gmail.com'),(1379,'Ijay','Doshi','7/8/2002','GEC Anand','Vadodara','8214391141','Ijay68@gmail.com'),(1380,'Hogan','Mistry','28/1/2002','GEC Bhavnagar','Sabarkantha','4743272255','Hogan91@gmail.com'),(1381,'Averon','Chudasma','4/7/1999','GEC Modasa','Surendranagar','8861984722','Averon49@gmail.com'),(1382,'Aman','Panchal','24/12/1998','GEC Gandhinagar','Narmada','1168387771','Aman96@gmail.com'),(1383,'Cillin','Suthar','16/2/2001','LJIET Ahmedabad','Gandhinagar','7264646239','Cillin95@gmail.com'),(1384,'Blazey','Sanghvi','9/6/2002','GEC Bhavnagar','Panchmahal','4177962377','Blazey48@gmail.com'),(1385,'Cian','Suthar','8/6/1999','GEC Bhavnagar','Jamnagar','7873588649','Cian71@gmail.com'),(1386,'Cinar','Patel','22/7/2001','GH Patel Anand','Amreli district','8426624637','Cinar37@gmail.com'),(1387,'Griffin','Rajodiya','25/9/2002','GMIT Bhavnagar','Vadodara','5468263471','Griffin19@gmail.com'),(1388,'Abu','Banarjee','12/1/1999','GEC Anand','Navsari','4846126257','Abu87@gmail.com'),(1389,'Arturo','Mehta','4/2/2001','GIT Gandhinagar','Dahod','4288287275','Arturo17@gmail.com'),(1390,'Bracken','Mistry','19/3/1999','GMIT Bhavnagar','The Dangs','6362458694','Bracken93@gmail.com'),(1391,'Chin','Shah','18/8/2000','GEC Modasa','Rajkot','3241132377','Chin54@gmail.com'),(1392,'Caelen','Rajodiya','14/5/1999','GH Patel Anand','Patan','4755824457','Caelen69@gmail.com'),(1393,'Decklan','Doshi','20/10/1998','GIT Gandhinagar','Surendranagar','9722111434','Decklan99@gmail.com'),(1394,'Finnan','Patel','23/6/2001','GMIT Bhavnagar','Valsad','3545849346','Finnan13@gmail.com'),(1395,'Humza','Bhandari','7/10/2001','LJIET Ahmedabad','Bhavnagar','9321649741','Humza23@gmail.com'),(1396,'Hector','Mehta','28/3/2000','GMIT Bhavnagar','Mehsana','8485424911','Hector33@gmail.com'),(1397,'Havila','Patel','2/6/1998','GEC Anand','Surendranagar','7823213631','Havila24@gmail.com'),(1398,'Douglas','Chudasma','28/6/1998','GEC Modasa','Sabarkantha','1247979273','Douglas81@gmail.com'),(1399,'Cosmo','Mistry','9/11/1999','GEC Bhavnagar','Rajkot','3673914483','Cosmo79@gmail.com'),(1400,'Bruin','Shah','6/4/2001','GEC Bhavnagar','The Dangs','2434694848','Bruin22@gmail.com'),(1401,'Daniyal','Chakrabarty','25/10/1998','GEC Bhavnagar','Surat','3815265198','Daniyal62@gmail.com'),(1402,'Abdulbasir','Kotadiya','16/7/1998','GIT Gandhinagar','Panchmahal','9538321918','Abdulbasir65@gmail.com'),(1403,'Felix','Kotadiya','2/9/2002','GEC Modasa','Kheda','1588755537','Felix82@gmail.com'),(1404,'Del','Suthar','6/2/1998','LJIET Ahmedabad','Amreli district','5853446211','Del41@gmail.com'),(1405,'Corie','Shah','18/1/2001','GIT Gandhinagar','Vadodara','8141739819','Corie45@gmail.com'),(1406,'Conlly','Joshi','7/6/2001','GIT Gandhinagar','Panchmahal','1839512165','Conlly91@gmail.com'),(1407,'Dex','Prajapati','12/9/1999','GIT Gandhinagar','Bhavnagar','8559122861','Dex83@gmail.com'),(1408,'Axel','Shah','19/2/1998','GEC Bhavnagar','Patan','7131259412','Axel94@gmail.com'),(1409,'Ebow','Rajodiya','2/8/2000','GIT Gandhinagar','Narmada','9462161832','Ebow46@gmail.com'),(1410,'Ameer','Mehta','13/9/1999','GEC Modasa','Bhavnagar','8592142828','Ameer42@gmail.com'),(1411,'Caethan','Bhavsar','28/7/2002','LJIET Ahmedabad','Vyara','4344896689','Caethan28@gmail.com'),(1412,'Bradan','Mistry','17/6/1998','LJIET Ahmedabad','Ahmedabad','5991558548','Bradan73@gmail.com'),(1413,'Amani','Doshi','2/12/2002','GEC Gandhinagar','Ahmedabad','8686354123','Amani13@gmail.com'),(1414,'Exodi','Prajapati','9/4/1999','GH Patel Anand','Dahod','6999257855','Exodi74@gmail.com'),(1415,'Brogan','Shah','8/11/2000','GIT Gandhinagar','Navsari','8869856354','Brogan41@gmail.com'),(1416,'Geordan','Suthar','7/11/1999','GIT Gandhinagar','Valsad','7255387231','Geordan33@gmail.com'),(1417,'Davi','Barot','24/6/1999','GEC Anand','Kheda','7258987688','Davi13@gmail.com'),(1418,'Aaron-James','Joshi','22/10/2001','GIT Gandhinagar','Sabarkantha','3118252947','Aaron-James63@gmail.com'),(1419,'Finnean','Mistry','27/3/1999','GMIT Bhavnagar','Amreli district','8335617697','Finnean16@gmail.com'),(1420,'Decklan','Doshi','5/3/1999','LJIET Ahmedabad','Jamnagar','7917913579','Decklan69@gmail.com'),(1421,'Calin','Raval','4/4/1998','GEC Modasa','Bhavnagar','3676473646','Calin75@gmail.com'),(1422,'Azlan','Patel','20/6/2001','GEC Anand','Junagadh','8391874321','Azlan18@gmail.com'),(1423,'Dinaras','Doshi','25/8/2001','GMIT Bhavnagar','Narmada','5316624426','Dinaras13@gmail.com'),(1424,'Cator','Prajapati','2/1/2000','GEC Bhavnagar','Vadodara','7274959118','Cator92@gmail.com'),(1425,'Basile','Banarjee','2/11/2001','GH Patel Anand','Dahod','4445919217','Basile32@gmail.com'),(1426,'Dayem','Bhandari','4/12/1999','GEC Modasa','Surendranagar','1536121585','Dayem36@gmail.com'),(1427,'Darren','Makwana','4/1/1999','GEC Anand','Narmada','5695598747','Darren71@gmail.com'),(1428,'Al-Hassan','Sanghvi','9/7/1999','GMIT Bhavnagar','Dahod','7976258385','Al-Hassan94@gmail.com'),(1429,'Burhan','Banarjee','3/3/2002','GEC Anand','Surendranagar','5356264726','Burhan46@gmail.com'),(1430,'Franciszek','Bhandari','14/8/2002','LJIET Ahmedabad','Navsari','9922461473','Franciszek69@gmail.com'),(1431,'Iestyn','Panchal','26/8/1999','LJIET Ahmedabad','Junagadh','4379654629','Iestyn29@gmail.com'),(1432,'Allan','Chudasma','15/9/2002','GEC Bhavnagar','The Dangs','8948532287','Allan76@gmail.com'),(1433,'Arsalan','Bhavsar','27/9/2000','GMIT Bhavnagar','Surendranagar','7585949577','Arsalan29@gmail.com'),(1434,'Calum-James','Joshi','27/11/2002','GH Patel Anand','Panchmahal','5893255773','Calum-James41@gmail.com'),(1435,'Cai','Prajapati','27/4/1998','GEC Anand','Ahmedabad','3265769248','Cai32@gmail.com'),(1436,'Cillian','Patel','24/9/1999','GEC Modasa','Dahod','8917986346','Cillian47@gmail.com'),(1437,'Abdul-Aziz','Patel','10/3/1999','GEC Bhavnagar','Banaskantha','6996243832','Abdul-Aziz91@gmail.com'),(1438,'Aleem','Makwana','23/3/1998','GMIT Bhavnagar','Narmada','5332282341','Aleem13@gmail.com'),(1439,'Eryk','Hingu','12/5/2001','GMIT Bhavnagar','Narmada','5343523492','Eryk68@gmail.com'),(1440,'Dalton','Mistry','9/2/2002','GEC Gandhinagar','Surendranagar','9221937679','Dalton34@gmail.com'),(1441,'Hcen','Panchal','11/3/1999','LJIET Ahmedabad','Narmada','7864628685','Hcen53@gmail.com'),(1442,'Coben','Chudasma','9/8/2002','GH Patel Anand','Mehsana','2569175849','Coben55@gmail.com'),(1443,'Coupar','Kotadiya','24/2/2001','GEC Anand','Navsari','3769346767','Coupar67@gmail.com'),(1444,'Caedyn','Bhandari','15/8/1998','GEC Bhavnagar','Rajkot','4845584753','Caedyn26@gmail.com'),(1445,'Denton','Chakrabarty','27/9/2001','GEC Modasa','Kutch','8691693993','Denton15@gmail.com'),(1446,'Archibald','Doshi','28/7/1998','GIT Gandhinagar','Panchmahal','3229667148','Archibald66@gmail.com'),(1447,'Caidyn','Shah','19/2/1998','GIT Gandhinagar','Vyara','5479618523','Caidyn96@gmail.com'),(1448,'Fiachra','Chudasma','10/12/1999','GEC Modasa','Porbandar','2919695586','Fiachra89@gmail.com'),(1449,'Fintan','Panchal','15/3/1999','GH Patel Anand','Navsari','2651636878','Fintan24@gmail.com'),(1450,'Freddie','Suthar','20/12/2001','GEC Modasa','Gandhinagar','5487997589','Freddie65@gmail.com'),(1451,'Derin','Joshi','12/3/2002','GEC Gandhinagar','Kheda','1141854665','Derin67@gmail.com'),(1452,'Girius','Chudasma','7/9/2000','GMIT Bhavnagar','Junagadh','9845825769','Girius24@gmail.com'),(1453,'Dmitri','Modi','25/5/1999','GEC Anand','Bharuch','6936364584','Dmitri51@gmail.com'),(1454,'Abel','Bhandari','22/9/1998','GEC Anand','Anand','2626671143','Abel12@gmail.com'),(1455,'Ciaran','Joshi','12/7/2001','GH Patel Anand','Vadodara','5692839332','Ciaran56@gmail.com'),(1456,'Cruiz','Patel','7/7/2000','GEC Modasa','Navsari','7796749769','Cruiz63@gmail.com'),(1457,'Arved','Suthar','7/7/2002','GIT Gandhinagar','Banaskantha','5725845526','Arved87@gmail.com'),(1458,'A-Jay','Kotadiya','12/6/2000','GEC Modasa','Vyara','7969261514','A-Jay94@gmail.com'),(1459,'Daniil','Bhandari','20/8/1999','LJIET Ahmedabad','Sabarkantha','5194634812','Daniil48@gmail.com'),(1460,'Aonghus','Bhavsar','10/5/1998','GEC Anand','Kheda','3628826344','Aonghus62@gmail.com'),(1461,'Amrinder','Joshi','23/5/2002','GEC Gandhinagar','Junagadh','6481587297','Amrinder14@gmail.com'),(1462,'Gio','Panchal','14/4/2002','GMIT Bhavnagar','Mehsana','9775361875','Gio53@gmail.com'),(1463,'Howard','Patel','13/6/2000','LJIET Ahmedabad','Bharuch','3874796539','Howard99@gmail.com'),(1464,'Alexei','Panchal','3/8/2001','GMIT Bhavnagar','Anand','4442326775','Alexei39@gmail.com'),(1465,'Humza','Barot','22/3/1998','LJIET Ahmedabad','The Dangs','8525512461','Humza17@gmail.com'),(1466,'Aleksander','Joshi','3/6/1998','GEC Bhavnagar','Dahod','2733816731','Aleksander75@gmail.com'),(1467,'Hong','Prajapati','10/2/2000','GIT Gandhinagar','Ahmedabad','4825818861','Hong54@gmail.com'),(1468,'Alyas','Banarjee','20/3/1999','GIT Gandhinagar','Surat','9499371758','Alyas83@gmail.com'),(1469,'Grahame','Prajapati','3/8/2000','GEC Gandhinagar','Surendranagar','4481374547','Grahame75@gmail.com'),(1470,'Azaan','Bhandari','5/4/1998','GEC Modasa','Panchmahal','3446567159','Azaan77@gmail.com'),(1471,'Airidas','Panchal','18/5/1999','GEC Anand','Bhavnagar','1575754843','Airidas52@gmail.com'),(1472,'Avani','Bhavsar','2/1/2001','GEC Gandhinagar','Patan','3281761167','Avani67@gmail.com'),(1473,'Dilan','Panchal','7/1/2001','LJIET Ahmedabad','Bharuch','3467186782','Dilan11@gmail.com'),(1474,'Callyn','Joshi','20/4/2002','GEC Gandhinagar','The Dangs','2551227436','Callyn86@gmail.com'),(1475,'Fionn','Chudasma','23/6/2002','GEC Anand','Surendranagar','5225886739','Fionn82@gmail.com'),(1476,'Ardeshir','Barot','3/10/1998','GEC Modasa','Surendranagar','3764276785','Ardeshir84@gmail.com'),(1477,'Corey-James','Prajapati','8/11/2001','GMIT Bhavnagar','Anand','6229528646','Corey-James76@gmail.com'),(1478,'Boedyn','Makwana','6/11/2002','GEC Anand','Porbandar','6528765523','Boedyn52@gmail.com'),(1479,'Brendyn','Joshi','5/8/1999','GH Patel Anand','Anand','3531445318','Brendyn89@gmail.com'),(1480,'Erik','Mehta','20/10/1998','GH Patel Anand','Amreli district','1286928695','Erik88@gmail.com'),(1481,'Ardeshir','Barot','2/11/1999','GMIT Bhavnagar','Surat','4696379181','Ardeshir28@gmail.com'),(1482,'Husnain','Shah','14/8/2002','GEC Gandhinagar','Ahmedabad','1457618519','Husnain92@gmail.com'),(1483,'Angelo','Suthar','18/8/2000','GIT Gandhinagar','Junagadh','5134381132','Angelo24@gmail.com'),(1484,'Atli','Bhavsar','22/11/1999','GEC Bhavnagar','Navsari','3121681323','Atli49@gmail.com'),(1485,'Arryn','Shah','25/10/2000','GEC Gandhinagar','Vadodara','8549927581','Arryn92@gmail.com'),(1486,'Alexzander','Rajodiya','11/8/1999','GEC Gandhinagar','Kheda','3756442833','Alexzander97@gmail.com'),(1487,'Abdurraheem','Makwana','24/5/2001','GEC Gandhinagar','Surat','6528466771','Abdurraheem75@gmail.com'),(1488,'Alan','Panchal','18/1/1999','GIT Gandhinagar','Jamnagar','9341221641','Alan22@gmail.com'),(1489,'Freddie','Hingu','15/7/1999','GEC Gandhinagar','Panchmahal','2139348723','Freddie82@gmail.com'),(1490,'Ashlee-jay','Suthar','19/5/2002','GEC Modasa','Anand','5948427782','Ashlee-jay27@gmail.com'),(1491,'Abbas','Modi','11/11/1999','GEC Anand','Banaskantha','1726999286','Abbas43@gmail.com'),(1492,'Fodeba','Bhavsar','22/12/1999','GEC Bhavnagar','Gandhinagar','9415154431','Fodeba66@gmail.com'),(1493,'Alfee','Suthar','7/1/1998','GEC Anand','Ahmedabad','1183861797','Alfee87@gmail.com'),(1494,'Douglas','Bhandari','19/4/1999','GEC Bhavnagar','Kheda','2417469325','Douglas46@gmail.com'),(1495,'Ala','Mistry','22/10/2001','GMIT Bhavnagar','Vyara','9238554231','Ala54@gmail.com'),(1496,'Girius','Bhandari','21/10/1998','GEC Gandhinagar','Banaskantha','9826592756','Girius41@gmail.com'),(1497,'Conli','Hingu','3/4/2002','GEC Bhavnagar','Dahod','2228381858','Conli97@gmail.com'),(1498,'Colt','Shah','17/1/1999','GEC Gandhinagar','Navsari','4559185174','Colt74@gmail.com'),(1499,'Fintan','Suthar','10/6/1999','GEC Modasa','Kheda','5631884647','Fintan95@gmail.com'),(1500,'Butali','Chakrabarty','9/1/2000','GIT Gandhinagar','Surendranagar','1594949294','Butali19@gmail.com');
/*!40000 ALTER TABLE `student_basicDetails` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-11 18:06:49
-- MySQL dump 10.13  Distrib 8.0.29, for Linux (x86_64)
--
-- Host: localhost    Database: generateComboDynamically
-- ------------------------------------------------------
-- Server version	8.0.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `option_master`
--

DROP TABLE IF EXISTS `option_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `option_master` (
  `option_id` int NOT NULL,
  `combo_id` int DEFAULT NULL,
  `option_value` varchar(45) DEFAULT NULL,
  `option_key` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`option_id`),
  KEY `fk_option_master_1_idx` (`combo_id`),
  CONSTRAINT `fk_option_master_1` FOREIGN KEY (`combo_id`) REFERENCES `select_master` (`combo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `option_master`
--

LOCK TABLES `option_master` WRITE;
/*!40000 ALTER TABLE `option_master` DISABLE KEYS */;
INSERT INTO `option_master` VALUES (1,1,'Male','Male'),(2,1,'Female','Female'),(3,1,'Other','Other'),(4,2,'Big data Analytics','Big data Analytics'),(5,2,'Artificial Intelligence','Artificial Intelligence'),(6,2,'Data Structures','Data Structures'),(7,2,'Data Visualization','Data Visualization'),(8,2,'Machine Learning','Machine Learning'),(9,3,'GTU','GTU'),(10,3,'GSEB','GSEB'),(11,3,'CBSE','CBSE'),(12,4,'GEC Modasa','GEC Modasa'),(13,4,'GEC Bhavnagar','GEC Bhavnagar'),(14,4,'GEC Rajkot','GEC Rajkot'),(15,4,'GEC Patan','GEC Patan'),(16,5,'BE','BE'),(17,5,'BTech','BTech'),(18,5,'BCA','BCA'),(19,5,'ME','ME'),(20,5,'MTech','MTech'),(21,5,'MCA','MCA'),(22,6,'Single','Single'),(23,6,'Married','Married'),(24,6,'Divorced','Divorced'),(25,7,'Ahmedabad','Ahmedabad'),(26,7,'Vadodara','Vadodara'),(27,7,'Surat','Surat'),(28,7,'Modasa','Modasa'),(29,7,'Bhavnagar','Bhavnagar'),(30,7,'Rajkot','Rajkot'),(31,8,'40%','40%'),(32,8,'50%','50%'),(33,8,'60%','60%'),(34,8,'70%','70%'),(35,8,'80%','80%'),(36,8,'90%','90%'),(37,9,'Hindi','Hindi'),(38,9,'Gujarati','Gujarati'),(39,9,'English','English');
/*!40000 ALTER TABLE `option_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `select_master`
--

DROP TABLE IF EXISTS `select_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `select_master` (
  `combo_id` int NOT NULL AUTO_INCREMENT,
  `combo_name` varchar(45) DEFAULT NULL,
  `combo_key` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`combo_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `select_master`
--

LOCK TABLES `select_master` WRITE;
/*!40000 ALTER TABLE `select_master` DISABLE KEYS */;
INSERT INTO `select_master` VALUES (1,'gender','gender'),(2,'subjects','subjects'),(3,'university','university'),(4,'colleges','colleges'),(5,'courses','courses'),(6,'relationship_status','relationship_status'),(7,'location','location'),(8,'result','result'),(9,'language','language');
/*!40000 ALTER TABLE `select_master` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-11 18:06:49
-- MySQL dump 10.13  Distrib 8.0.29, for Linux (x86_64)
--
-- Host: localhost    Database: STUDENT_MASTER
-- ------------------------------------------------------
-- Server version	8.0.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `STUDENT`
--

DROP TABLE IF EXISTS `STUDENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `STUDENT` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(255) DEFAULT NULL,
  `LastName` varchar(255) DEFAULT NULL,
  `ContactNumber` varchar(255) DEFAULT NULL,
  `EmailId` varchar(255) DEFAULT NULL,
  `City` varchar(255) DEFAULT NULL,
  `College` varchar(255) DEFAULT NULL,
  `CreatedTime` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=1502 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `STUDENT`
--

LOCK TABLES `STUDENT` WRITE;
/*!40000 ALTER TABLE `STUDENT` DISABLE KEYS */;
INSERT INTO `STUDENT` VALUES (1,'JAINI','MEHTA','1234554321','jaini@gmail.com','Himmatnagar','GEC Modasa','2023-02-01 12:52:27'),(2,' ARVJGK',' VXBWK',' 7779959617',' dwhlz@gmail.com','Godhra','GH Patel Anand','2023-02-01 12:55:29'),(3,' SJAXQK',' ODYRY',' 6274499157',' rajhk@gmail.com','Ankleshwar','LJIET Ahmedabad','2023-02-01 12:55:29'),(4,' YVTQZZ',' UCYHV',' 7339217677',' mevqt@gmail.com','Jharkhand','GEC Bhavnagar','2023-02-01 12:55:29'),(5,' XTKBAC',' HPIRA',' 3952233886',' vuzsw@gmail.com','Anand','GMIT Bhavnagar','2023-02-01 12:55:29'),(6,' MXSZHI',' JLFWQ',' 2228993947',' zzxra@gmail.com','Mumbai','GEC Anand','2023-02-01 12:55:29'),(7,' CXAENG',' ZYGLU',' 1871193922',' woqss@gmail.com','Vadodara','GEC Modasa','2023-02-01 12:55:29'),(8,' XKGAQL',' BETNO',' 7322587194',' daqlc@gmail.com','Lunavada','GEC Modasa','2023-02-01 12:55:29'),(9,' IXYPFI',' VUUPB',' 1642385777',' zypis@gmail.com','Jharkhand','GEC Gandhinagar','2023-02-01 12:55:29'),(10,' ANQKUM',' NAMYR',' 6915258183',' kpjdn@gmail.com','Gandhinagar','GEC Anand','2023-02-01 12:55:29'),(11,' BBGJFG',' CFGVC',' 5477458711',' yucvm@gmail.com','Jaipur','GMIT Bhavnagar','2023-02-01 12:55:29'),(12,' CNMQAL',' LHKVN',' 3143462783',' kgcik@gmail.com','Bhavnagar','GEC Modasa','2023-02-01 12:55:29'),(13,' UJPPKN',' AQYMO',' 2886863121',' sxfra@gmail.com','Mumbai','GH Patel Anand','2023-02-01 12:55:29'),(14,' MYLFHM',' BMSRV',' 2722964825',' yumwu@gmail.com','Gandhinagar','GEC Modasa','2023-02-01 12:55:29'),(15,' GWLQUH',' AGTSP',' 5678332111',' fqhte@gmail.com','Jharkhand','GEC Anand','2023-02-01 12:55:29'),(16,' FZTYRA',' EVDWK',' 3553498595',' rkztz@gmail.com','Ankleshwar','GMIT Bhavnagar','2023-02-01 12:55:29'),(17,' OYAURL',' LPNUN',' 7764582854',' vcqno@gmail.com','Idar','LJIET Ahmedabad','2023-02-01 12:55:29'),(18,' YPHHAF',' GGLWJ',' 1784118234',' pdffj@gmail.com','Himmatnagar','GEC Bhavnagar','2023-02-01 12:55:29'),(19,' FEDNYF',' TKRTU',' 2391819357',' arkrn@gmail.com','Jaipur','GH Patel Anand','2023-02-01 12:55:29'),(20,' WOGHBP',' VSAXD',' 4767232885',' iwyke@gmail.com','Valsad','GEC Bhavnagar','2023-02-01 12:55:29'),(21,' TNELWW',' WVSUT',' 6781564735',' mvdbt@gmail.com','Patan','GEC Bhavnagar','2023-02-01 12:55:29'),(22,' GFSVSL',' ISETD',' 1937644138',' xvuzn@gmail.com','Jaipur','LJIET Ahmedabad','2023-02-01 12:55:29'),(23,' NIZIZY',' YKTUR',' 6569616991',' ismgn@gmail.com','Mumbai','GIT Gandhinagar','2023-02-01 12:55:29'),(24,' ZJLGKC',' VRNRY',' 2856836774',' iwolf@gmail.com','Jaipur','GEC Bhavnagar','2023-02-01 12:55:29'),(25,' TOBNZK',' BGSHH',' 4879621253',' orras@gmail.com','Modasa','GMIT Bhavnagar','2023-02-01 12:55:29'),(26,' BRIBAF',' PCPTM',' 9173352983',' vtyqd@gmail.com','Patan','GEC Gandhinagar','2023-02-01 12:55:29'),(27,' ZVFOGV',' GMRXZ',' 4812281189',' pngqj@gmail.com','Valsad','GMIT Bhavnagar','2023-02-01 12:55:29'),(28,' NCHQQN',' BUWWJ',' 1461311296',' xqelq@gmail.com','Gandhinagar','LJIET Ahmedabad','2023-02-01 12:55:29'),(29,' QISOJP',' ILNCW',' 8748316629',' lxoua@gmail.com','Jaipur','GH Patel Anand','2023-02-01 12:55:29'),(30,' UOURUN',' TJDJR',' 9986768752',' znmkr@gmail.com','Valsad','GH Patel Anand','2023-02-01 12:55:29'),(31,' REAVQG',' VUMKK',' 1398269735',' jzgpf@gmail.com','Idar','GEC Anand','2023-02-01 12:55:29'),(32,' YOLXDM',' ESAJC',' 7757614749',' aalcs@gmail.com','Anand','LJIET Ahmedabad','2023-02-01 12:55:29'),(33,' EVHUZQ',' KMBFB',' 6977882235',' nbebp@gmail.com','Mumbai','LJIET Ahmedabad','2023-02-01 12:55:29'),(34,' TWCOJJ',' ZFTDU',' 4268998813',' wputy@gmail.com','Jharkhand','GEC Bhavnagar','2023-02-01 12:55:29'),(35,' ZVNKHF',' NDUIE',' 7188769816',' ipkfc@gmail.com','Jaipur','GEC Modasa','2023-02-01 12:55:29'),(36,' NIMPPR',' KRYGA',' 8833329843',' rewgf@gmail.com','Ahmedabad','GMIT Bhavnagar','2023-02-01 12:55:29'),(37,' DTGXQB',' NOPTU',' 3865371739',' pzkze@gmail.com','Mumbai','GEC Modasa','2023-02-01 12:55:29'),(38,' ODQAND',' GNGMW',' 9615887191',' smrjw@gmail.com','Gandhinagar','GEC Gandhinagar','2023-02-01 12:55:29'),(39,' EISNLG',' UVKUZ',' 5828562116',' ummyr@gmail.com','Valsad','GH Patel Anand','2023-02-01 12:55:29'),(40,' FHVUFD',' DJDHP',' 7312848563',' rmbeb@gmail.com','Mumbai','GH Patel Anand','2023-02-01 12:55:29'),(41,' BEJBTU',' VXPUO',' 3358198959',' wneqw@gmail.com','Mehsana','GEC Bhavnagar','2023-02-01 12:55:29'),(42,' XCAMEY',' CJSPE',' 6737174378',' gplom@gmail.com','Modasa','LJIET Ahmedabad','2023-02-01 12:55:29'),(43,' ZWMWMM',' HKNTO',' 2896619745',' reuzu@gmail.com','Jharkhand','GMIT Bhavnagar','2023-02-01 12:55:29'),(44,' UEYGNE',' YYIAO',' 7729389427',' vefah@gmail.com','Godhra','GEC Anand','2023-02-01 12:55:29'),(45,' GLHKWJ',' SLGAF',' 9879587791',' dgfip@gmail.com','Anand','LJIET Ahmedabad','2023-02-01 12:55:29'),(46,' APKNUH',' IRCOX',' 7947293762',' mkxds@gmail.com','Valsad','GH Patel Anand','2023-02-01 12:55:29'),(47,' FIUXQG',' QTSOA',' 7152757747',' vdebi@gmail.com','Patan','GIT Gandhinagar','2023-02-01 12:55:29'),(48,' BBPKBI',' UFGSK',' 5799854359',' lytny@gmail.com','Patan','LJIET Ahmedabad','2023-02-01 12:55:29'),(49,' FSODUW',' LLHIY',' 6873466717',' feaux@gmail.com','Godhra','GEC Anand','2023-02-01 12:55:29'),(50,' CSPZEY',' MXEGU',' 7514512264',' ynmzs@gmail.com','Mumbai','GMIT Bhavnagar','2023-02-01 12:55:29'),(51,' FLHQTK',' UDCSH',' 2997923373',' mncqa@gmail.com','Ahmedabad','LJIET Ahmedabad','2023-02-01 12:55:29'),(52,' AVOXLL',' EFURX',' 7937715223',' tihnx@gmail.com','Lunavada','LJIET Ahmedabad','2023-02-01 12:55:29'),(53,' OOGMBL',' RGWGI',' 8199148223',' nxwny@gmail.com','Idar','GEC Modasa','2023-02-01 12:55:29'),(54,' VSUTVN',' MWLXQ',' 1475351575',' tccym@gmail.com','Ahmedabad','GEC Gandhinagar','2023-02-01 12:55:29'),(55,' WFATXU',' EWAJF',' 4188919352',' ellzs@gmail.com','Gandhinagar','GIT Gandhinagar','2023-02-01 12:55:29'),(56,' CYOEYK',' AGBBG',' 5863978299',' dqfut@gmail.com','Godhra','LJIET Ahmedabad','2023-02-01 12:55:29'),(57,' WWWOBI',' ECGGN',' 1278387662',' jyckr@gmail.com','Dahod','GEC Anand','2023-02-01 12:55:29'),(58,' OIRXKN',' SOZMR',' 9525655487',' nejzh@gmail.com','Godhra','LJIET Ahmedabad','2023-02-01 12:55:29'),(59,' ZPIZBV',' SEUWW',' 7295874429',' ffyux@gmail.com','Vadodara','GIT Gandhinagar','2023-02-01 12:55:29'),(60,' HVXIZR',' SDJEC',' 8437162358',' ckjiy@gmail.com','Dahod','GH Patel Anand','2023-02-01 12:55:29'),(61,' NGMWBW',' AKNFY',' 9152314847',' yijbu@gmail.com','Ankleshwar','GH Patel Anand','2023-02-01 12:55:29'),(62,' MYHSSV',' UDJIB',' 2412842836',' lmhab@gmail.com','Anand','GH Patel Anand','2023-02-01 12:55:29'),(63,' IAEDHY',' EHRIH',' 2152332662',' ujmqv@gmail.com','Godhra','GEC Bhavnagar','2023-02-01 12:55:29'),(64,' DWKVST',' BDWAJ',' 8545599297',' leiyo@gmail.com','Mumbai','GIT Gandhinagar','2023-02-01 12:55:29'),(65,' YQCALM',' ARIEU',' 6676177328',' oagdx@gmail.com','Anand','GEC Anand','2023-02-01 12:55:29'),(66,' HDRGAA',' LXOLN',' 8122943145',' pzxnt@gmail.com','Surat','LJIET Ahmedabad','2023-02-01 12:55:29'),(67,' ZKZGCV',' OXNEB',' 9118729324',' hsroj@gmail.com','Ahmedabad','GH Patel Anand','2023-02-01 12:55:29'),(68,' CEMGMH',' JNCCQ',' 3435724832',' nerqu@gmail.com','Ahmedabad','GEC Gandhinagar','2023-02-01 12:55:29'),(69,' BHWAUV',' HEDQL',' 1296817419',' ldidl@gmail.com','Idar','GH Patel Anand','2023-02-01 12:55:29'),(70,' SKUCAC',' AHESE',' 6223687429',' uzoqz@gmail.com','Bhavnagar','GEC Gandhinagar','2023-02-01 12:55:29'),(71,' RUOTAS',' JLZQP',' 9929733128',' xhhrq@gmail.com','Patan','GEC Gandhinagar','2023-02-01 12:55:29'),(72,' IGAESJ',' SBTHF',' 5976825278',' iumxu@gmail.com','Surat','GEC Bhavnagar','2023-02-01 12:55:29'),(73,' ZNEHOB',' JGUKL',' 9572414782',' vfhdg@gmail.com','Himmatnagar','GEC Gandhinagar','2023-02-01 12:55:29'),(74,' EWKBGS',' QAZGX',' 8328918329',' kwmwv@gmail.com','Valsad','GEC Anand','2023-02-01 12:55:29'),(75,' NQNXYI',' NCICX',' 4722257486',' jsltp@gmail.com','Jharkhand','GEC Gandhinagar','2023-02-01 12:55:29'),(76,' FAGJEH',' UGHUD',' 6455995869',' wflhd@gmail.com','Vadodara','GH Patel Anand','2023-02-01 12:55:29'),(77,' UBLPLN',' DOSEK',' 6798138793',' jafxb@gmail.com','Vadodara','GMIT Bhavnagar','2023-02-01 12:55:29'),(78,' ZQEBRB',' XJLAV',' 8339374932',' buaux@gmail.com','Patan','GMIT Bhavnagar','2023-02-01 12:55:29'),(79,' UKGSHZ',' HVNUI',' 6251133785',' whodp@gmail.com','Patan','GEC Anand','2023-02-01 12:55:29'),(80,' UHKAHI',' VXGSV',' 4138496516',' dhljc@gmail.com','Anand','LJIET Ahmedabad','2023-02-01 12:55:29'),(81,' PFEMGO',' SYLGX',' 7325578458',' zuwuk@gmail.com','Mumbai','GEC Modasa','2023-02-01 12:55:29'),(82,' KAJYTN',' HARBX',' 7848254733',' ceikw@gmail.com','Bhavnagar','GEC Gandhinagar','2023-02-01 12:55:29'),(83,' EVGZTG',' ERWFL',' 2139164735',' dztaf@gmail.com','Valsad','GEC Anand','2023-02-01 12:55:29'),(84,' QHIMIG',' VUVVG',' 6845754718',' kgznr@gmail.com','Dahod','GMIT Bhavnagar','2023-02-01 12:55:29'),(85,' OFOXWW',' ICJRJ',' 8923178651',' sayfq@gmail.com','Mehsana','GIT Gandhinagar','2023-02-01 12:55:29'),(86,' KNHSPN',' SSSKU',' 5851849154',' rdawo@gmail.com','Ankleshwar','GEC Modasa','2023-02-01 12:55:29'),(87,' ORSEJP',' NSCQZ',' 2825226917',' xkfbc@gmail.com','Dahod','GIT Gandhinagar','2023-02-01 12:55:29'),(88,' UIAEAW',' WIHAG',' 1499819619',' hwtaq@gmail.com','Vadodara','GEC Anand','2023-02-01 12:55:29'),(89,' OIZVAJ',' OSYHC',' 7727682124',' qfjqi@gmail.com','Patan','GEC Modasa','2023-02-01 12:55:29'),(90,' FJCVYC',' OEVGE',' 3951573639',' yievb@gmail.com','Dahod','GMIT Bhavnagar','2023-02-01 12:55:29'),(91,' EXNMNT',' ETLUV',' 1591138548',' etwlf@gmail.com','Idar','GEC Bhavnagar','2023-02-01 12:55:29'),(92,' HLAOZK',' MEEJT',' 5919858725',' dudwu@gmail.com','Valsad','GEC Gandhinagar','2023-02-01 12:55:29'),(93,' WBPZZM',' LHSAY',' 5972537945',' ypykk@gmail.com','Modasa','GH Patel Anand','2023-02-01 12:55:29'),(94,' OYOUQM',' VBKZW',' 3425316969',' sntnd@gmail.com','Idar','GEC Bhavnagar','2023-02-01 12:55:29'),(95,' EBEQYB',' BLXOX',' 3999461584',' fzvcb@gmail.com','Patan','GEC Bhavnagar','2023-02-01 12:55:29'),(96,' QKWVIV',' RTGGL',' 5915743462',' sphfu@gmail.com','Patan','GEC Gandhinagar','2023-02-01 12:55:29'),(97,' HNRYMM',' SBAGQ',' 8415872652',' hsrqo@gmail.com','Vadodara','GEC Anand','2023-02-01 12:55:29'),(98,' HQNBUO',' EPDIG',' 8341813423',' ugtfz@gmail.com','Patan','GEC Bhavnagar','2023-02-01 12:55:29'),(99,' NHFRQH',' BMDBV',' 1797451382',' fqcac@gmail.com','Surat','GEC Modasa','2023-02-01 12:55:29'),(100,' MBKCSD',' RWZCY',' 2921314363',' woule@gmail.com','Valsad','GH Patel Anand','2023-02-01 12:55:29'),(101,' AZCSBT',' FLBSB',' 2687523767',' nxokf@gmail.com','Ankleshwar','GH Patel Anand','2023-02-01 12:55:29'),(102,' ZSUDUB',' GFJXQ',' 8485645963',' ogcls@gmail.com','Jaipur','GEC Modasa','2023-02-01 12:55:29'),(103,' SMHPHI',' JFRBA',' 8847598592',' ucsyw@gmail.com','Gandhinagar','GMIT Bhavnagar','2023-02-01 12:55:29'),(104,' KHLYZN',' NSSIS',' 8136976666',' ruptk@gmail.com','Vadnagar','GH Patel Anand','2023-02-01 12:55:29'),(105,' PKYCBJ',' MHQPD',' 5238682889',' irhdp@gmail.com','Vadodara','LJIET Ahmedabad','2023-02-01 12:55:29'),(106,' ZVKUJJ',' FEEDX',' 5771615582',' eegbb@gmail.com','Patan','GIT Gandhinagar','2023-02-01 12:55:29'),(107,' WTUDEK',' JJIOB',' 9594472965',' yhgju@gmail.com','Gandhinagar','GEC Modasa','2023-02-01 12:55:29'),(108,' URQSJO',' FZSXZ',' 1823177752',' ronpv@gmail.com','Jaipur','GEC Bhavnagar','2023-02-01 12:55:29'),(109,' GYEJRL',' BWUZG',' 2954778599',' ffvdy@gmail.com','Jaipur','GIT Gandhinagar','2023-02-01 12:55:29'),(110,' CDZYEC',' DGMVP',' 8984979884',' vupil@gmail.com','Mehsana','GEC Modasa','2023-02-01 12:55:29'),(111,' RVLSDH',' TKTTU',' 2217954771',' rvmyi@gmail.com','Anand','LJIET Ahmedabad','2023-02-01 12:55:29'),(112,' NIZIFB',' KONOC',' 5635433818',' znkoh@gmail.com','Idar','GIT Gandhinagar','2023-02-01 12:55:29'),(113,' KMZMDT',' QOYNC',' 9449215868',' wgjwv@gmail.com','Mumbai','GEC Gandhinagar','2023-02-01 12:55:29'),(114,' DZYDYP',' CNLTL',' 8648523656',' onnvy@gmail.com','Surat','GEC Bhavnagar','2023-02-01 12:55:29'),(115,' FAGVUO',' IQUWY',' 9221285891',' paaty@gmail.com','Gandhinagar','GH Patel Anand','2023-02-01 12:55:29'),(116,' QDKJVN',' ERRKQ',' 7545552859',' qprjj@gmail.com','Himmatnagar','GEC Anand','2023-02-01 12:55:29'),(117,' HCQPBI',' WAFDT',' 9691684245',' purhd@gmail.com','Lunavada','LJIET Ahmedabad','2023-02-01 12:55:29'),(118,' BFEBZH',' HNIKS',' 3487667573',' iimkv@gmail.com','Mehsana','GH Patel Anand','2023-02-01 12:55:29'),(119,' QVQZJI',' XKDEL',' 5384323626',' gqbto@gmail.com','Gandhinagar','GIT Gandhinagar','2023-02-01 12:55:29'),(120,' PMYNID',' LMOUP',' 3691745811',' wiabc@gmail.com','Dahod','GEC Bhavnagar','2023-02-01 12:55:29'),(121,' CMHIBN',' NVQWO',' 1427155529',' ogucq@gmail.com','Anand','GH Patel Anand','2023-02-01 12:55:29'),(122,' HJXXOZ',' CKOCB',' 6947266197',' kjqzx@gmail.com','Valsad','LJIET Ahmedabad','2023-02-01 12:55:29'),(123,' XUVZXB',' MXEXU',' 7821497225',' zuzyb@gmail.com','Ahmedabad','GH Patel Anand','2023-02-01 12:55:29'),(124,' YAHOLH',' ZDHWW',' 6264196685',' giqyp@gmail.com','Mumbai','GEC Modasa','2023-02-01 12:55:29'),(125,' EWWWWM',' MWJIB',' 7164131376',' gjvek@gmail.com','Himmatnagar','GH Patel Anand','2023-02-01 12:55:29'),(126,' YTSBPM',' SAYJT',' 5498736771',' glilf@gmail.com','Valsad','GEC Gandhinagar','2023-02-01 12:55:29'),(127,' OKMNBU',' FKZFL',' 5383236214',' ruzvn@gmail.com','Lunavada','GEC Modasa','2023-02-01 12:55:29'),(128,' NNYXTY',' APZEK',' 5496347742',' itrxd@gmail.com','Idar','GEC Modasa','2023-02-01 12:55:29'),(129,' ZRPBAZ',' QJFJT',' 9672144225',' xzfwg@gmail.com','Ankleshwar','GEC Bhavnagar','2023-02-01 12:55:29'),(130,' UHANFH',' PECEA',' 7569318835',' cqapm@gmail.com','Gandhinagar','GEC Bhavnagar','2023-02-01 12:55:29'),(131,' JCEDFM',' BBWLB',' 8244674881',' auapj@gmail.com','Lunavada','GEC Bhavnagar','2023-02-01 12:55:29'),(132,' AQBNIL',' CBTQD',' 2655156157',' qpsaa@gmail.com','Jaipur','GIT Gandhinagar','2023-02-01 12:55:29'),(133,' NGVKEK',' WUZTQ',' 5488547125',' emrnw@gmail.com','Mehsana','GEC Bhavnagar','2023-02-01 12:55:29'),(134,' MORYSH',' PFQQY',' 3771535861',' wcryh@gmail.com','Jaipur','GMIT Bhavnagar','2023-02-01 12:55:29'),(135,' GWLAVQ',' ZYHSA',' 4855629338',' nknyi@gmail.com','Ankleshwar','GEC Anand','2023-02-01 12:55:29'),(136,' NUEVAC',' ZGXZO',' 1787254624',' zfpyy@gmail.com','Surat','GMIT Bhavnagar','2023-02-01 12:55:29'),(137,' ESXCGE',' FMPTG',' 4264754399',' svheu@gmail.com','Modasa','LJIET Ahmedabad','2023-02-01 12:55:29'),(138,' WNMIZI',' WMGAK',' 8629656188',' lclci@gmail.com','Patan','GIT Gandhinagar','2023-02-01 12:55:29'),(139,' DKDMIW',' QOACZ',' 4245969338',' iezxd@gmail.com','Jaipur','GIT Gandhinagar','2023-02-01 12:55:29'),(140,' WMGZKU',' QZWNE',' 5398143739',' cfwuo@gmail.com','Vadnagar','GEC Gandhinagar','2023-02-01 12:55:29'),(141,' JBZDOQ',' WGUPF',' 8375849346',' movwn@gmail.com','Mehsana','GMIT Bhavnagar','2023-02-01 12:55:29'),(142,' BEMDEW',' XNMHJ',' 4194777158',' tunyx@gmail.com','Surat','GEC Modasa','2023-02-01 12:55:29'),(143,' IAXNID',' ANAJE',' 8773991538',' niiri@gmail.com','Lunavada','GEC Modasa','2023-02-01 12:55:29'),(144,' XPJRBE',' VDRDR',' 2943771918',' nvcpd@gmail.com','Jharkhand','GEC Bhavnagar','2023-02-01 12:55:29'),(145,' EFUQVX',' YCKJK',' 8626988386',' cvjoh@gmail.com','Bhavnagar','GEC Gandhinagar','2023-02-01 12:55:29'),(146,' NSJAGP',' WDTNN',' 9623837597',' rorsw@gmail.com','Mumbai','LJIET Ahmedabad','2023-02-01 12:55:29'),(147,' YAMMOI',' PVFXW',' 3998922719',' pzfrx@gmail.com','Idar','LJIET Ahmedabad','2023-02-01 12:55:29'),(148,' LKJUUF',' RRDZB',' 5369211358',' jvwwl@gmail.com','Jaipur','GEC Anand','2023-02-01 12:55:29'),(149,' FLKVPY',' ICPWQ',' 7279694725',' ktnmf@gmail.com','Patan','GH Patel Anand','2023-02-01 12:55:29'),(150,' HBSLNM',' TLVGS',' 5296611562',' wgfal@gmail.com','Idar','GIT Gandhinagar','2023-02-01 12:55:29'),(151,' CBEZGB',' WOQER',' 7417241878',' lbqgt@gmail.com','Vadodara','GIT Gandhinagar','2023-02-01 12:55:29'),(152,' HJFFHX',' YKSSF',' 4187946175',' odtiq@gmail.com','Ahmedabad','GH Patel Anand','2023-02-01 12:55:29'),(153,' VQSEXL',' GQZUZ',' 1539997911',' ljvlt@gmail.com','Himmatnagar','GIT Gandhinagar','2023-02-01 12:55:29'),(154,' UNQCJJ',' RAJJE',' 6345953716',' yjszs@gmail.com','Idar','GEC Anand','2023-02-01 12:55:29'),(155,' IPRZTI',' ELIPZ',' 7242942164',' cronw@gmail.com','Godhra','GMIT Bhavnagar','2023-02-01 12:55:29'),(156,' KAWXIU',' XVDJG',' 2411761248',' dfxkc@gmail.com','Ankleshwar','GEC Gandhinagar','2023-02-01 12:55:29'),(157,' HHVBKV',' EDWDZ',' 7472299955',' iftlh@gmail.com','Ahmedabad','GEC Bhavnagar','2023-02-01 12:55:29'),(158,' ZWVKXL',' FENPK',' 2892623144',' lepxw@gmail.com','Dahod','GH Patel Anand','2023-02-01 12:55:29'),(159,' MWAASD',' PYFIR',' 7968266355',' zlobu@gmail.com','Gandhinagar','LJIET Ahmedabad','2023-02-01 12:55:29'),(160,' FWVLOZ',' TLJZH',' 9265478114',' grrre@gmail.com','Godhra','LJIET Ahmedabad','2023-02-01 12:55:29'),(161,' LWZQUU',' GGJVV',' 1844539846',' mazdf@gmail.com','Idar','GEC Bhavnagar','2023-02-01 12:55:29'),(162,' NHIULX',' EVKLR',' 4763522384',' ccujh@gmail.com','Gandhinagar','GEC Anand','2023-02-01 12:55:29'),(163,' KSEMAU',' AHCSQ',' 4649777523',' haswl@gmail.com','Anand','GEC Modasa','2023-02-01 12:55:29'),(164,' UKEQDB',' IRYDC',' 7733391784',' xjksf@gmail.com','Valsad','GEC Anand','2023-02-01 12:55:29'),(165,' VICQMQ',' ZQNCZ',' 6328956759',' ajmnp@gmail.com','Patan','GEC Anand','2023-02-01 12:55:29'),(166,' BAIQJN',' VULVG',' 4628275387',' mckcp@gmail.com','Ahmedabad','GIT Gandhinagar','2023-02-01 12:55:29'),(167,' CNPSMB',' NMHPS',' 4971241942',' xyykq@gmail.com','Ankleshwar','GIT Gandhinagar','2023-02-01 12:55:29'),(168,' WMLSOE',' WLTKH',' 2846811944',' erynk@gmail.com','Bhavnagar','GEC Anand','2023-02-01 12:55:29'),(169,' MRKUMD',' RQSKK',' 9256343286',' gocti@gmail.com','Ankleshwar','LJIET Ahmedabad','2023-02-01 12:55:29'),(170,' NCLPUR',' COBGM',' 5516729399',' pzcfi@gmail.com','Ankleshwar','GEC Anand','2023-02-01 12:55:29'),(171,' JSXJJK',' MRTLA',' 2115924838',' znqxe@gmail.com','Jaipur','GEC Gandhinagar','2023-02-01 12:55:29'),(172,' QXVLZP',' IAHXY',' 5244686582',' ecirm@gmail.com','Vadodara','GEC Gandhinagar','2023-02-01 12:55:29'),(173,' DJXKBC',' RIWCS',' 6922147783',' pftny@gmail.com','Mumbai','GIT Gandhinagar','2023-02-01 12:55:29'),(174,' WNFWRW',' RCPFY',' 4778531596',' kxpei@gmail.com','Ankleshwar','GEC Modasa','2023-02-01 12:55:29'),(175,' IVRRNV',' ZGJND',' 4155427159',' bftwz@gmail.com','Valsad','GH Patel Anand','2023-02-01 12:55:29'),(176,' UCVFUO',' PJKMP',' 5995695894',' haagf@gmail.com','Godhra','LJIET Ahmedabad','2023-02-01 12:55:29'),(177,' POMLFB',' CILIN',' 8996528176',' cdhyt@gmail.com','Lunavada','GEC Gandhinagar','2023-02-01 12:55:29'),(178,' AUJXCK',' AZDII',' 9553423427',' nqqxl@gmail.com','Himmatnagar','GIT Gandhinagar','2023-02-01 12:55:29'),(179,' FCJLFI',' XJPUC',' 3523328332',' jzhtz@gmail.com','Vadodara','GH Patel Anand','2023-02-01 12:55:29'),(180,' CTJUFN',' SATYT',' 3349113814',' eojlt@gmail.com','Jharkhand','GIT Gandhinagar','2023-02-01 12:55:29'),(181,' DJFFCC',' NCBPP',' 5418943528',' laldh@gmail.com','Patan','GEC Anand','2023-02-01 12:55:29'),(182,' IGBZUW',' IPBWQ',' 3943466145',' nkpxc@gmail.com','Bhavnagar','GMIT Bhavnagar','2023-02-01 12:55:29'),(183,' YQNPHA',' KYPFA',' 5325926793',' octza@gmail.com','Mumbai','LJIET Ahmedabad','2023-02-01 12:55:29'),(184,' PQDZXY',' PAOEP',' 6794687937',' civmd@gmail.com','Dahod','GIT Gandhinagar','2023-02-01 12:55:29'),(185,' CGJAFS',' MRMSN',' 1995646736',' ekqpl@gmail.com','Dahod','GEC Modasa','2023-02-01 12:55:29'),(186,' SVTEER',' KVOTE',' 1628426182',' bybxz@gmail.com','Godhra','GEC Bhavnagar','2023-02-01 12:55:29'),(187,' GSRVWJ',' JQHBO',' 2578491235',' ghooa@gmail.com','Surat','GEC Modasa','2023-02-01 12:55:29'),(188,' MVMHRA',' LIMQR',' 7466729643',' dtwcp@gmail.com','Dahod','GEC Bhavnagar','2023-02-01 12:55:29'),(189,' UOALLQ',' PNMEI',' 4797588648',' kmlwk@gmail.com','Gandhinagar','GEC Gandhinagar','2023-02-01 12:55:29'),(190,' LPEGDK',' MTWJU',' 3223974829',' royau@gmail.com','Anand','GEC Modasa','2023-02-01 12:55:29'),(191,' SQZHVG',' RWQJV',' 3518299984',' bdoig@gmail.com','Jharkhand','GEC Anand','2023-02-01 12:55:29'),(192,' RJFAEY',' KSFPC',' 9738892713',' kadnn@gmail.com','Patan','GEC Bhavnagar','2023-02-01 12:55:29'),(193,' VXFSPD',' PXTYZ',' 7223365232',' sorzz@gmail.com','Ahmedabad','LJIET Ahmedabad','2023-02-01 12:55:29'),(194,' JSYGMO',' SYTXR',' 8523761772',' tytmy@gmail.com','Mumbai','GEC Gandhinagar','2023-02-01 12:55:29'),(195,' NZYCTQ',' WRDAF',' 8745992471',' bxqcw@gmail.com','Mumbai','GEC Gandhinagar','2023-02-01 12:55:29'),(196,' ETKXLK',' RQMRJ',' 9962998435',' ccnru@gmail.com','Vadnagar','LJIET Ahmedabad','2023-02-01 12:55:29'),(197,' XCHLZM',' DLJTJ',' 4418349897',' izebo@gmail.com','Ankleshwar','GEC Modasa','2023-02-01 12:55:29'),(198,' ZINPRM',' KLIDB',' 6332853979',' oyqxc@gmail.com','Valsad','LJIET Ahmedabad','2023-02-01 12:55:29'),(199,' WFLZMR',' INKNO',' 5272145635',' xjhyg@gmail.com','Valsad','GMIT Bhavnagar','2023-02-01 12:55:29'),(200,' PVVJIL',' TJTKX',' 2875111748',' wopiw@gmail.com','Gandhinagar','GEC Anand','2023-02-01 12:55:29'),(201,' EQZXZM',' GTQGA',' 9876346384',' izauu@gmail.com','Ankleshwar','GEC Anand','2023-02-01 12:55:29'),(202,' VUKCDH',' HMBJI',' 1755622426',' ugsqa@gmail.com','Valsad','LJIET Ahmedabad','2023-02-01 12:55:29'),(203,' SFVALK',' XQJKQ',' 7241313832',' tiuoz@gmail.com','Vadnagar','LJIET Ahmedabad','2023-02-01 12:55:29'),(204,' MLPJNG',' NHCRJ',' 9472484855',' aqhqd@gmail.com','Surat','GEC Anand','2023-02-01 12:55:29'),(205,' XRSXMC',' WUGWD',' 8359825126',' ovaqt@gmail.com','Mumbai','GMIT Bhavnagar','2023-02-01 12:55:29'),(206,' FDHAUP',' SOTYU',' 4329893997',' sccjd@gmail.com','Mumbai','GMIT Bhavnagar','2023-02-01 12:55:29'),(207,' XUMRUT',' DJJYC',' 1147641596',' ektkl@gmail.com','Ankleshwar','GH Patel Anand','2023-02-01 12:55:29'),(208,' GUATPG',' RGXNL',' 1121163871',' yfuyj@gmail.com','Ankleshwar','GEC Bhavnagar','2023-02-01 12:55:29'),(209,' IEILWB',' SMKOI',' 6665268563',' quewn@gmail.com','Jaipur','GEC Gandhinagar','2023-02-01 12:55:29'),(210,' TFDQBB',' QJEGJ',' 8369913947',' friqb@gmail.com','Vadodara','GIT Gandhinagar','2023-02-01 12:55:29'),(211,' IFSRGN',' NJZZC',' 6613667321',' camjg@gmail.com','Modasa','GEC Gandhinagar','2023-02-01 12:55:29'),(212,' HUPBPI',' KEPTK',' 2718569955',' pbkge@gmail.com','Himmatnagar','GH Patel Anand','2023-02-01 12:55:29'),(213,' CSAIRE',' YUTXR',' 9111674796',' kvgeq@gmail.com','Jaipur','GEC Bhavnagar','2023-02-01 12:55:29'),(214,' UIIPYV',' CSCRZ',' 9332892185',' dwtpr@gmail.com','Lunavada','GEC Modasa','2023-02-01 12:55:29'),(215,' CKCLTJ',' ANGYJ',' 3343449457',' zrkkx@gmail.com','Bhavnagar','GEC Modasa','2023-02-01 12:55:29'),(216,' YSUXJE',' FKMWC',' 5146929821',' khbai@gmail.com','Lunavada','GEC Anand','2023-02-01 12:55:29'),(217,' CVIFBM',' IBINH',' 3887885317',' fzcub@gmail.com','Vadnagar','GEC Anand','2023-02-01 12:55:29'),(218,' PSLKFJ',' ZOGTK',' 5637344999',' bgkbb@gmail.com','Godhra','LJIET Ahmedabad','2023-02-01 12:55:29'),(219,' AGFWHA',' FXFUZ',' 1482653487',' aosbg@gmail.com','Patan','GH Patel Anand','2023-02-01 12:55:29'),(220,' XIKUTA',' YZHZO',' 5458645734',' uxdxy@gmail.com','Himmatnagar','GEC Modasa','2023-02-01 12:55:29'),(221,' EIHGRV',' GZSDP',' 1284892529',' hqjch@gmail.com','Himmatnagar','GEC Modasa','2023-02-01 12:55:29'),(222,' QXZKDZ',' IFZAE',' 7491553745',' ttlij@gmail.com','Jharkhand','GMIT Bhavnagar','2023-02-01 12:55:29'),(223,' YXXUCM',' SSYHA',' 9419313254',' piott@gmail.com','Jaipur','GMIT Bhavnagar','2023-02-01 12:55:29'),(224,' VMWHAQ',' ZFZMS',' 9853527626',' qlewy@gmail.com','Himmatnagar','GH Patel Anand','2023-02-01 12:55:29'),(225,' VQCVFX',' WMNIH',' 4119538861',' zjtga@gmail.com','Surat','GMIT Bhavnagar','2023-02-01 12:55:29'),(226,' BOONKY',' VENMA',' 6789295423',' bkvbz@gmail.com','Vadnagar','GMIT Bhavnagar','2023-02-01 12:55:29'),(227,' CHVMQQ',' QWADJ',' 9575387457',' cqhmw@gmail.com','Himmatnagar','GEC Bhavnagar','2023-02-01 12:55:29'),(228,' KPCKKZ',' GHIOT',' 5443714454',' gciwk@gmail.com','Mehsana','GH Patel Anand','2023-02-01 12:55:29'),(229,' EVHEPX',' BQWEA',' 6867353488',' mwhig@gmail.com','Ankleshwar','GEC Anand','2023-02-01 12:55:29'),(230,' QXFWUO',' DVYOI',' 1563317273',' itijb@gmail.com','Modasa','GIT Gandhinagar','2023-02-01 12:55:29'),(231,' NPCNJS',' WWIDN',' 7973679851',' bnqql@gmail.com','Idar','LJIET Ahmedabad','2023-02-01 12:55:29'),(232,' OFOMOB',' REOZY',' 3483339539',' lxdkg@gmail.com','Dahod','LJIET Ahmedabad','2023-02-01 12:55:29'),(233,' GHNKBU',' KHROF',' 6959597351',' ubjci@gmail.com','Bhavnagar','GH Patel Anand','2023-02-01 12:55:29'),(234,' CUNFFV',' LOIDB',' 3246228344',' naoso@gmail.com','Modasa','LJIET Ahmedabad','2023-02-01 12:55:29'),(235,' RWQRLV',' QVNLD',' 6399263924',' atgez@gmail.com','Valsad','GEC Modasa','2023-02-01 12:55:29'),(236,' OSTQVO',' UXWGI',' 8551812278',' bjtzx@gmail.com','Bhavnagar','GEC Modasa','2023-02-01 12:55:29'),(237,' XYUGLP',' MJGVX',' 9679316199',' kzomh@gmail.com','Gandhinagar','GEC Modasa','2023-02-01 12:55:29'),(238,' CPHUOB',' PCAFL',' 9516521249',' iecyv@gmail.com','Surat','GEC Gandhinagar','2023-02-01 12:55:29'),(239,' NXCGRO',' YWYSS',' 2661298367',' tkgrl@gmail.com','Anand','GEC Modasa','2023-02-01 12:55:29'),(240,' ZOOJLE',' EBBXJ',' 8214536551',' vbnxu@gmail.com','Vadodara','GIT Gandhinagar','2023-02-01 12:55:29'),(241,' ORKZXF',' TSJDA',' 9358436617',' jxhvj@gmail.com','Dahod','GMIT Bhavnagar','2023-02-01 12:55:29'),(242,' JFHLYI',' IFTXT',' 2959237314',' nmltx@gmail.com','Vadnagar','GEC Anand','2023-02-01 12:55:29'),(243,' PYUIPH',' JBTEB',' 2651143268',' keois@gmail.com','Himmatnagar','GEC Gandhinagar','2023-02-01 12:55:29'),(244,' URGNVB',' VFQMJ',' 2323398944',' ceglj@gmail.com','Idar','GMIT Bhavnagar','2023-02-01 12:55:29'),(245,' SVWALM',' PSNCQ',' 3642644799',' gjimd@gmail.com','Mumbai','GMIT Bhavnagar','2023-02-01 12:55:29'),(246,' CXJHWS',' MJUQR',' 5157915936',' mawey@gmail.com','Vadnagar','GEC Anand','2023-02-01 12:55:29'),(247,' RMCCQP',' XYBXN',' 6325958914',' seoqi@gmail.com','Ankleshwar','GEC Modasa','2023-02-01 12:55:29'),(248,' OMKORL',' FOYXD',' 9767615991',' tfplq@gmail.com','Dahod','GEC Bhavnagar','2023-02-01 12:55:29'),(249,' PXUEYC',' SQGWB',' 3425667533',' llpgo@gmail.com','Mumbai','GH Patel Anand','2023-02-01 12:55:29'),(250,' PLUKEN',' SQMUD',' 8911137919',' jgpst@gmail.com','Dahod','GIT Gandhinagar','2023-02-01 12:55:29'),(251,' HQDTDQ',' EIUZW',' 4894299221',' ytqlz@gmail.com','Ankleshwar','GMIT Bhavnagar','2023-02-01 12:55:29'),(252,' FQBSSC',' RLXLG',' 3996883317',' gfgac@gmail.com','Jharkhand','GEC Anand','2023-02-01 12:55:29'),(253,' AOXKQO',' HOAEI',' 8229358846',' neaox@gmail.com','Surat','LJIET Ahmedabad','2023-02-01 12:55:29'),(254,' SNIIHO',' EMMBY',' 7565677227',' tmclg@gmail.com','Gandhinagar','GIT Gandhinagar','2023-02-01 12:55:29'),(255,' JREYIE',' LVTFJ',' 5146752737',' abops@gmail.com','Lunavada','GMIT Bhavnagar','2023-02-01 12:55:29'),(256,' CGQDDQ',' UTJJH',' 4182823351',' mdkji@gmail.com','Ahmedabad','GIT Gandhinagar','2023-02-01 12:55:29'),(257,' VTDFJG',' GNAOU',' 7418231488',' pzxnf@gmail.com','Vadnagar','LJIET Ahmedabad','2023-02-01 12:55:29'),(258,' MOKQDG',' OFXOL',' 1871758882',' airht@gmail.com','Surat','GMIT Bhavnagar','2023-02-01 12:55:29'),(259,' OLIANL',' CTYDX',' 1849959751',' hiyiu@gmail.com','Jharkhand','GMIT Bhavnagar','2023-02-01 12:55:29'),(260,' ABCGCM',' PWXFO',' 8824767811',' odfbn@gmail.com','Modasa','LJIET Ahmedabad','2023-02-01 12:55:29'),(261,' PLIZGH',' OGNYO',' 3854417395',' gpolk@gmail.com','Anand','GIT Gandhinagar','2023-02-01 12:55:29'),(262,' HZKQTL',' QPYFK',' 1553224452',' qeara@gmail.com','Vadnagar','GH Patel Anand','2023-02-01 12:55:29'),(263,' JZMZCH',' CFZPA',' 5226322628',' kroip@gmail.com','Mehsana','GEC Anand','2023-02-01 12:55:29'),(264,' MTVXIA',' QNJCS',' 9594446936',' pewie@gmail.com','Anand','GH Patel Anand','2023-02-01 12:55:29'),(265,' QZEFQI',' NFZTR',' 8117511439',' rxhgc@gmail.com','Modasa','GIT Gandhinagar','2023-02-01 12:55:29'),(266,' KGVNIP',' MENBG',' 6456478592',' prfvx@gmail.com','Surat','GEC Bhavnagar','2023-02-01 12:55:29'),(267,' NKFKHY',' YMNUP',' 7534724744',' bggzy@gmail.com','Godhra','GEC Gandhinagar','2023-02-01 12:55:29'),(268,' WTSSLN',' PBUMW',' 6821389183',' ixskp@gmail.com','Himmatnagar','GEC Bhavnagar','2023-02-01 12:55:29'),(269,' ECONIC',' VMXRT',' 7646748962',' whhbt@gmail.com','Ahmedabad','GMIT Bhavnagar','2023-02-01 12:55:29'),(270,' VAQRAP',' TLDQT',' 3148219992',' agmff@gmail.com','Godhra','GEC Anand','2023-02-01 12:55:29'),(271,' HRVTTN',' KBZRN',' 8762674565',' nwscx@gmail.com','Himmatnagar','GEC Bhavnagar','2023-02-01 12:55:29'),(272,' NDACIL',' TGBCR',' 3274234164',' rahke@gmail.com','Lunavada','GH Patel Anand','2023-02-01 12:55:29'),(273,' WSTTZC',' QWEYT',' 1724966216',' tlwzn@gmail.com','Mehsana','GEC Modasa','2023-02-01 12:55:29'),(274,' TJDWEH',' IYWCU',' 1727713449',' gnugx@gmail.com','Bhavnagar','GEC Gandhinagar','2023-02-01 12:55:29'),(275,' VKVKHG',' CZCGV',' 4377866533',' ccndw@gmail.com','Vadnagar','LJIET Ahmedabad','2023-02-01 12:55:29'),(276,' VNIEXR',' UOSYP',' 4184672978',' bbodg@gmail.com','Dahod','LJIET Ahmedabad','2023-02-01 12:55:29'),(277,' STSNSK',' EYISF',' 2719618862',' dcesg@gmail.com','Himmatnagar','LJIET Ahmedabad','2023-02-01 12:55:29'),(278,' SBGQHX',' NXVVU',' 6943961467',' aufkt@gmail.com','Godhra','GEC Anand','2023-02-01 12:55:29'),(279,' VMNXZT',' XYEUB',' 3797234255',' vdfxh@gmail.com','Himmatnagar','GIT Gandhinagar','2023-02-01 12:55:29'),(280,' SKHLND',' OARHM',' 3891968129',' vhlim@gmail.com','Surat','LJIET Ahmedabad','2023-02-01 12:55:29'),(281,' QFQSTD',' ZAYLK',' 2931637212',' pvgyi@gmail.com','Vadnagar','GEC Gandhinagar','2023-02-01 12:55:29'),(282,' VVFANW',' GWKUH',' 8445686596',' bflrh@gmail.com','Vadodara','GEC Anand','2023-02-01 12:55:29'),(283,' HSKKWH',' DJGFK',' 6687363849',' giupt@gmail.com','Ankleshwar','GEC Bhavnagar','2023-02-01 12:55:29'),(284,' XLAKOR',' RPLVE',' 9474191731',' cgcjs@gmail.com','Ankleshwar','GEC Anand','2023-02-01 12:55:29'),(285,' TDHIOE',' ALFVW',' 2385176854',' cehlv@gmail.com','Vadodara','GEC Bhavnagar','2023-02-01 12:55:29'),(286,' CUWKAS',' OVTWH',' 2772318985',' eizau@gmail.com','Vadodara','GH Patel Anand','2023-02-01 12:55:29'),(287,' LELQHL',' DHZQT',' 3811611364',' ukfaf@gmail.com','Dahod','GEC Modasa','2023-02-01 12:55:29'),(288,' EFWDOH',' WUIGS',' 2551412619',' pjyih@gmail.com','Anand','GEC Gandhinagar','2023-02-01 12:55:29'),(289,' KAUZOG',' EWFCD',' 2891521315',' mcmzg@gmail.com','Gandhinagar','GH Patel Anand','2023-02-01 12:55:29'),(290,' MUHOIF',' OLKTK',' 2833495239',' mfuld@gmail.com','Lunavada','LJIET Ahmedabad','2023-02-01 12:55:29'),(291,' NZJTBS',' LJWKK',' 8244416971',' uncpb@gmail.com','Gandhinagar','GEC Anand','2023-02-01 12:55:29'),(292,' UZKTPS',' OLVSQ',' 2634452326',' znkdy@gmail.com','Ahmedabad','GIT Gandhinagar','2023-02-01 12:55:29'),(293,' RXROBX',' OILOT',' 4733574262',' xfogp@gmail.com','Dahod','LJIET Ahmedabad','2023-02-01 12:55:29'),(294,' OTCVJZ',' VXHRW',' 4828556363',' gcqit@gmail.com','Godhra','LJIET Ahmedabad','2023-02-01 12:55:29'),(295,' VMSBEU',' HYRZL',' 4464145193',' gbkrm@gmail.com','Ahmedabad','GEC Anand','2023-02-01 12:55:29'),(296,' HVBHQW',' JROSZ',' 4434669944',' ekyef@gmail.com','Jaipur','GEC Modasa','2023-02-01 12:55:29'),(297,' OREZNF',' QVHDX',' 8488679636',' spiqu@gmail.com','Patan','GEC Gandhinagar','2023-02-01 12:55:29'),(298,' UUDVWL',' ENDPI',' 9342159811',' zkzrp@gmail.com','Jaipur','LJIET Ahmedabad','2023-02-01 12:55:29'),(299,' NTPJPC',' CHJFC',' 5981214617',' nbmec@gmail.com','Vadodara','GEC Gandhinagar','2023-02-01 12:55:29'),(300,' BVEPHW',' SZABL',' 1392563173',' hjcxa@gmail.com','Ahmedabad','LJIET Ahmedabad','2023-02-01 12:55:29'),(301,' GMYSBV',' FPVVT',' 3321945565',' sqyri@gmail.com','Idar','GEC Bhavnagar','2023-02-01 12:55:29'),(302,' FDMJFH',' GCBWC',' 3765555754',' lotoq@gmail.com','Mehsana','GEC Modasa','2023-02-01 12:55:29'),(303,' BMZHRL',' CBGEM',' 8292845646',' qzdzz@gmail.com','Himmatnagar','GEC Gandhinagar','2023-02-01 12:55:29'),(304,' SJAVSP',' FNGVI',' 1785871237',' imaeq@gmail.com','Jharkhand','GH Patel Anand','2023-02-01 12:55:29'),(305,' QEONHR',' VLJDP',' 9219797313',' jqskf@gmail.com','Jharkhand','GIT Gandhinagar','2023-02-01 12:55:29'),(306,' HNTBST',' DBLIQ',' 4442214128',' vmkiy@gmail.com','Jharkhand','GMIT Bhavnagar','2023-02-01 12:55:29'),(307,' WYGZPF',' OPWUC',' 3681417254',' sbrmg@gmail.com','Lunavada','GEC Bhavnagar','2023-02-01 12:55:29'),(308,' YCNMOC',' OUVST',' 2194638534',' xhehh@gmail.com','Godhra','GH Patel Anand','2023-02-01 12:55:29'),(309,' UBHBAM',' VCQIO',' 1851778151',' dhrbt@gmail.com','Patan','LJIET Ahmedabad','2023-02-01 12:55:29'),(310,' JQDIKE',' ZOWYZ',' 1232325733',' xlpdg@gmail.com','Patan','GEC Bhavnagar','2023-02-01 12:55:29'),(311,' JTLHYQ',' WOADD',' 7223214698',' muzvb@gmail.com','Anand','GMIT Bhavnagar','2023-02-01 12:55:29'),(312,' PUFPVZ',' MBCYE',' 6798183947',' ornte@gmail.com','Jharkhand','GEC Anand','2023-02-01 12:55:29'),(313,' XOZFXY',' TBZDW',' 7851152841',' hiiaj@gmail.com','Vadodara','GIT Gandhinagar','2023-02-01 12:55:29'),(314,' CUYVBI',' VVNIV',' 8743262452',' iuqoc@gmail.com','Modasa','GEC Bhavnagar','2023-02-01 12:55:29'),(315,' YPOZQI',' NSZGQ',' 5681445722',' dbrxz@gmail.com','Vadodara','LJIET Ahmedabad','2023-02-01 12:55:29'),(316,' XIHFOB',' PDPGF',' 7284642871',' gepub@gmail.com','Dahod','GEC Bhavnagar','2023-02-01 12:55:29'),(317,' WGVVTW',' GMSUM',' 2593362656',' ebfgh@gmail.com','Patan','GEC Anand','2023-02-01 12:55:29'),(318,' AWRMHZ',' BDMAX',' 5661438245',' omnon@gmail.com','Gandhinagar','GH Patel Anand','2023-02-01 12:55:29'),(319,' HXARPB',' KYWVZ',' 1434785644',' xjles@gmail.com','Lunavada','GMIT Bhavnagar','2023-02-01 12:55:29'),(320,' JSQHJI',' IUICX',' 4128164167',' yrlwp@gmail.com','Gandhinagar','GMIT Bhavnagar','2023-02-01 12:55:29'),(321,' RTWZTZ',' LPHQJ',' 5597333496',' wlhpt@gmail.com','Surat','GEC Gandhinagar','2023-02-01 12:55:29'),(322,' RZESGZ',' XBTQZ',' 3824911829',' agwnr@gmail.com','Bhavnagar','LJIET Ahmedabad','2023-02-01 12:55:29'),(323,' PACUUW',' DOZSQ',' 1815538316',' erupr@gmail.com','Jharkhand','GH Patel Anand','2023-02-01 12:55:29'),(324,' LYQNGX',' PWDVF',' 2982688984',' deucm@gmail.com','Surat','GEC Modasa','2023-02-01 12:55:29'),(325,' TOYBJD',' IPXUY',' 5373749562',' fqtrk@gmail.com','Bhavnagar','GIT Gandhinagar','2023-02-01 12:55:29'),(326,' MOEYVY',' KUBHS',' 1569791141',' bnuum@gmail.com','Valsad','LJIET Ahmedabad','2023-02-01 12:55:29'),(327,' PQYIQX',' NWYWT',' 7182868223',' ayqhh@gmail.com','Dahod','GEC Modasa','2023-02-01 12:55:29'),(328,' CULRCX',' YUBOK',' 9814236691',' msydb@gmail.com','Godhra','GEC Gandhinagar','2023-02-01 12:55:29'),(329,' QZVUOV',' QSOQO',' 7286283859',' dtzko@gmail.com','Godhra','GMIT Bhavnagar','2023-02-01 12:55:29'),(330,' GRZRTI',' SUWHB',' 5128715662',' tgolo@gmail.com','Jaipur','GEC Anand','2023-02-01 12:55:29'),(331,' ZJJBRP',' VCREW',' 9268491184',' gkxgr@gmail.com','Bhavnagar','GEC Gandhinagar','2023-02-01 12:55:29'),(332,' MATRVG',' UKCKD',' 4645965895',' nobox@gmail.com','Gandhinagar','GIT Gandhinagar','2023-02-01 12:55:29'),(333,' FEYSVM',' SNOSP',' 7283499124',' eazum@gmail.com','Valsad','GIT Gandhinagar','2023-02-01 12:55:29'),(334,' YBGUBT',' PXSPJ',' 2185631513',' yoljv@gmail.com','Vadnagar','GEC Anand','2023-02-01 12:55:29'),(335,' DYKRXE',' ABCTA',' 7317298164',' aqhct@gmail.com','Ahmedabad','GIT Gandhinagar','2023-02-01 12:55:29'),(336,' WMWXLN',' WJSDL',' 5516791484',' vqagd@gmail.com','Ankleshwar','GH Patel Anand','2023-02-01 12:55:29'),(337,' KVGIJA',' SNNTA',' 2996735269',' qulkf@gmail.com','Valsad','GMIT Bhavnagar','2023-02-01 12:55:29'),(338,' GDZDHK',' ULYAH',' 8393281596',' wpfpc@gmail.com','Jaipur','GEC Gandhinagar','2023-02-01 12:55:29'),(339,' KPIGHR',' NMGBV',' 2852816221',' ajuwb@gmail.com','Gandhinagar','GIT Gandhinagar','2023-02-01 12:55:29'),(340,' XSGRJE',' SQLAW',' 3186859915',' tdapo@gmail.com','Godhra','LJIET Ahmedabad','2023-02-01 12:55:29'),(341,' ZXOEHD',' OQWXZ',' 3125489188',' wvpcg@gmail.com','Bhavnagar','LJIET Ahmedabad','2023-02-01 12:55:29'),(342,' UCGELN',' DOIAL',' 7141965426',' hrqcw@gmail.com','Mumbai','LJIET Ahmedabad','2023-02-01 12:55:29'),(343,' QGILRC',' OGJLH',' 7195156124',' iyvhb@gmail.com','Godhra','GEC Gandhinagar','2023-02-01 12:55:29'),(344,' NMRIRK',' FPVXS',' 9524182238',' xmgvw@gmail.com','Godhra','GH Patel Anand','2023-02-01 12:55:29'),(345,' QVAMAZ',' UCUTB',' 8445454979',' nwznn@gmail.com','Bhavnagar','GMIT Bhavnagar','2023-02-01 12:55:29'),(346,' YPLVMF',' GTPQH',' 7186535149',' osnmm@gmail.com','Modasa','GEC Anand','2023-02-01 12:55:29'),(347,' NWQAQD',' GTBKH',' 1995388956',' jtupt@gmail.com','Anand','GMIT Bhavnagar','2023-02-01 12:55:29'),(348,' JHSIMS',' SSIAV',' 3417775642',' ubuoe@gmail.com','Dahod','GMIT Bhavnagar','2023-02-01 12:55:29'),(349,' DMCFOJ',' UQLFA',' 9249386788',' lnbvf@gmail.com','Himmatnagar','GMIT Bhavnagar','2023-02-01 12:55:29'),(350,' QUFPBW',' NUWKV',' 8437194815',' vzfkt@gmail.com','Mumbai','GEC Gandhinagar','2023-02-01 12:55:29'),(351,' PQQOBX',' YKBGN',' 7676125343',' zfuyx@gmail.com','Ahmedabad','GEC Modasa','2023-02-01 12:55:29'),(352,' DRHIGA',' WKXFJ',' 2674432252',' lrniw@gmail.com','Jharkhand','GIT Gandhinagar','2023-02-01 12:55:29'),(353,' RFYWPD',' EADOX',' 2884659596',' dwzgy@gmail.com','Patan','GEC Bhavnagar','2023-02-01 12:55:29'),(354,' JOJMQI',' YDLSN',' 7251592828',' fgruz@gmail.com','Lunavada','GH Patel Anand','2023-02-01 12:55:29'),(355,' EXSNYM',' CKUZN',' 3391615655',' epvrf@gmail.com','Ahmedabad','GEC Gandhinagar','2023-02-01 12:55:29'),(356,' ITGMNB',' YFVDI',' 4875276646',' zthat@gmail.com','Idar','GEC Anand','2023-02-01 12:55:29'),(357,' NUHQGP',' VLHDG',' 1127566534',' haqho@gmail.com','Vadodara','LJIET Ahmedabad','2023-02-01 12:55:29'),(358,' NQNADR',' ZIKIT',' 7464488787',' vdnlj@gmail.com','Ahmedabad','GMIT Bhavnagar','2023-02-01 12:55:29'),(359,' MQDGEO',' MCVKV',' 1651731924',' qlbby@gmail.com','Anand','GEC Modasa','2023-02-01 12:55:29'),(360,' CPGOSO',' CKKDI',' 5696143813',' fqouk@gmail.com','Surat','GEC Anand','2023-02-01 12:55:29'),(361,' TFXEBO',' GSNYH',' 8921368581',' faxtm@gmail.com','Himmatnagar','GEC Bhavnagar','2023-02-01 12:55:29'),(362,' WMOKWM',' GILIT',' 2315778862',' mkaah@gmail.com','Dahod','GMIT Bhavnagar','2023-02-01 12:55:29'),(363,' MNVHIV',' JKEEF',' 2157298799',' djuex@gmail.com','Himmatnagar','GMIT Bhavnagar','2023-02-01 12:55:29'),(364,' KFJEZI',' VSMJR',' 1825769982',' uayhs@gmail.com','Bhavnagar','LJIET Ahmedabad','2023-02-01 12:55:29'),(365,' LQQUDU',' REPOJ',' 3237387613',' vtuew@gmail.com','Bhavnagar','LJIET Ahmedabad','2023-02-01 12:55:29'),(366,' CCCNUW',' RHOVM',' 5633591747',' sctdr@gmail.com','Mumbai','GEC Modasa','2023-02-01 12:55:29'),(367,' LSDRWD',' AZOKU',' 1798914626',' dmdjv@gmail.com','Vadodara','GEC Gandhinagar','2023-02-01 12:55:29'),(368,' QIYDTA',' AZAXJ',' 8374685165',' ggxbt@gmail.com','Ahmedabad','GEC Anand','2023-02-01 12:55:29'),(369,' VBPDHE',' NVHEQ',' 7421253554',' hcvcc@gmail.com','Himmatnagar','LJIET Ahmedabad','2023-02-01 12:55:29'),(370,' SDRHGP',' URKXQ',' 2585811313',' sekwh@gmail.com','Jharkhand','GIT Gandhinagar','2023-02-01 12:55:29'),(371,' XPFLSC',' EYRBR',' 1692435874',' cqkxb@gmail.com','Bhavnagar','GEC Anand','2023-02-01 12:55:29'),(372,' PHKNTD',' REUZV',' 4458855494',' ifelk@gmail.com','Mumbai','GEC Anand','2023-02-01 12:55:29'),(373,' REOGHX',' HJSGY',' 4984932376',' eoubr@gmail.com','Dahod','GH Patel Anand','2023-02-01 12:55:29'),(374,' JSMPWU',' ILNTQ',' 4277753662',' ginlm@gmail.com','Mehsana','GEC Anand','2023-02-01 12:55:29'),(375,' EMEVAV',' HWPGU',' 2189839433',' npafw@gmail.com','Anand','GIT Gandhinagar','2023-02-01 12:55:29'),(376,' GHLRDT',' SCPAK',' 8444248574',' dughb@gmail.com','Ahmedabad','GEC Bhavnagar','2023-02-01 12:55:29'),(377,' COKSYD',' ONVTZ',' 1999363887',' xoecs@gmail.com','Mumbai','GEC Anand','2023-02-01 12:55:29'),(378,' SAYMKE',' CBCPL',' 2229273869',' nervo@gmail.com','Idar','GMIT Bhavnagar','2023-02-01 12:55:29'),(379,' TCKYLR',' SHLER',' 7539899955',' gqxqn@gmail.com','Vadodara','LJIET Ahmedabad','2023-02-01 12:55:29'),(380,' ATPTMJ',' WKYEH',' 7649741462',' punim@gmail.com','Vadnagar','GEC Bhavnagar','2023-02-01 12:55:29'),(381,' MHYRZF',' CLXTR',' 1386917198',' wxtla@gmail.com','Patan','GEC Anand','2023-02-01 12:55:29'),(382,' DCEMXL',' NIUSO',' 9738934518',' nwbwk@gmail.com','Jaipur','GIT Gandhinagar','2023-02-01 12:55:29'),(383,' IBSJEW',' OTSSN',' 8794149228',' npdvz@gmail.com','Gandhinagar','GEC Gandhinagar','2023-02-01 12:55:29'),(384,' TNHRZV',' TYZPC',' 4787759976',' jnuco@gmail.com','Patan','GEC Bhavnagar','2023-02-01 12:55:29'),(385,' KHAODQ',' DGQVN',' 7563876411',' wpogo@gmail.com','Surat','GEC Modasa','2023-02-01 12:55:29'),(386,' SBGOHN',' WYZJW',' 3426223926',' txmpj@gmail.com','Ahmedabad','GEC Anand','2023-02-01 12:55:29'),(387,' SUDUPF',' XAOUN',' 9319434335',' cqivx@gmail.com','Himmatnagar','GEC Modasa','2023-02-01 12:55:29'),(388,' SRBULM',' APIQR',' 8564697119',' qhleq@gmail.com','Gandhinagar','LJIET Ahmedabad','2023-02-01 12:55:29'),(389,' IVOHSB',' HAWVH',' 9455535585',' wusob@gmail.com','Jharkhand','GH Patel Anand','2023-02-01 12:55:29'),(390,' DOMFCF',' RAAXY',' 2781247824',' cvral@gmail.com','Mumbai','GH Patel Anand','2023-02-01 12:55:29'),(391,' KGFSSI',' GYNGB',' 3432345746',' nwddy@gmail.com','Gandhinagar','GIT Gandhinagar','2023-02-01 12:55:29'),(392,' JLVIGV',' UDOQA',' 7581314887',' shmoy@gmail.com','Jaipur','GEC Anand','2023-02-01 12:55:29'),(393,' SXOOCC',' NMPMO',' 3534751786',' waiqh@gmail.com','Jaipur','GEC Bhavnagar','2023-02-01 12:55:29'),(394,' IDRHIY',' GRHUM',' 9816821844',' xpqez@gmail.com','Mumbai','GMIT Bhavnagar','2023-02-01 12:55:29'),(395,' EYYFVV',' QFKOU',' 8535121679',' qhiue@gmail.com','Jaipur','LJIET Ahmedabad','2023-02-01 12:55:29'),(396,' KZBBJM',' GONYT',' 3492313179',' nqjkx@gmail.com','Vadnagar','GIT Gandhinagar','2023-02-01 12:55:29'),(397,' AMAKLH',' MUWWU',' 2881577139',' jhsak@gmail.com','Anand','GEC Anand','2023-02-01 12:55:29'),(398,' RJREOQ',' KNFBK',' 6989964737',' ruarv@gmail.com','Vadnagar','GEC Gandhinagar','2023-02-01 12:55:29'),(399,' SWJVBU',' NFYZF',' 9775482483',' ymbkc@gmail.com','Vadodara','LJIET Ahmedabad','2023-02-01 12:55:29'),(400,' EPQQHV',' DFMRU',' 2985846169',' tegux@gmail.com','Ahmedabad','GEC Anand','2023-02-01 12:55:29'),(401,' JIPMHI',' SSOKP',' 4188577427',' vbomy@gmail.com','Jharkhand','GEC Bhavnagar','2023-02-01 12:55:29'),(402,' QXEXQM',' YAFOA',' 9161548376',' texey@gmail.com','Surat','GH Patel Anand','2023-02-01 12:55:29'),(403,' JIGDTQ',' KVBLK',' 4619948529',' qzxwv@gmail.com','Valsad','GEC Anand','2023-02-01 12:55:29'),(404,' TTTZHC',' GGICT',' 6492383443',' igjza@gmail.com','Himmatnagar','GMIT Bhavnagar','2023-02-01 12:55:29'),(405,' OSQJMN',' CFXOO',' 8234916693',' xrsfl@gmail.com','Dahod','GEC Modasa','2023-02-01 12:55:29'),(406,' XOIKWU',' FLEHH',' 6429816645',' lnily@gmail.com','Vadodara','LJIET Ahmedabad','2023-02-01 12:55:29'),(407,' KASQLF',' TGUDJ',' 4341192661',' kngxa@gmail.com','Gandhinagar','GEC Gandhinagar','2023-02-01 12:55:29'),(408,' GEVACT',' ABMLA',' 5638666553',' cxsez@gmail.com','Idar','GH Patel Anand','2023-02-01 12:55:29'),(409,' LGKXXJ',' AVEJV',' 6475738222',' ovhcp@gmail.com','Bhavnagar','GEC Modasa','2023-02-01 12:55:29'),(410,' LZNBSD',' WTMJD',' 7125276933',' bnujo@gmail.com','Mehsana','GMIT Bhavnagar','2023-02-01 12:55:29'),(411,' ZPONKX',' IKOIL',' 5887287136',' ivbpb@gmail.com','Gandhinagar','GH Patel Anand','2023-02-01 12:55:29'),(412,' BZWNPA',' IVEZS',' 6356667714',' zhduy@gmail.com','Ankleshwar','GMIT Bhavnagar','2023-02-01 12:55:29'),(413,' JLEVXS',' TQTIL',' 8771441653',' ksxns@gmail.com','Vadnagar','GH Patel Anand','2023-02-01 12:55:29'),(414,' QVZHYB',' ERLSV',' 7988756712',' wansq@gmail.com','Surat','GH Patel Anand','2023-02-01 12:55:29'),(415,' GUPJZG',' XFBOT',' 7983239322',' gapdn@gmail.com','Vadodara','GEC Anand','2023-02-01 12:55:29'),(416,' QSUAUK',' BZYCM',' 3388242835',' llork@gmail.com','Surat','GH Patel Anand','2023-02-01 12:55:29'),(417,' GYBULO',' WUPVV',' 1918639143',' abcvj@gmail.com','Vadnagar','LJIET Ahmedabad','2023-02-01 12:55:29'),(418,' PQHVPW',' DGNNE',' 4413146686',' sgsoy@gmail.com','Valsad','GEC Bhavnagar','2023-02-01 12:55:29'),(419,' VSNZJI',' YDZWK',' 5592693739',' dfsxl@gmail.com','Himmatnagar','LJIET Ahmedabad','2023-02-01 12:55:29'),(420,' SJLTFX',' RPTXD',' 7278472619',' andxk@gmail.com','Mumbai','GEC Bhavnagar','2023-02-01 12:55:29'),(421,' WXQNRG',' XOVWO',' 1571546433',' jgbso@gmail.com','Ahmedabad','GIT Gandhinagar','2023-02-01 12:55:29'),(422,' YDVWGP',' UCLXT',' 7993968815',' zdvyf@gmail.com','Vadodara','GH Patel Anand','2023-02-01 12:55:29'),(423,' IBHVUA',' EZHLI',' 4675821731',' fuawv@gmail.com','Idar','LJIET Ahmedabad','2023-02-01 12:55:29'),(424,' NLBOZO',' QUSND',' 8576344132',' rbjkp@gmail.com','Vadnagar','GMIT Bhavnagar','2023-02-01 12:55:29'),(425,' YCAUIM',' EEJPU',' 2562166585',' tfpzs@gmail.com','Himmatnagar','GH Patel Anand','2023-02-01 12:55:29'),(426,' SYGTYF',' SKKXE',' 8937555675',' eeblz@gmail.com','Mumbai','LJIET Ahmedabad','2023-02-01 12:55:29'),(427,' BYABXY',' SHCFW',' 2419528399',' bpnuv@gmail.com','Gandhinagar','GMIT Bhavnagar','2023-02-01 12:55:29'),(428,' PGGJAM',' PNZXG',' 1245262428',' lsvzt@gmail.com','Himmatnagar','GEC Bhavnagar','2023-02-01 12:55:29'),(429,' USZZNM',' SCERW',' 3271276842',' yfirg@gmail.com','Himmatnagar','GMIT Bhavnagar','2023-02-01 12:55:29'),(430,' SDCCVE',' RUOPC',' 2773466995',' esxdx@gmail.com','Mehsana','GEC Anand','2023-02-01 12:55:29'),(431,' ILGLPS',' JJXOT',' 1417371585',' aovtu@gmail.com','Vadodara','GEC Modasa','2023-02-01 12:55:29'),(432,' CCPHGK',' PIKCE',' 1594499984',' tkbdu@gmail.com','Mumbai','GEC Modasa','2023-02-01 12:55:29'),(433,' RGATYS',' CSNDF',' 3194422181',' vpehg@gmail.com','Gandhinagar','GEC Gandhinagar','2023-02-01 12:55:29'),(434,' WTWALO',' KDQDG',' 3494193647',' cvafy@gmail.com','Ankleshwar','GEC Bhavnagar','2023-02-01 12:55:29'),(435,' FVOBYY',' KPQLX',' 6514383968',' ckeih@gmail.com','Bhavnagar','LJIET Ahmedabad','2023-02-01 12:55:29'),(436,' JNZKKP',' CUQVS',' 6113321552',' esdvj@gmail.com','Ahmedabad','GH Patel Anand','2023-02-01 12:55:29'),(437,' GZVQUS',' AZZEZ',' 4864387582',' hsuan@gmail.com','Valsad','LJIET Ahmedabad','2023-02-01 12:55:29'),(438,' ASEYON',' FMVZI',' 1654433354',' qytdf@gmail.com','Anand','GH Patel Anand','2023-02-01 12:55:29'),(439,' GMQWXU',' UIQFQ',' 8123421869',' gamfu@gmail.com','Dahod','GEC Modasa','2023-02-01 12:55:29'),(440,' RESDBF',' ZNKCZ',' 9791384412',' jifsx@gmail.com','Idar','GH Patel Anand','2023-02-01 12:55:29'),(441,' PWLNIE',' DMCSI',' 4438852839',' zmshz@gmail.com','Himmatnagar','GEC Modasa','2023-02-01 12:55:29'),(442,' SZPEPM',' QIFTG',' 6181351422',' vdewy@gmail.com','Bhavnagar','GIT Gandhinagar','2023-02-01 12:55:29'),(443,' ALBXSG',' XCSCO',' 7131637766',' gmwpu@gmail.com','Vadodara','GH Patel Anand','2023-02-01 12:55:29'),(444,' CYLDPG',' YRXUK',' 9134638681',' qmsyy@gmail.com','Vadnagar','LJIET Ahmedabad','2023-02-01 12:55:29'),(445,' YZWUCS',' XNRMH',' 6556236944',' fkkhr@gmail.com','Bhavnagar','GEC Anand','2023-02-01 12:55:29'),(446,' NWQTCA',' JXHFB',' 5366176936',' opdcu@gmail.com','Patan','GIT Gandhinagar','2023-02-01 12:55:29'),(447,' WUFAUV',' KECSA',' 2885827117',' apgom@gmail.com','Mumbai','GEC Modasa','2023-02-01 12:55:29'),(448,' KQUMGC',' MHPDQ',' 6793638787',' kgvju@gmail.com','Lunavada','GEC Anand','2023-02-01 12:55:29'),(449,' JYYUGK',' ELLNF',' 4382364261',' zorvd@gmail.com','Patan','GH Patel Anand','2023-02-01 12:55:29'),(450,' BAHISJ',' FISBA',' 2416816393',' abgrk@gmail.com','Ankleshwar','GEC Modasa','2023-02-01 12:55:29'),(451,' EYLQTN',' HHVLF',' 9657291217',' hzijp@gmail.com','Vadodara','GEC Anand','2023-02-01 12:55:29'),(452,' EXDMGB',' APEJL',' 5496735568',' snnjb@gmail.com','Vadnagar','GEC Gandhinagar','2023-02-01 12:55:29'),(453,' UNVCUV',' DDGKK',' 3168754971',' tvaio@gmail.com','Gandhinagar','GEC Bhavnagar','2023-02-01 12:55:29'),(454,' NFUNSB',' NLCOW',' 9224668882',' jkwis@gmail.com','Himmatnagar','GEC Gandhinagar','2023-02-01 12:55:29'),(455,' ZFNSPE',' VVKIU',' 2198961613',' mlwyb@gmail.com','Surat','GEC Anand','2023-02-01 12:55:29'),(456,' UQLVGQ',' SQANC',' 6771489934',' kiijl@gmail.com','Ankleshwar','GMIT Bhavnagar','2023-02-01 12:55:29'),(457,' YYLOZM',' HXYEY',' 2793576528',' yjydq@gmail.com','Himmatnagar','GEC Modasa','2023-02-01 12:55:29'),(458,' MAPSBS',' PNUKU',' 5357923596',' bfzjm@gmail.com','Modasa','GEC Gandhinagar','2023-02-01 12:55:29'),(459,' DKCRFV',' GDODO',' 1853985817',' okxbl@gmail.com','Godhra','GEC Modasa','2023-02-01 12:55:29'),(460,' NYLCFI',' PULFK',' 3453277861',' lddtp@gmail.com','Dahod','LJIET Ahmedabad','2023-02-01 12:55:29'),(461,' QQOXSR',' LEWDE',' 2167785519',' finss@gmail.com','Jaipur','GEC Gandhinagar','2023-02-01 12:55:29'),(462,' VSHEEA',' YXFAI',' 9837862933',' broah@gmail.com','Himmatnagar','GEC Anand','2023-02-01 12:55:29'),(463,' KOKQRM',' HPMAF',' 7352855131',' cbqde@gmail.com','Idar','GIT Gandhinagar','2023-02-01 12:55:29'),(464,' KIDUVM',' ATBPC',' 3347153477',' geodk@gmail.com','Surat','GEC Bhavnagar','2023-02-01 12:55:29'),(465,' BXTVUN',' JLQTZ',' 6599397991',' tzjhi@gmail.com','Godhra','GEC Gandhinagar','2023-02-01 12:55:29'),(466,' OIWGEJ',' BPBRS',' 6374297337',' luzgv@gmail.com','Jharkhand','GMIT Bhavnagar','2023-02-01 12:55:29'),(467,' TDFXGE',' RYIBS',' 7275635751',' fwiqx@gmail.com','Jaipur','GH Patel Anand','2023-02-01 12:55:29'),(468,' AMZJLB',' UTHBR',' 1248861313',' xdkbr@gmail.com','Vadodara','GEC Anand','2023-02-01 12:55:29'),(469,' LHSLCL',' XDHWB',' 9777571319',' omvxa@gmail.com','Lunavada','GEC Gandhinagar','2023-02-01 12:55:29'),(470,' EBJQCW',' MOOJS',' 8282489466',' krmfo@gmail.com','Surat','GEC Anand','2023-02-01 12:55:29'),(471,' FBJHXQ',' GSMPF',' 7395259462',' irbch@gmail.com','Idar','GEC Bhavnagar','2023-02-01 12:55:29'),(472,' BIJXNG',' JIDKB',' 4749152343',' lotqi@gmail.com','Vadnagar','GEC Anand','2023-02-01 12:55:29'),(473,' QMTPTX',' YLCLK',' 5637148645',' dixcg@gmail.com','Himmatnagar','GEC Anand','2023-02-01 12:55:29'),(474,' REAQLC',' MCCZY',' 4777889796',' scrdc@gmail.com','Jharkhand','LJIET Ahmedabad','2023-02-01 12:55:29'),(475,' WRRCYJ',' EKKFH',' 2555995535',' uydtu@gmail.com','Lunavada','GEC Bhavnagar','2023-02-01 12:55:29'),(476,' VEDUGI',' FHVAI',' 7442633575',' rcqtx@gmail.com','Himmatnagar','GH Patel Anand','2023-02-01 12:55:29'),(477,' DKDMYO',' CVVYL',' 4677625366',' cjszw@gmail.com','Bhavnagar','LJIET Ahmedabad','2023-02-01 12:55:29'),(478,' MMVRHD',' TOGJU',' 2539448384',' jafdp@gmail.com','Anand','GEC Gandhinagar','2023-02-01 12:55:29'),(479,' TSNCWJ',' DUXXG',' 1176388599',' zkeam@gmail.com','Jaipur','LJIET Ahmedabad','2023-02-01 12:55:29'),(480,' STEOYA',' IUIXR',' 9652426821',' pnfsf@gmail.com','Jharkhand','GEC Gandhinagar','2023-02-01 12:55:29'),(481,' DGYKQH',' GMUFE',' 6473773393',' cnmds@gmail.com','Gandhinagar','GMIT Bhavnagar','2023-02-01 12:55:29'),(482,' NJXRSN',' HULNX',' 1734919329',' sabjo@gmail.com','Gandhinagar','GEC Anand','2023-02-01 12:55:29'),(483,' KAYVMK',' ARPKM',' 3637251645',' inxlv@gmail.com','Lunavada','GEC Gandhinagar','2023-02-01 12:55:29'),(484,' UMOQRU',' HKJMX',' 4587471397',' eozke@gmail.com','Valsad','GEC Anand','2023-02-01 12:55:29'),(485,' UKNQRU',' XEURT',' 2163118363',' nhyiz@gmail.com','Ankleshwar','GMIT Bhavnagar','2023-02-01 12:55:29'),(486,' OQMJSR',' GOMNM',' 6134598634',' fkpwa@gmail.com','Himmatnagar','LJIET Ahmedabad','2023-02-01 12:55:29'),(487,' LQPAEY',' SXIVN',' 9183453468',' cnyns@gmail.com','Gandhinagar','GEC Gandhinagar','2023-02-01 12:55:29'),(488,' RKCVKU',' OHOPR',' 3534991598',' bhelo@gmail.com','Gandhinagar','GIT Gandhinagar','2023-02-01 12:55:29'),(489,' RBKRSA',' PTMFR',' 5668622299',' gxqmn@gmail.com','Jaipur','LJIET Ahmedabad','2023-02-01 12:55:29'),(490,' CNWADI',' DEJNY',' 7581346522',' armsy@gmail.com','Ahmedabad','GEC Anand','2023-02-01 12:55:29'),(491,' GOHOHL',' NMNGA',' 9138715182',' gqroi@gmail.com','Surat','GMIT Bhavnagar','2023-02-01 12:55:29'),(492,' PAFSCL',' WLSYV',' 1272337985',' ijzcb@gmail.com','Ahmedabad','GMIT Bhavnagar','2023-02-01 12:55:29'),(493,' FKCYTE',' YVIWB',' 4712937161',' kdlqo@gmail.com','Ankleshwar','GEC Gandhinagar','2023-02-01 12:55:29'),(494,' RFZLZY',' AKQBC',' 8352376777',' hplkn@gmail.com','Vadodara','GH Patel Anand','2023-02-01 12:55:29'),(495,' TWMXRQ',' XUUEM',' 6827167423',' bgfif@gmail.com','Gandhinagar','GMIT Bhavnagar','2023-02-01 12:55:29'),(496,' MVORNQ',' YMEHX',' 3528646458',' syppd@gmail.com','Patan','GEC Gandhinagar','2023-02-01 12:55:29'),(497,' JTYZWV',' ZOBJB',' 5571757681',' anobv@gmail.com','Valsad','GEC Anand','2023-02-01 12:55:29'),(498,' NUIGQY',' UAIGS',' 2477688418',' njqgz@gmail.com','Mehsana','GEC Gandhinagar','2023-02-01 12:55:29'),(499,' HXXJYV',' PBASF',' 3613415359',' uhhpe@gmail.com','Himmatnagar','GEC Modasa','2023-02-01 12:55:29'),(500,' HZZYWK',' PLHDJ',' 5765263714',' cwudl@gmail.com','Mehsana','GEC Anand','2023-02-01 12:55:29'),(501,' MHZNHF',' UUMCH',' 3183172298',' crmlb@gmail.com','Vadodara','GMIT Bhavnagar','2023-02-01 12:55:29'),(502,' VASTEN',' OOSQV',' 3842887432',' lebws@gmail.com','Godhra','GMIT Bhavnagar','2023-02-01 12:55:29'),(503,' HEOBNC',' VPAKA',' 7296759567',' vfgct@gmail.com','Gandhinagar','GEC Bhavnagar','2023-02-01 12:55:29'),(504,' XEOEGK',' DOSRM',' 3351514588',' bgave@gmail.com','Idar','GEC Gandhinagar','2023-02-01 12:55:29'),(505,' FFDKUL',' LXXBL',' 3225292666',' rxmsc@gmail.com','Gandhinagar','LJIET Ahmedabad','2023-02-01 12:55:29'),(506,' PYARDI',' MYRBL',' 4663123143',' tzzht@gmail.com','Bhavnagar','GEC Gandhinagar','2023-02-01 12:55:29'),(507,' MFIQZP',' RKVBN',' 2928778264',' dkoij@gmail.com','Mumbai','GEC Modasa','2023-02-01 12:55:29'),(508,' AITMOP',' UITHF',' 8194229766',' jmqbh@gmail.com','Bhavnagar','GEC Gandhinagar','2023-02-01 12:55:29'),(509,' ZTSKBM',' HRXEB',' 5555584231',' jhxqk@gmail.com','Mumbai','GMIT Bhavnagar','2023-02-01 12:55:29'),(510,' QWFSZF',' ZBIAT',' 1815468812',' bgozp@gmail.com','Idar','GEC Anand','2023-02-01 12:55:29'),(511,' DXLGZB',' QFIIR',' 7556785429',' mydna@gmail.com','Patan','GEC Bhavnagar','2023-02-01 12:55:29'),(512,' XVTKAN',' UPZVZ',' 3889264499',' piiel@gmail.com','Vadnagar','LJIET Ahmedabad','2023-02-01 12:55:29'),(513,' CMJQND',' SWSLR',' 8284998263',' qvpei@gmail.com','Jharkhand','GEC Modasa','2023-02-01 12:55:29'),(514,' QPPZET',' HXOSE',' 2415175445',' fnboo@gmail.com','Anand','GMIT Bhavnagar','2023-02-01 12:55:29'),(515,' LLHNLB',' KDHMB',' 3424614575',' bmiob@gmail.com','Valsad','GIT Gandhinagar','2023-02-01 12:55:29'),(516,' YANTYX',' JXUHJ',' 3975681194',' eyvbg@gmail.com','Godhra','GEC Modasa','2023-02-01 12:55:29'),(517,' JPUJZU',' RFGJH',' 5259375347',' tiuih@gmail.com','Lunavada','GIT Gandhinagar','2023-02-01 12:55:29'),(518,' BAOBSR',' TQWFS',' 4684897852',' jvwgv@gmail.com','Ahmedabad','GH Patel Anand','2023-02-01 12:55:29'),(519,' ZYSPWK',' CGCRD',' 1279924342',' oqxtd@gmail.com','Valsad','LJIET Ahmedabad','2023-02-01 12:55:29'),(520,' SZVWPN',' MLSWA',' 9279886529',' qmptf@gmail.com','Jaipur','GEC Anand','2023-02-01 12:55:29'),(521,' CKLLDI',' OVDON',' 5387116995',' ahejk@gmail.com','Gandhinagar','GEC Modasa','2023-02-01 12:55:29'),(522,' CAHDAM',' XMJZT',' 1685795759',' syksz@gmail.com','Vadodara','GEC Anand','2023-02-01 12:55:29'),(523,' ERKDMO',' BCTUL',' 5481265314',' wvgpz@gmail.com','Modasa','LJIET Ahmedabad','2023-02-01 12:55:29'),(524,' UIOKEA',' GLJHL',' 9671139926',' ifxcs@gmail.com','Jaipur','GIT Gandhinagar','2023-02-01 12:55:29'),(525,' TOFQVF',' WZTAQ',' 1783229816',' kbteg@gmail.com','Idar','GEC Gandhinagar','2023-02-01 12:55:29'),(526,' FWOCXJ',' DZACE',' 6184934515',' obnbw@gmail.com','Ahmedabad','LJIET Ahmedabad','2023-02-01 12:55:29'),(527,' OUZFYZ',' WNUQH',' 6856598476',' zzdhu@gmail.com','Himmatnagar','GIT Gandhinagar','2023-02-01 12:55:29'),(528,' PUYZEB',' FQVJC',' 3451578354',' coyvm@gmail.com','Bhavnagar','GH Patel Anand','2023-02-01 12:55:29'),(529,' FKNUHB',' WRMOP',' 9753116736',' hrlpb@gmail.com','Dahod','GH Patel Anand','2023-02-01 12:55:29'),(530,' FRGMQZ',' NKFJL',' 5165891769',' vnuzl@gmail.com','Surat','GIT Gandhinagar','2023-02-01 12:55:29'),(531,' DFCXUP',' MKPTC',' 5283164359',' gwcxx@gmail.com','Surat','GEC Modasa','2023-02-01 12:55:29'),(532,' ANMZIR',' QZWJV',' 5125854471',' lkfoq@gmail.com','Mumbai','GEC Modasa','2023-02-01 12:55:29'),(533,' VFFVQU',' JUYKZ',' 6556795652',' qyobg@gmail.com','Vadnagar','GEC Bhavnagar','2023-02-01 12:55:29'),(534,' SXMNQN',' OXRBX',' 3181916818',' irxrw@gmail.com','Dahod','GIT Gandhinagar','2023-02-01 12:55:29'),(535,' SBHPXO',' YWAPZ',' 3913546533',' obgmu@gmail.com','Idar','GEC Anand','2023-02-01 12:55:29'),(536,' AIEXGW',' RBBPG',' 7829261237',' eyotf@gmail.com','Jaipur','LJIET Ahmedabad','2023-02-01 12:55:29'),(537,' CSWTDW',' AYHDZ',' 5556972237',' eosdu@gmail.com','Jharkhand','GEC Modasa','2023-02-01 12:55:29'),(538,' HGJTTK',' RKVCM',' 3376879889',' jkgou@gmail.com','Vadnagar','GH Patel Anand','2023-02-01 12:55:29'),(539,' KYVOCD',' LCDCH',' 9572327924',' xllje@gmail.com','Bhavnagar','GMIT Bhavnagar','2023-02-01 12:55:29'),(540,' QMLOSU',' EHWBX',' 4547689547',' xwyjp@gmail.com','Bhavnagar','GH Patel Anand','2023-02-01 12:55:29'),(541,' DWAAMX',' FWYLJ',' 4388346488',' gioiu@gmail.com','Idar','GEC Anand','2023-02-01 12:55:29'),(542,' FGSTTN',' QHTCL',' 6175586536',' lfohj@gmail.com','Ankleshwar','GEC Bhavnagar','2023-02-01 12:55:29'),(543,' LTYYFQ',' FHTDB',' 7429646894',' rvtzi@gmail.com','Gandhinagar','GEC Anand','2023-02-01 12:55:29'),(544,' NOHHLF',' VDBWZ',' 9492662826',' mokij@gmail.com','Mumbai','LJIET Ahmedabad','2023-02-01 12:55:29'),(545,' RSUJPN',' ITVDN',' 6497778354',' etnea@gmail.com','Ahmedabad','GEC Bhavnagar','2023-02-01 12:55:29'),(546,' DZRKNS',' EOXSM',' 1342913216',' ibgia@gmail.com','Dahod','GIT Gandhinagar','2023-02-01 12:55:29'),(547,' VOVPNY',' HEMXM',' 3366424374',' atswj@gmail.com','Modasa','GH Patel Anand','2023-02-01 12:55:29'),(548,' OKTEVX',' VNEQA',' 7849435266',' jwyjf@gmail.com','Bhavnagar','GEC Anand','2023-02-01 12:55:29'),(549,' MOHFID',' XKRWO',' 5912362148',' hgrva@gmail.com','Ankleshwar','GMIT Bhavnagar','2023-02-01 12:55:29'),(550,' QQKORV',' LUFQD',' 3327361419',' tqccm@gmail.com','Vadodara','GMIT Bhavnagar','2023-02-01 12:55:29'),(551,' EXUUMF',' FBMDU',' 9717958639',' agnwb@gmail.com','Patan','GH Patel Anand','2023-02-01 12:55:29'),(552,' ROWYXZ',' NERYC',' 4465269352',' cdkba@gmail.com','Dahod','GEC Modasa','2023-02-01 12:55:29'),(553,' SPRVCW',' RXKZQ',' 6268211832',' nblwz@gmail.com','Godhra','GIT Gandhinagar','2023-02-01 12:55:29'),(554,' YZAFJQ',' BALCB',' 3892159759',' luiek@gmail.com','Jharkhand','GMIT Bhavnagar','2023-02-01 12:55:29'),(555,' JOKVOV',' GUEXF',' 4256242489',' zuhxc@gmail.com','Mumbai','GEC Bhavnagar','2023-02-01 12:55:29'),(556,' JQXRCW',' TXSWT',' 3956412361',' eznba@gmail.com','Jaipur','LJIET Ahmedabad','2023-02-01 12:55:29'),(557,' OJULOY',' OHPSE',' 5492997379',' wsjpf@gmail.com','Bhavnagar','GH Patel Anand','2023-02-01 12:55:29'),(558,' SKVOPY',' LOVHE',' 5856251181',' jytei@gmail.com','Valsad','GEC Gandhinagar','2023-02-01 12:55:29'),(559,' OXJKTI',' NANVU',' 3916285163',' ersmy@gmail.com','Godhra','GIT Gandhinagar','2023-02-01 12:55:29'),(560,' UBGWTH',' OWHUY',' 2233843773',' twyuj@gmail.com','Surat','GEC Modasa','2023-02-01 12:55:29'),(561,' KYCJYJ',' XABEB',' 6865266264',' urrup@gmail.com','Mehsana','GEC Anand','2023-02-01 12:55:29'),(562,' EAVTMA',' LHFNI',' 5969663958',' lpqvm@gmail.com','Anand','GMIT Bhavnagar','2023-02-01 12:55:29'),(563,' YKCHBW',' VUVYP',' 1742938995',' yfonx@gmail.com','Lunavada','LJIET Ahmedabad','2023-02-01 12:55:29'),(564,' PWYDQN',' RTNYL',' 8397762439',' zcgsi@gmail.com','Valsad','GEC Modasa','2023-02-01 12:55:29'),(565,' GWTPDN',' RRRVD',' 6111417996',' zbtks@gmail.com','Mehsana','GEC Anand','2023-02-01 12:55:29'),(566,' ITYQBB',' JPGYF',' 5822192592',' yrqio@gmail.com','Godhra','GMIT Bhavnagar','2023-02-01 12:55:29'),(567,' DZKLVX',' LAZCQ',' 1627977744',' wxlir@gmail.com','Lunavada','GH Patel Anand','2023-02-01 12:55:29'),(568,' QOZZAU',' QPHLX',' 6463283253',' scfen@gmail.com','Dahod','GH Patel Anand','2023-02-01 12:55:29'),(569,' RWODDV',' GAVXB',' 8863399849',' tkgaa@gmail.com','Vadnagar','GEC Gandhinagar','2023-02-01 12:55:29'),(570,' FERVTN',' XZWKH',' 3347832683',' jaimx@gmail.com','Idar','GIT Gandhinagar','2023-02-01 12:55:29'),(571,' MRMSVA',' VOXRH',' 8493596219',' tduen@gmail.com','Vadnagar','GIT Gandhinagar','2023-02-01 12:55:29'),(572,' OSWALO',' XEPND',' 9875368252',' cmkjq@gmail.com','Lunavada','GH Patel Anand','2023-02-01 12:55:29'),(573,' WTGGJM',' AZVCB',' 4838429458',' jartj@gmail.com','Mumbai','GH Patel Anand','2023-02-01 12:55:29'),(574,' TKZSJH',' VMECV',' 2827488336',' pzryc@gmail.com','Godhra','GEC Anand','2023-02-01 12:55:29'),(575,' TKDFIL',' VXEVF',' 8575965821',' frmgj@gmail.com','Jaipur','LJIET Ahmedabad','2023-02-01 12:55:29'),(576,' HRSIHX',' TYRBK',' 7464922446',' drhif@gmail.com','Lunavada','GEC Bhavnagar','2023-02-01 12:55:29'),(577,' WREFXQ',' TSJGN',' 4895248477',' wgsqm@gmail.com','Vadnagar','GEC Bhavnagar','2023-02-01 12:55:29'),(578,' VAAINW',' LVTRV',' 3644961631',' kawgq@gmail.com','Lunavada','GIT Gandhinagar','2023-02-01 12:55:29'),(579,' RMKCGN',' BJNDQ',' 2441874916',' whtug@gmail.com','Gandhinagar','GH Patel Anand','2023-02-01 12:55:29'),(580,' ZSSYEN',' LCCUX',' 4419328237',' gihnc@gmail.com','Surat','GH Patel Anand','2023-02-01 12:55:29'),(581,' MKKKRH',' RMFQW',' 2189926124',' eysop@gmail.com','Ankleshwar','GEC Anand','2023-02-01 12:55:29'),(582,' XCJUPI',' SKCVY',' 9657872838',' nuoqm@gmail.com','Vadnagar','GMIT Bhavnagar','2023-02-01 12:55:29'),(583,' KGZVLC',' QQEBP',' 5666849229',' jficf@gmail.com','Vadnagar','GEC Gandhinagar','2023-02-01 12:55:29'),(584,' KCHQOK',' PSCRJ',' 3818754846',' gqytw@gmail.com','Gandhinagar','LJIET Ahmedabad','2023-02-01 12:55:29'),(585,' GEJCFX',' ZVYPU',' 8168422939',' fuwtq@gmail.com','Bhavnagar','GH Patel Anand','2023-02-01 12:55:29'),(586,' LQKCWV',' VSGSS',' 4367254476',' hxpwu@gmail.com','Dahod','GEC Anand','2023-02-01 12:55:29'),(587,' PMIPLQ',' NUAYS',' 7989811127',' gsbqf@gmail.com','Ankleshwar','GEC Bhavnagar','2023-02-01 12:55:29'),(588,' DXYCNP',' IWAHO',' 3593943358',' ffwsg@gmail.com','Modasa','LJIET Ahmedabad','2023-02-01 12:55:29'),(589,' GNTJCJ',' ILSFL',' 5587815625',' isizm@gmail.com','Mehsana','GEC Gandhinagar','2023-02-01 12:55:29'),(590,' BIRDGF',' EPIFC',' 3917924772',' izhil@gmail.com','Mehsana','GEC Modasa','2023-02-01 12:55:29'),(591,' JLHLWR',' ANYXR',' 6767849592',' ayyzo@gmail.com','Gandhinagar','GEC Gandhinagar','2023-02-01 12:55:29'),(592,' MOPEXZ',' LWYUJ',' 2977181922',' snhnj@gmail.com','Idar','GEC Modasa','2023-02-01 12:55:29'),(593,' NYAOTC',' RDWYF',' 5895761363',' hdzqs@gmail.com','Idar','GEC Modasa','2023-02-01 12:55:29'),(594,' QIAVWT',' ONVJV',' 7443312477',' zkecm@gmail.com','Mehsana','GEC Modasa','2023-02-01 12:55:29'),(595,' YURFIW',' SSTKV',' 7597182328',' ntaks@gmail.com','Jaipur','GIT Gandhinagar','2023-02-01 12:55:29'),(596,' CYSAXL',' HKPZS',' 2499921929',' pybog@gmail.com','Ahmedabad','GEC Anand','2023-02-01 12:55:29'),(597,' ECMOAE',' LVOWU',' 2136763812',' mabrj@gmail.com','Valsad','GMIT Bhavnagar','2023-02-01 12:55:29'),(598,' TRTXPC',' BNLVL',' 6967466244',' pljmj@gmail.com','Himmatnagar','GEC Bhavnagar','2023-02-01 12:55:29'),(599,' MQDMAY',' MNNIM',' 1197937145',' htgdp@gmail.com','Ahmedabad','GEC Bhavnagar','2023-02-01 12:55:29'),(600,' DNSUXL',' PYNVM',' 8387691689',' pmhpx@gmail.com','Himmatnagar','GH Patel Anand','2023-02-01 12:55:29'),(601,' QYELMU',' WIMCE',' 6747538636',' eiixw@gmail.com','Gandhinagar','GIT Gandhinagar','2023-02-01 12:55:29'),(602,' WSKZCF',' EPDZW',' 5774632459',' vsicm@gmail.com','Himmatnagar','GEC Modasa','2023-02-01 12:55:29'),(603,' RPCLLQ',' SJCOS',' 5922634152',' kilbn@gmail.com','Surat','GMIT Bhavnagar','2023-02-01 12:55:29'),(604,' OSYZWP',' DTBPX',' 3192796729',' ciyzk@gmail.com','Vadodara','GEC Modasa','2023-02-01 12:55:29'),(605,' HBRICR',' WGXKF',' 5199692494',' yjiit@gmail.com','Mumbai','GIT Gandhinagar','2023-02-01 12:55:29'),(606,' KQWCFE',' SSXEI',' 8936269277',' fbquk@gmail.com','Mumbai','GMIT Bhavnagar','2023-02-01 12:55:29'),(607,' KULMSL',' JVBVE',' 7124754737',' facwf@gmail.com','Himmatnagar','GIT Gandhinagar','2023-02-01 12:55:29'),(608,' EWJMNX',' XEWGE',' 8151256656',' ipxxs@gmail.com','Jharkhand','LJIET Ahmedabad','2023-02-01 12:55:29'),(609,' MTZZOE',' HQKAN',' 8275575965',' muist@gmail.com','Dahod','LJIET Ahmedabad','2023-02-01 12:55:29'),(610,' IALSUJ',' YIQLE',' 4724129925',' dzpvl@gmail.com','Anand','GEC Anand','2023-02-01 12:55:29'),(611,' ALGMXM',' LLELH',' 3855122825',' vnvlw@gmail.com','Jharkhand','GEC Anand','2023-02-01 12:55:29'),(612,' IABHCK',' TYEVC',' 4679628756',' ssuuq@gmail.com','Mehsana','LJIET Ahmedabad','2023-02-01 12:55:29'),(613,' ZBUEQM',' GVFHQ',' 8426825169',' lgooy@gmail.com','Anand','GIT Gandhinagar','2023-02-01 12:55:29'),(614,' PHEOWK',' JYAXE',' 8651859635',' aftjf@gmail.com','Ankleshwar','GEC Gandhinagar','2023-02-01 12:55:29'),(615,' MQHNGB',' OSJOJ',' 4812567445',' qaycu@gmail.com','Jaipur','GIT Gandhinagar','2023-02-01 12:55:29'),(616,' KSJCKV',' JRRWT',' 4796197839',' pujql@gmail.com','Modasa','GIT Gandhinagar','2023-02-01 12:55:29'),(617,' YHDVEY',' VSLDG',' 1937359763',' vuson@gmail.com','Vadodara','GEC Modasa','2023-02-01 12:55:29'),(618,' ZZLXNV',' LCLZU',' 2585538799',' ynotc@gmail.com','Modasa','GEC Anand','2023-02-01 12:55:29'),(619,' REEWKV',' UGWTE',' 1816352789',' fmeiu@gmail.com','Bhavnagar','GH Patel Anand','2023-02-01 12:55:29'),(620,' XHFSNI',' JCPSH',' 3335277798',' fbyyv@gmail.com','Idar','GEC Gandhinagar','2023-02-01 12:55:29'),(621,' ZXJIZN',' NZYHZ',' 9371825428',' oonhi@gmail.com','Surat','GH Patel Anand','2023-02-01 12:55:29'),(622,' FADBQM',' USUIT',' 3666192272',' gvmdz@gmail.com','Godhra','LJIET Ahmedabad','2023-02-01 12:55:29'),(623,' BOABXV',' QPAAE',' 5388863196',' tknqw@gmail.com','Gandhinagar','GMIT Bhavnagar','2023-02-01 12:55:29'),(624,' NJWCBH',' JOLXC',' 8687259745',' cuonl@gmail.com','Surat','GEC Gandhinagar','2023-02-01 12:55:29'),(625,' CSJQAN',' CRWCJ',' 5714113959',' obypq@gmail.com','Ahmedabad','GIT Gandhinagar','2023-02-01 12:55:29'),(626,' VLWDHZ',' LNNCJ',' 9592969264',' skmsi@gmail.com','Himmatnagar','GEC Anand','2023-02-01 12:55:29'),(627,' ZYLFIE',' ZBQDX',' 1599159255',' lomht@gmail.com','Jaipur','GH Patel Anand','2023-02-01 12:55:29'),(628,' BMOQQK',' PKANK',' 4415334772',' vbarp@gmail.com','Himmatnagar','GEC Anand','2023-02-01 12:55:29'),(629,' UVYWRO',' HKMBY',' 4585727589',' wygnf@gmail.com','Ankleshwar','GIT Gandhinagar','2023-02-01 12:55:29'),(630,' IFVBUS',' HAEFE',' 5284398788',' mysge@gmail.com','Anand','LJIET Ahmedabad','2023-02-01 12:55:29'),(631,' CTYUPR',' EAWDO',' 6366524262',' bpkov@gmail.com','Anand','LJIET Ahmedabad','2023-02-01 12:55:29'),(632,' WLVWRF',' KPQEI',' 5218489347',' hrtgh@gmail.com','Himmatnagar','GEC Gandhinagar','2023-02-01 12:55:29'),(633,' RBKVIT',' EGUSK',' 8671912617',' jjgrg@gmail.com','Patan','GEC Gandhinagar','2023-02-01 12:55:29'),(634,' DHCXVG',' RHFMT',' 5522818437',' etrts@gmail.com','Valsad','GEC Gandhinagar','2023-02-01 12:55:29'),(635,' LMNMIB',' PSUCX',' 7748212876',' tmsks@gmail.com','Mehsana','LJIET Ahmedabad','2023-02-01 12:55:29'),(636,' KWTVHD',' DOIAE',' 3694848357',' dxfnn@gmail.com','Gandhinagar','GH Patel Anand','2023-02-01 12:55:29'),(637,' CEIZJJ',' ZSPEI',' 1418583795',' gsgon@gmail.com','Lunavada','GEC Anand','2023-02-01 12:55:29'),(638,' RZOCGD',' NFAXV',' 7627881151',' gondi@gmail.com','Modasa','LJIET Ahmedabad','2023-02-01 12:55:29'),(639,' HVUISC',' FYPGV',' 6458311235',' ajhbw@gmail.com','Gandhinagar','GEC Bhavnagar','2023-02-01 12:55:29'),(640,' LVTZFW',' LWWQZ',' 7441729645',' dksde@gmail.com','Bhavnagar','GEC Gandhinagar','2023-02-01 12:55:29'),(641,' DDIDIA',' OSFLV',' 7578111323',' tszvr@gmail.com','Lunavada','GEC Bhavnagar','2023-02-01 12:55:29'),(642,' XLTFIW',' FDHWQ',' 6867644288',' iqxpw@gmail.com','Vadnagar','GEC Anand','2023-02-01 12:55:29'),(643,' BQVRAY',' LSRVP',' 9131818484',' tybvg@gmail.com','Godhra','GEC Anand','2023-02-01 12:55:29'),(644,' BHIDEY',' EXQLI',' 6434397212',' yhwsg@gmail.com','Patan','GIT Gandhinagar','2023-02-01 12:55:29'),(645,' OZCJDX',' QCYWA',' 4549745778',' wvibn@gmail.com','Himmatnagar','GEC Anand','2023-02-01 12:55:29'),(646,' NLJQAM',' EMKSE',' 6676364933',' loaqm@gmail.com','Godhra','GEC Bhavnagar','2023-02-01 12:55:29'),(647,' SNJFMZ',' PGNYZ',' 7772475421',' pmzhl@gmail.com','Anand','GMIT Bhavnagar','2023-02-01 12:55:29'),(648,' XCOJBK',' DINTI',' 2831128183',' fejqs@gmail.com','Vadodara','LJIET Ahmedabad','2023-02-01 12:55:29'),(649,' LABOBO',' OLMWW',' 6924724585',' ouqzm@gmail.com','Patan','GEC Gandhinagar','2023-02-01 12:55:29'),(650,' MRLGDY',' XOGVF',' 8891978549',' jyqme@gmail.com','Jharkhand','LJIET Ahmedabad','2023-02-01 12:55:29'),(651,' ENXSKO',' FMLJU',' 6674757667',' dzljv@gmail.com','Patan','GEC Bhavnagar','2023-02-01 12:55:29'),(652,' JDPSRL',' DVVTC',' 6651597275',' xrdci@gmail.com','Jaipur','GEC Gandhinagar','2023-02-01 12:55:29'),(653,' VOBJBT',' VZCFF',' 8119773759',' tzhwn@gmail.com','Dahod','GIT Gandhinagar','2023-02-01 12:55:29'),(654,' PHSEMI',' WGQCQ',' 6641488151',' jlvvj@gmail.com','Mehsana','GEC Modasa','2023-02-01 12:55:29'),(655,' VAOVTW',' BNLCN',' 5294399787',' hlwyo@gmail.com','Ahmedabad','LJIET Ahmedabad','2023-02-01 12:55:29'),(656,' WQYYOB',' VTETG',' 5238884257',' opsqi@gmail.com','Vadnagar','GMIT Bhavnagar','2023-02-01 12:55:29'),(657,' KCTRKO',' OQPDU',' 4166449856',' higrb@gmail.com','Jaipur','GEC Anand','2023-02-01 12:55:29'),(658,' VKETUF',' OGWWI',' 9128899674',' fyqhf@gmail.com','Lunavada','GIT Gandhinagar','2023-02-01 12:55:29'),(659,' EGOIDH',' ONOMM',' 2418661194',' imvid@gmail.com','Godhra','GEC Bhavnagar','2023-02-01 12:55:29'),(660,' ISMLLK',' BRYBB',' 9116769595',' xgari@gmail.com','Valsad','GMIT Bhavnagar','2023-02-01 12:55:29'),(661,' GLHDLX',' NEALT',' 1145234413',' barcq@gmail.com','Gandhinagar','GEC Anand','2023-02-01 12:55:29'),(662,' OESPAP',' FFJRM',' 6314374513',' fwvaj@gmail.com','Patan','GEC Bhavnagar','2023-02-01 12:55:29'),(663,' VZKHSO',' JPOZT',' 3688245154',' dwjns@gmail.com','Vadnagar','GEC Modasa','2023-02-01 12:55:29'),(664,' XOWDXN',' LKOGE',' 6784448773',' wcaws@gmail.com','Vadnagar','GEC Anand','2023-02-01 12:55:29'),(665,' OOHJBJ',' CQFHV',' 7397716564',' arnti@gmail.com','Jaipur','GMIT Bhavnagar','2023-02-01 12:55:29'),(666,' LLQCUG',' VOPKA',' 6286456275',' fcqhh@gmail.com','Patan','GEC Modasa','2023-02-01 12:55:29'),(667,' TADBEF',' ERXWZ',' 8126389377',' gvlwc@gmail.com','Modasa','GIT Gandhinagar','2023-02-01 12:55:29'),(668,' IFGYKF',' NNIUP',' 9621483238',' byquc@gmail.com','Bhavnagar','GEC Anand','2023-02-01 12:55:29'),(669,' QSBPCW',' CDVKR',' 3693715148',' yjzjj@gmail.com','Valsad','GEC Modasa','2023-02-01 12:55:29'),(670,' UAIRXM',' CEKFU',' 6363913767',' mtihg@gmail.com','Jharkhand','GEC Gandhinagar','2023-02-01 12:55:29'),(671,' ZXKRCL',' HFBZD',' 2225815889',' ngfxw@gmail.com','Himmatnagar','GMIT Bhavnagar','2023-02-01 12:55:29'),(672,' RBTDEE',' XHGPQ',' 2412978691',' zcvwc@gmail.com','Bhavnagar','GEC Anand','2023-02-01 12:55:29'),(673,' SZYKDX',' MAWAH',' 5444827511',' gdckd@gmail.com','Anand','GEC Anand','2023-02-01 12:55:29'),(674,' KGFHAD',' THBUG',' 8493687611',' ofiav@gmail.com','Dahod','GH Patel Anand','2023-02-01 12:55:29'),(675,' NXFKZX',' RDASQ',' 3217191948',' bexib@gmail.com','Ahmedabad','GEC Gandhinagar','2023-02-01 12:55:29'),(676,' BUXKLJ',' PKOIS',' 4782977217',' hkaxz@gmail.com','Valsad','GEC Modasa','2023-02-01 12:55:29'),(677,' JLNAIR',' NDWMQ',' 5224394482',' sthqf@gmail.com','Vadodara','GH Patel Anand','2023-02-01 12:55:29'),(678,' UFOHDT',' IQOCE',' 7498249339',' kgchj@gmail.com','Vadodara','GEC Gandhinagar','2023-02-01 12:55:29'),(679,' QYBYCD',' NTOXM',' 9689544648',' ayqwl@gmail.com','Patan','GEC Modasa','2023-02-01 12:55:29'),(680,' CSGISZ',' JPGHP',' 1563226363',' eadct@gmail.com','Ankleshwar','LJIET Ahmedabad','2023-02-01 12:55:29'),(681,' YUWWYQ',' ANTGS',' 2132192262',' rpoce@gmail.com','Jharkhand','LJIET Ahmedabad','2023-02-01 12:55:29'),(682,' MVTPPB',' PCZVB',' 3345132753',' funls@gmail.com','Vadodara','GEC Gandhinagar','2023-02-01 12:55:29'),(683,' SOEHPJ',' MRFQY',' 6955978666',' ferwy@gmail.com','Idar','GIT Gandhinagar','2023-02-01 12:55:29'),(684,' WQYEJU',' FXIQN',' 9535279291',' fmdfm@gmail.com','Lunavada','GEC Gandhinagar','2023-02-01 12:55:29'),(685,' JWSJDN',' IPFCW',' 5515378588',' qapal@gmail.com','Ahmedabad','GIT Gandhinagar','2023-02-01 12:55:29'),(686,' JNXZSN',' YLYML',' 5671966696',' fwdjh@gmail.com','Anand','GEC Anand','2023-02-01 12:55:29'),(687,' LWFBTS',' CJJDJ',' 1742193762',' rqaxn@gmail.com','Godhra','GH Patel Anand','2023-02-01 12:55:29'),(688,' ZOGPZW',' ZDEFA',' 7543626119',' vmsod@gmail.com','Jaipur','LJIET Ahmedabad','2023-02-01 12:55:29'),(689,' FJSYSN',' LAWES',' 4559361629',' qyovj@gmail.com','Valsad','GH Patel Anand','2023-02-01 12:55:29'),(690,' BZBMST',' MGWIK',' 8846283382',' jkcjo@gmail.com','Mumbai','GEC Modasa','2023-02-01 12:55:29'),(691,' NHXIVO',' TYNVF',' 4496335814',' fdlcl@gmail.com','Vadnagar','GMIT Bhavnagar','2023-02-01 12:55:29'),(692,' TYEPCU',' BBPIV',' 8187218822',' zutin@gmail.com','Anand','GEC Bhavnagar','2023-02-01 12:55:29'),(693,' WMMPFR',' CFDQE',' 7995563995',' fdtxi@gmail.com','Gandhinagar','LJIET Ahmedabad','2023-02-01 12:55:29'),(694,' BYXYTT',' CULMF',' 6526532936',' zxquj@gmail.com','Ahmedabad','GEC Gandhinagar','2023-02-01 12:55:29'),(695,' OTYXDE',' PYCNQ',' 9917911872',' etrzg@gmail.com','Surat','LJIET Ahmedabad','2023-02-01 12:55:29'),(696,' PNLRSX',' XMHAW',' 2478583293',' qjqwt@gmail.com','Himmatnagar','GMIT Bhavnagar','2023-02-01 12:55:29'),(697,' HVMQOS',' ETOWU',' 2822696513',' aeddw@gmail.com','Himmatnagar','GMIT Bhavnagar','2023-02-01 12:55:29'),(698,' GPMNHF',' JCBXE',' 5627872279',' hwcen@gmail.com','Surat','GIT Gandhinagar','2023-02-01 12:55:29'),(699,' EGJXKF',' SHXET',' 7647292849',' gmnkm@gmail.com','Surat','GEC Modasa','2023-02-01 12:55:29'),(700,' VFJMOD',' TSQRJ',' 8464992825',' uunrb@gmail.com','Patan','GH Patel Anand','2023-02-01 12:55:29'),(701,' HMNAMU',' ZJROT',' 1686611849',' xsxdd@gmail.com','Idar','GEC Modasa','2023-02-01 12:55:29'),(702,' UJCGGP',' OQZHS',' 3531363636',' iiynl@gmail.com','Lunavada','GEC Modasa','2023-02-01 12:55:29'),(703,' OXMZGI',' SUPRQ',' 5149629183',' iqzfl@gmail.com','Jharkhand','GIT Gandhinagar','2023-02-01 12:55:29'),(704,' JXXKFQ',' QNPAA',' 6883447259',' vapph@gmail.com','Surat','GEC Anand','2023-02-01 12:55:29'),(705,' YLKFTZ',' JTZRX',' 3436752963',' vdgup@gmail.com','Lunavada','GH Patel Anand','2023-02-01 12:55:29'),(706,' WGHVCU',' QCLFJ',' 3638912118',' fpgyp@gmail.com','Jharkhand','GIT Gandhinagar','2023-02-01 12:55:29'),(707,' CNFVUQ',' PMLGG',' 9936973176',' vfkae@gmail.com','Ahmedabad','GMIT Bhavnagar','2023-02-01 12:55:29'),(708,' UDLSPT',' LTQPI',' 6346128879',' nvwvu@gmail.com','Dahod','GMIT Bhavnagar','2023-02-01 12:55:29'),(709,' BQFVLV',' NQFDK',' 1831723473',' oimuf@gmail.com','Jaipur','GEC Gandhinagar','2023-02-01 12:55:29'),(710,' VVMJZD',' DIXZQ',' 2737731248',' ohuid@gmail.com','Vadodara','GEC Bhavnagar','2023-02-01 12:55:29'),(711,' LJAAUB',' MHJIV',' 9165784414',' nfgyk@gmail.com','Vadnagar','GIT Gandhinagar','2023-02-01 12:55:29'),(712,' BVOFWE',' FQQSD',' 8289363169',' diycb@gmail.com','Ahmedabad','GEC Bhavnagar','2023-02-01 12:55:29'),(713,' NEKCKM',' OHTYX',' 2137918523',' lalyv@gmail.com','Idar','GEC Modasa','2023-02-01 12:55:29'),(714,' XLGRWU',' KLWWI',' 3387572492',' dztks@gmail.com','Godhra','GEC Bhavnagar','2023-02-01 12:55:29'),(715,' GSVRBD',' EJQHC',' 6856882552',' nyhzj@gmail.com','Mehsana','GH Patel Anand','2023-02-01 12:55:29'),(716,' YYLUOA',' FDFWP',' 8464895473',' cyvov@gmail.com','Vadnagar','GEC Gandhinagar','2023-02-01 12:55:29'),(717,' HTYDMV',' VFIDT',' 1537949891',' ctzzj@gmail.com','Mehsana','GEC Bhavnagar','2023-02-01 12:55:29'),(718,' GSSWBC',' PYPBN',' 1529138293',' tuvlm@gmail.com','Bhavnagar','GEC Gandhinagar','2023-02-01 12:55:29'),(719,' AOUDYC',' CBETX',' 6889762338',' fssew@gmail.com','Valsad','GEC Gandhinagar','2023-02-01 12:55:29'),(720,' FURLAD',' LRFNW',' 1153891844',' sjbts@gmail.com','Vadnagar','GEC Gandhinagar','2023-02-01 12:55:29'),(721,' NFEOWH',' ECIPK',' 3226838769',' qvbrb@gmail.com','Jaipur','GEC Gandhinagar','2023-02-01 12:55:29'),(722,' RPBCQP',' JELGG',' 4793891292',' cjysz@gmail.com','Anand','LJIET Ahmedabad','2023-02-01 12:55:29'),(723,' TDAJCV',' UFOYR',' 7519798318',' zeykx@gmail.com','Ahmedabad','GIT Gandhinagar','2023-02-01 12:55:29'),(724,' FHKGTD',' TXBFP',' 2827289689',' eetrm@gmail.com','Jaipur','GMIT Bhavnagar','2023-02-01 12:55:29'),(725,' BLWIVY',' LQIPO',' 2737869153',' azati@gmail.com','Jharkhand','GEC Anand','2023-02-01 12:55:29'),(726,' KLOOQP',' YLOQD',' 5873677933',' uyrob@gmail.com','Ahmedabad','GH Patel Anand','2023-02-01 12:55:29'),(727,' XDJPYB',' XBIHL',' 3445432687',' rkioh@gmail.com','Idar','GH Patel Anand','2023-02-01 12:55:29'),(728,' CGFWRO',' CBQEN',' 5666342135',' jwrgs@gmail.com','Idar','GMIT Bhavnagar','2023-02-01 12:55:29'),(729,' LYPKPV',' CSVYV',' 6968494881',' vnbhx@gmail.com','Dahod','GEC Anand','2023-02-01 12:55:29'),(730,' IDURJQ',' CFOEQ',' 8824965467',' chbvp@gmail.com','Idar','GIT Gandhinagar','2023-02-01 12:55:29'),(731,' EQMKZB',' OSHAC',' 6491979539',' adobd@gmail.com','Jaipur','GEC Anand','2023-02-01 12:55:29'),(732,' DHWAOA',' VZWAV',' 3771183959',' amftn@gmail.com','Dahod','GEC Gandhinagar','2023-02-01 12:55:29'),(733,' GGXJYT',' QVZGX',' 7659482534',' uazxe@gmail.com','Bhavnagar','GMIT Bhavnagar','2023-02-01 12:55:29'),(734,' NJMAIB',' ZVFKX',' 8485283549',' qtyqi@gmail.com','Jaipur','GH Patel Anand','2023-02-01 12:55:29'),(735,' AXHCSN',' EUMNO',' 4445941396',' uqzqu@gmail.com','Surat','GEC Modasa','2023-02-01 12:55:29'),(736,' ZDDTVH',' WNHKT',' 3235577478',' btdrp@gmail.com','Dahod','GEC Modasa','2023-02-01 12:55:29'),(737,' IYYUJB',' TDJRW',' 6718978928',' abyrj@gmail.com','Gandhinagar','GMIT Bhavnagar','2023-02-01 12:55:29'),(738,' KDKYSQ',' ZLKMP',' 1775958345',' jlyym@gmail.com','Dahod','GH Patel Anand','2023-02-01 12:55:29'),(739,' XMFJLG',' IQVRQ',' 3112513337',' jadtx@gmail.com','Ahmedabad','GEC Gandhinagar','2023-02-01 12:55:29'),(740,' MUOVJT',' YVRER',' 9836374852',' xnlen@gmail.com','Vadodara','GEC Gandhinagar','2023-02-01 12:55:29'),(741,' TEUMGE',' KKTMY',' 5742932636',' cacpc@gmail.com','Jharkhand','LJIET Ahmedabad','2023-02-01 12:55:29'),(742,' LXFGWZ',' CQZON',' 4615971649',' zziza@gmail.com','Ankleshwar','GH Patel Anand','2023-02-01 12:55:29'),(743,' NEVMZN',' DBVFD',' 9969481152',' totfe@gmail.com','Patan','GIT Gandhinagar','2023-02-01 12:55:29'),(744,' TAWRBO',' VGDIO',' 9918545173',' vzncq@gmail.com','Anand','GEC Gandhinagar','2023-02-01 12:55:29'),(745,' TQVDPB',' IQEOK',' 5783958282',' qsors@gmail.com','Vadnagar','GEC Bhavnagar','2023-02-01 12:55:29'),(746,' PMXKBR',' PKDAA',' 1529228114',' jjlwg@gmail.com','Ahmedabad','GMIT Bhavnagar','2023-02-01 12:55:29'),(747,' KXEZOP',' XFFGR',' 9386946676',' ecksx@gmail.com','Modasa','GEC Bhavnagar','2023-02-01 12:55:29'),(748,' AGPGOZ',' EOZTZ',' 1999359513',' fkpnf@gmail.com','Ahmedabad','GMIT Bhavnagar','2023-02-01 12:55:29'),(749,' RZNJML',' VYAAP',' 1242219379',' lfehe@gmail.com','Dahod','GEC Anand','2023-02-01 12:55:29'),(750,' AFEYAW',' JWJBK',' 6923659823',' obajw@gmail.com','Idar','GIT Gandhinagar','2023-02-01 12:55:29'),(751,' ZFXNEO',' KNGVU',' 7899685855',' towlj@gmail.com','Valsad','GH Patel Anand','2023-02-01 12:55:29'),(752,' KHPVLL',' YCPIE',' 8195741596',' jykyd@gmail.com','Vadnagar','GEC Modasa','2023-02-01 12:55:29'),(753,' VQJOGO',' WPTAF',' 2639729296',' ujsms@gmail.com','Mumbai','GEC Gandhinagar','2023-02-01 12:55:29'),(754,' PDQOHP',' ESKDG',' 9772974735',' khpzr@gmail.com','Dahod','GEC Gandhinagar','2023-02-01 12:55:29'),(755,' FBLRNW',' TCKID',' 9134113512',' qrepj@gmail.com','Surat','LJIET Ahmedabad','2023-02-01 12:55:29'),(756,' DTBCDU',' DYTJL',' 4311927811',' sceso@gmail.com','Lunavada','GIT Gandhinagar','2023-02-01 12:55:29'),(757,' PIQOPH',' ZINKJ',' 2297578514',' aogan@gmail.com','Jaipur','GIT Gandhinagar','2023-02-01 12:55:29'),(758,' AYOMLN',' PQLNV',' 1454858825',' eqmui@gmail.com','Vadnagar','GEC Anand','2023-02-01 12:55:29'),(759,' AVKPNY',' HSTMK',' 1735864924',' jnzaz@gmail.com','Jaipur','GEC Anand','2023-02-01 12:55:29'),(760,' UWGBMG',' NNCFM',' 5925259127',' yaedr@gmail.com','Godhra','GEC Bhavnagar','2023-02-01 12:55:29'),(761,' KGCDJL',' CXZGB',' 5396355419',' gjqif@gmail.com','Surat','GEC Anand','2023-02-01 12:55:29'),(762,' JTFHSW',' LSOJP',' 5844678646',' kgkob@gmail.com','Anand','GEC Modasa','2023-02-01 12:55:29'),(763,' USZZFZ',' KXZRN',' 1466611579',' lpkly@gmail.com','Gandhinagar','GMIT Bhavnagar','2023-02-01 12:55:29'),(764,' YVOEES',' TNQPM',' 8192364239',' vuayb@gmail.com','Dahod','GEC Gandhinagar','2023-02-01 12:55:29'),(765,' VHYLTC',' MFEMJ',' 1479656271',' ndyoy@gmail.com','Ahmedabad','GEC Bhavnagar','2023-02-01 12:55:29'),(766,' CBRHES',' VIPUV',' 5641969836',' fnuov@gmail.com','Idar','GH Patel Anand','2023-02-01 12:55:29'),(767,' HAGBGP',' YSZVI',' 3277962817',' bpfla@gmail.com','Gandhinagar','GEC Anand','2023-02-01 12:55:29'),(768,' BEJKIC',' EYFMR',' 8296867527',' nzzpr@gmail.com','Bhavnagar','GEC Modasa','2023-02-01 12:55:29'),(769,' IVBRHO',' NMWBN',' 8163573457',' johdu@gmail.com','Vadnagar','GH Patel Anand','2023-02-01 12:55:29'),(770,' IXUZLY',' YELKF',' 2128752737',' aeoff@gmail.com','Mumbai','GEC Gandhinagar','2023-02-01 12:55:29'),(771,' SKGJBE',' CVCAF',' 5221665469',' bxnki@gmail.com','Anand','GEC Anand','2023-02-01 12:55:29'),(772,' XRAMLB',' UIOEG',' 4145983861',' hoilf@gmail.com','Ankleshwar','GEC Modasa','2023-02-01 12:55:29'),(773,' WAPLKI',' SMZNP',' 4274712179',' jyezp@gmail.com','Patan','GMIT Bhavnagar','2023-02-01 12:55:29'),(774,' WYXPUZ',' JLFZC',' 8185817393',' dhiqy@gmail.com','Lunavada','GEC Bhavnagar','2023-02-01 12:55:29'),(775,' OOMIPK',' JOEEX',' 6611829816',' jnjyc@gmail.com','Ankleshwar','GH Patel Anand','2023-02-01 12:55:29'),(776,' HRGDYR',' XPKEZ',' 2958218627',' tduhy@gmail.com','Himmatnagar','GEC Gandhinagar','2023-02-01 12:55:29'),(777,' NAJARS',' NXQOI',' 6343141543',' oyumo@gmail.com','Dahod','GEC Bhavnagar','2023-02-01 12:55:29'),(778,' WRXEXE',' SYRLG',' 9596739539',' bawkz@gmail.com','Jaipur','LJIET Ahmedabad','2023-02-01 12:55:29'),(779,' QHAHUZ',' CSZBC',' 5439689819',' mstqg@gmail.com','Ankleshwar','GEC Gandhinagar','2023-02-01 12:55:29'),(780,' QOOROR',' OMQQO',' 7465179451',' dkvaw@gmail.com','Anand','GIT Gandhinagar','2023-02-01 12:55:29'),(781,' BPLUWX',' JOOJH',' 1128432738',' vchci@gmail.com','Ahmedabad','GEC Bhavnagar','2023-02-01 12:55:29'),(782,' LJPODF',' UZGPM',' 6747821256',' ktivq@gmail.com','Jharkhand','LJIET Ahmedabad','2023-02-01 12:55:29'),(783,' GQOHYO',' LEBNW',' 5562375886',' jejyp@gmail.com','Godhra','GEC Bhavnagar','2023-02-01 12:55:29'),(784,' VKMBEL',' LZMBL',' 7242591717',' dykke@gmail.com','Dahod','GEC Bhavnagar','2023-02-01 12:55:29'),(785,' PZXYUU',' YAWAL',' 9985934448',' zbpms@gmail.com','Ahmedabad','LJIET Ahmedabad','2023-02-01 12:55:29'),(786,' HOBQBA',' ICVLH',' 7872826339',' opxmv@gmail.com','Ahmedabad','GIT Gandhinagar','2023-02-01 12:55:29'),(787,' VTRWXM',' QCHWL',' 2429193657',' kqtww@gmail.com','Vadodara','GIT Gandhinagar','2023-02-01 12:55:29'),(788,' QPLVCL',' GUJQD',' 7284666316',' xhpcy@gmail.com','Vadodara','GEC Anand','2023-02-01 12:55:29'),(789,' BNUXKJ',' RYIWV',' 1691571699',' uwbcp@gmail.com','Jaipur','GMIT Bhavnagar','2023-02-01 12:55:29'),(790,' UZEYNJ',' LXYHI',' 8132951616',' nzsgo@gmail.com','Dahod','GEC Modasa','2023-02-01 12:55:29'),(791,' JHARFJ',' IKJGF',' 4631854839',' gxevz@gmail.com','Gandhinagar','LJIET Ahmedabad','2023-02-01 12:55:29'),(792,' WLGYTO',' CVIAZ',' 9415198212',' oenrq@gmail.com','Jaipur','GEC Bhavnagar','2023-02-01 12:55:29'),(793,' URTVAS',' TAGRI',' 5997134455',' mzynq@gmail.com','Vadodara','GEC Modasa','2023-02-01 12:55:29'),(794,' GZPHNK',' KTTER',' 8158632866',' nxppc@gmail.com','Ahmedabad','GEC Gandhinagar','2023-02-01 12:55:29'),(795,' TECOVW',' WSMSB',' 2841475537',' cscjp@gmail.com','Surat','GEC Gandhinagar','2023-02-01 12:55:29'),(796,' DTGXCG',' XZLDM',' 1176714461',' xexka@gmail.com','Patan','GEC Anand','2023-02-01 12:55:29'),(797,' AOQDBX',' MWRQN',' 4561994767',' qpfsd@gmail.com','Jaipur','GEC Bhavnagar','2023-02-01 12:55:29'),(798,' LCRIOV',' WBVME',' 4745817459',' ugvwc@gmail.com','Jaipur','GH Patel Anand','2023-02-01 12:55:29'),(799,' BIKTAZ',' RCQMO',' 2584824269',' qemxi@gmail.com','Patan','GEC Gandhinagar','2023-02-01 12:55:29'),(800,' CVHVRP',' WGIMU',' 6777514781',' eqidp@gmail.com','Himmatnagar','GEC Anand','2023-02-01 12:55:29'),(801,' XHQVRX',' ACSIQ',' 9467267553',' tlhzx@gmail.com','Mehsana','GEC Gandhinagar','2023-02-01 12:55:29'),(802,' XWEXMD',' XOHDZ',' 9976659764',' bvgob@gmail.com','Lunavada','GEC Bhavnagar','2023-02-01 12:55:29'),(803,' ARNOAT',' VLVES',' 1591497311',' hubeu@gmail.com','Surat','GEC Anand','2023-02-01 12:55:29'),(804,' HQLGHF',' TDNLN',' 9837735719',' iuiic@gmail.com','Vadodara','LJIET Ahmedabad','2023-02-01 12:55:29'),(805,' YAJFGZ',' BAMXA',' 7379227326',' vmdlm@gmail.com','Ankleshwar','GMIT Bhavnagar','2023-02-01 12:55:29'),(806,' LXQSCF',' GRYTQ',' 2112412799',' qpida@gmail.com','Jharkhand','GIT Gandhinagar','2023-02-01 12:55:29'),(807,' MTNSFW',' MCSFO',' 2618575993',' dipsv@gmail.com','Mumbai','GIT Gandhinagar','2023-02-01 12:55:29'),(808,' PORJIZ',' IEHEA',' 7449832197',' rshho@gmail.com','Himmatnagar','GMIT Bhavnagar','2023-02-01 12:55:29'),(809,' DYJQJY',' AHDOS',' 3481785225',' dmcur@gmail.com','Anand','GIT Gandhinagar','2023-02-01 12:55:29'),(810,' GSSICW',' PEUIJ',' 7473489928',' vxpry@gmail.com','Patan','GH Patel Anand','2023-02-01 12:55:29'),(811,' FIPHIT',' ACLUV',' 5721666184',' zvbav@gmail.com','Valsad','GH Patel Anand','2023-02-01 12:55:29'),(812,' SHGRQM',' TBNVH',' 8293724559',' ybpfp@gmail.com','Surat','GH Patel Anand','2023-02-01 12:55:29'),(813,' NBGXYV',' APXEX',' 1112641239',' mxmov@gmail.com','Vadnagar','LJIET Ahmedabad','2023-02-01 12:55:29'),(814,' XBNPGP',' VKREU',' 2281166378',' mskgs@gmail.com','Patan','GIT Gandhinagar','2023-02-01 12:55:29'),(815,' QWGCOD',' CVTAH',' 4142945429',' rnleg@gmail.com','Gandhinagar','GEC Anand','2023-02-01 12:55:29'),(816,' FCOIHZ',' MLUPU',' 7535346453',' uzxsa@gmail.com','Gandhinagar','GH Patel Anand','2023-02-01 12:55:29'),(817,' RTLHQG',' VIWRI',' 8278833574',' snrxw@gmail.com','Jaipur','GEC Anand','2023-02-01 12:55:29'),(818,' XZTXHL',' PGBQT',' 1651691122',' bymyt@gmail.com','Idar','GEC Anand','2023-02-01 12:55:29'),(819,' GPPOXE',' DXYWF',' 9665422451',' cnipo@gmail.com','Godhra','GEC Gandhinagar','2023-02-01 12:55:29'),(820,' OZOLXF',' GVJLH',' 1358417574',' cpyky@gmail.com','Vadodara','GEC Anand','2023-02-01 12:55:29'),(821,' PPUQEM',' QWGTB',' 2363283194',' rwbgr@gmail.com','Gandhinagar','GH Patel Anand','2023-02-01 12:55:29'),(822,' CQFDDJ',' GMNVP',' 8558894344',' jlcaw@gmail.com','Vadodara','GEC Gandhinagar','2023-02-01 12:55:29'),(823,' KZNEQN',' LLRBI',' 1861688784',' ryvuh@gmail.com','Vadodara','GEC Bhavnagar','2023-02-01 12:55:29'),(824,' MRYEPX',' BMDAY',' 1114471923',' vgyap@gmail.com','Himmatnagar','GIT Gandhinagar','2023-02-01 12:55:29'),(825,' ZFMCUX',' KAONR',' 3591958461',' ersen@gmail.com','Mumbai','GIT Gandhinagar','2023-02-01 12:55:29'),(826,' QQBCWR',' DPOZQ',' 8219233337',' myckz@gmail.com','Patan','GEC Anand','2023-02-01 12:55:29'),(827,' BAWVQK',' SQKNP',' 2324923398',' llbuj@gmail.com','Jaipur','GEC Modasa','2023-02-01 12:55:29'),(828,' PUSCGV',' RGUPU',' 5135211275',' ltrvq@gmail.com','Himmatnagar','GIT Gandhinagar','2023-02-01 12:55:29'),(829,' CLFLHN',' ZSZYU',' 3495424693',' utntw@gmail.com','Ankleshwar','GH Patel Anand','2023-02-01 12:55:29'),(830,' LCISWB',' RRPYK',' 8154556869',' bxtxw@gmail.com','Lunavada','GEC Gandhinagar','2023-02-01 12:55:29'),(831,' DKNYJL',' PUHBC',' 6833938344',' jujdg@gmail.com','Anand','GEC Anand','2023-02-01 12:55:29'),(832,' LAJLOZ',' XAFDU',' 9342558446',' jtszm@gmail.com','Ankleshwar','GEC Anand','2023-02-01 12:55:29'),(833,' ASSCUR',' YGXXL',' 3822919593',' qwjdf@gmail.com','Vadodara','GH Patel Anand','2023-02-01 12:55:29'),(834,' MDUBEJ',' KDYCM',' 1962293666',' ynqwt@gmail.com','Mehsana','GEC Modasa','2023-02-01 12:55:29'),(835,' LPJFEP',' VWKYY',' 1477236318',' sjqvp@gmail.com','Jharkhand','GMIT Bhavnagar','2023-02-01 12:55:29'),(836,' QGHRBE',' OBRUV',' 4369453328',' zypfz@gmail.com','Vadnagar','GEC Bhavnagar','2023-02-01 12:55:29'),(837,' THKTCN',' UNDFP',' 8726287948',' ezcqr@gmail.com','Vadnagar','GEC Gandhinagar','2023-02-01 12:55:29'),(838,' XIDEVU',' GURWS',' 6526878345',' bvjrj@gmail.com','Modasa','GEC Anand','2023-02-01 12:55:29'),(839,' DKKLBH',' HMOPQ',' 1637543399',' fwrld@gmail.com','Godhra','GMIT Bhavnagar','2023-02-01 12:55:29'),(840,' EZOEVO',' FJFEZ',' 7997435236',' cyxtk@gmail.com','Vadodara','GEC Bhavnagar','2023-02-01 12:55:29'),(841,' XVLNOW',' UFGPP',' 1787918354',' oxtwg@gmail.com','Patan','LJIET Ahmedabad','2023-02-01 12:55:29'),(842,' ZTVQLD',' BGTKI',' 4246755799',' itbbo@gmail.com','Surat','LJIET Ahmedabad','2023-02-01 12:55:29'),(843,' IZHGRQ',' UVZFV',' 7149741166',' kzbjf@gmail.com','Dahod','GEC Modasa','2023-02-01 12:55:29'),(844,' VQICOK',' WBEML',' 2935747428',' oqkzs@gmail.com','Modasa','GH Patel Anand','2023-02-01 12:55:29'),(845,' ZWEXEM',' LPWCO',' 5938491623',' ypkge@gmail.com','Dahod','GEC Modasa','2023-02-01 12:55:29'),(846,' NNWZLK',' SSZVI',' 8696444485',' pmacf@gmail.com','Valsad','GEC Modasa','2023-02-01 12:55:29'),(847,' TBSBKM',' GAHOB',' 7375782616',' gklfk@gmail.com','Idar','GEC Gandhinagar','2023-02-01 12:55:29'),(848,' ABGQPR',' HIXTA',' 5521375846',' luetr@gmail.com','Godhra','GEC Anand','2023-02-01 12:55:29'),(849,' YQVYHX',' OAAOF',' 1191151573',' qmrmz@gmail.com','Anand','GEC Gandhinagar','2023-02-01 12:55:29'),(850,' DQOGXD',' SGPGV',' 5684372348',' uxeui@gmail.com','Valsad','GH Patel Anand','2023-02-01 12:55:29'),(851,' IUDHET',' LWDKH',' 5735622414',' clrch@gmail.com','Valsad','GMIT Bhavnagar','2023-02-01 12:55:29'),(852,' LVLJTD',' VEIQL',' 3291815188',' fwony@gmail.com','Lunavada','GH Patel Anand','2023-02-01 12:55:29'),(853,' TLDPRH',' TTYLU',' 6713533779',' ggjxs@gmail.com','Idar','GEC Anand','2023-02-01 12:55:29'),(854,' ANSCQA',' GHKQG',' 4117457836',' ninbr@gmail.com','Godhra','GMIT Bhavnagar','2023-02-01 12:55:29'),(855,' DHOCVW',' SIRIV',' 5785661481',' fgwah@gmail.com','Ankleshwar','GEC Bhavnagar','2023-02-01 12:55:29'),(856,' OHFCRW',' PDJYR',' 8128687623',' lwjqx@gmail.com','Idar','GEC Bhavnagar','2023-02-01 12:55:29'),(857,' SOBNYY',' ZJZPD',' 8425268179',' ppwlr@gmail.com','Jaipur','GEC Modasa','2023-02-01 12:55:29'),(858,' PFQGSN',' PXEMI',' 2561777248',' rbqya@gmail.com','Dahod','GIT Gandhinagar','2023-02-01 12:55:29'),(859,' YJRKSA',' VBWRG',' 5171546259',' dkvoc@gmail.com','Godhra','GEC Modasa','2023-02-01 12:55:29'),(860,' MZSQGQ',' UHKQO',' 8673235193',' eaaom@gmail.com','Himmatnagar','GMIT Bhavnagar','2023-02-01 12:55:29'),(861,' SRIFQO',' OHFSS',' 4747935451',' rmgta@gmail.com','Surat','LJIET Ahmedabad','2023-02-01 12:55:29'),(862,' IOXEKG',' FBTDI',' 9871541331',' xrqvs@gmail.com','Vadodara','LJIET Ahmedabad','2023-02-01 12:55:29'),(863,' CMGFHY',' HUFTR',' 8219795133',' ivrfx@gmail.com','Mehsana','GEC Gandhinagar','2023-02-01 12:55:29'),(864,' WJRLNA',' WEMWZ',' 7432834971',' jxzwb@gmail.com','Valsad','GEC Modasa','2023-02-01 12:55:29'),(865,' RAMELH',' GHAGF',' 1588832359',' apcxw@gmail.com','Vadnagar','LJIET Ahmedabad','2023-02-01 12:55:29'),(866,' KAGAAS',' GFEYS',' 4925322493',' pwbni@gmail.com','Surat','GEC Bhavnagar','2023-02-01 12:55:29'),(867,' NKDWLJ',' OATIS',' 6494722638',' vnajf@gmail.com','Ahmedabad','GEC Anand','2023-02-01 12:55:29'),(868,' KIJCKC',' LLDJL',' 9421282524',' nykmc@gmail.com','Modasa','LJIET Ahmedabad','2023-02-01 12:55:29'),(869,' HONCFX',' GGDFY',' 2573744476',' alond@gmail.com','Patan','GEC Gandhinagar','2023-02-01 12:55:29'),(870,' BDXEBG',' ZYNBU',' 2981168783',' kompk@gmail.com','Ahmedabad','LJIET Ahmedabad','2023-02-01 12:55:29'),(871,' ZPDZRY',' SIYBN',' 1156125577',' ecgyc@gmail.com','Patan','GIT Gandhinagar','2023-02-01 12:55:29'),(872,' JHHFAX',' SHEXG',' 2787384731',' aafcd@gmail.com','Lunavada','GEC Modasa','2023-02-01 12:55:29'),(873,' MNLLIM',' NPKOH',' 6572952384',' ytslq@gmail.com','Ankleshwar','GEC Gandhinagar','2023-02-01 12:55:29'),(874,' EUDRGA',' TTGHZ',' 9512415427',' ambqu@gmail.com','Vadodara','GEC Anand','2023-02-01 12:55:29'),(875,' LPJTRN',' VERWL',' 1878948443',' plwmb@gmail.com','Patan','GEC Gandhinagar','2023-02-01 12:55:29'),(876,' EBWDKF',' XDUJX',' 7547182444',' ttpul@gmail.com','Jaipur','GIT Gandhinagar','2023-02-01 12:55:29'),(877,' MCPHXB',' WLLMQ',' 1894339759',' utgsv@gmail.com','Gandhinagar','GMIT Bhavnagar','2023-02-01 12:55:29'),(878,' LJGBPW',' VPSUO',' 1552255851',' nhgoz@gmail.com','Himmatnagar','GIT Gandhinagar','2023-02-01 12:55:29'),(879,' BRVMFZ',' GECNN',' 1828611162',' wloso@gmail.com','Bhavnagar','LJIET Ahmedabad','2023-02-01 12:55:29'),(880,' TEBHCM',' KLOYD',' 2344986798',' cbpqg@gmail.com','Vadnagar','GEC Bhavnagar','2023-02-01 12:55:29'),(881,' ZPTMRA',' SOAQH',' 7671285493',' jfsla@gmail.com','Himmatnagar','GMIT Bhavnagar','2023-02-01 12:55:29'),(882,' JVVDAU',' ZLXEO',' 4629139246',' otvkl@gmail.com','Himmatnagar','GEC Anand','2023-02-01 12:55:29'),(883,' BQWAXH',' SCVHY',' 8213678483',' gjrxf@gmail.com','Anand','LJIET Ahmedabad','2023-02-01 12:55:29'),(884,' HYFYOK',' KCDNV',' 2251933473',' wbger@gmail.com','Jharkhand','GEC Bhavnagar','2023-02-01 12:55:29'),(885,' FNBMKL',' IAHBW',' 4682433193',' pfahm@gmail.com','Valsad','GIT Gandhinagar','2023-02-01 12:55:29'),(886,' JJTDAX',' MLPCH',' 4334854417',' difwb@gmail.com','Mehsana','GEC Bhavnagar','2023-02-01 12:55:29'),(887,' PNPDBK',' SVHAP',' 3165442345',' apfbp@gmail.com','Godhra','GIT Gandhinagar','2023-02-01 12:55:29'),(888,' YXRCAK',' YLNXZ',' 9971494767',' tkhsb@gmail.com','Valsad','GEC Modasa','2023-02-01 12:55:29'),(889,' JFZKIA',' ANKZY',' 6732375333',' rmrgv@gmail.com','Dahod','GMIT Bhavnagar','2023-02-01 12:55:29'),(890,' AZMHHZ',' XWCUD',' 5437425935',' pnnjn@gmail.com','Vadodara','GIT Gandhinagar','2023-02-01 12:55:29'),(891,' YIMLJA',' JVYQZ',' 4281768398',' xjrqp@gmail.com','Anand','GMIT Bhavnagar','2023-02-01 12:55:29'),(892,' BHZBDX',' MZTAT',' 9176877438',' apzve@gmail.com','Jharkhand','GMIT Bhavnagar','2023-02-01 12:55:29'),(893,' DQWNWM',' TOOIC',' 9589678688',' lkvjp@gmail.com','Gandhinagar','LJIET Ahmedabad','2023-02-01 12:55:29'),(894,' SOFOUZ',' JMNHG',' 3618937753',' kiost@gmail.com','Patan','GEC Modasa','2023-02-01 12:55:29'),(895,' JRRXQM',' WVYDK',' 2931719445',' mdgtm@gmail.com','Valsad','GEC Modasa','2023-02-01 12:55:29'),(896,' GYSWNS',' QOMXM',' 8566653817',' tylkh@gmail.com','Ankleshwar','GEC Modasa','2023-02-01 12:55:29'),(897,' VSFVEL',' FIBQY',' 3585567712',' tcdmw@gmail.com','Idar','GEC Bhavnagar','2023-02-01 12:55:29'),(898,' MUIPCX',' NHXTC',' 1869749885',' pjvfo@gmail.com','Bhavnagar','GEC Anand','2023-02-01 12:55:29'),(899,' EMQRSJ',' GVISS',' 2525784383',' pomqg@gmail.com','Idar','GH Patel Anand','2023-02-01 12:55:29'),(900,' BVTMAA',' VISBX',' 7291566549',' gdyhd@gmail.com','Modasa','GEC Modasa','2023-02-01 12:55:29'),(901,' RHHRKM',' CZNCT',' 5838228254',' epiln@gmail.com','Godhra','GIT Gandhinagar','2023-02-01 12:55:29'),(902,' DJJMSL',' NWLSI',' 7739119161',' qxfok@gmail.com','Jharkhand','GIT Gandhinagar','2023-02-01 12:55:29'),(903,' XBWEKK',' XUAMA',' 6453336558',' ullvw@gmail.com','Gandhinagar','LJIET Ahmedabad','2023-02-01 12:55:29'),(904,' BBGXJO',' GNJVP',' 4622295383',' djegd@gmail.com','Bhavnagar','GEC Gandhinagar','2023-02-01 12:55:29'),(905,' XCWGRG',' OHKGT',' 4469945446',' lrrry@gmail.com','Patan','GEC Gandhinagar','2023-02-01 12:55:29'),(906,' GJTUEL',' DKELY',' 9493724212',' jbxdx@gmail.com','Bhavnagar','GEC Gandhinagar','2023-02-01 12:55:29'),(907,' FDRDZY',' OUFMX',' 8654752411',' eggzd@gmail.com','Himmatnagar','GIT Gandhinagar','2023-02-01 12:55:29'),(908,' WVXVAZ',' MWGAE',' 5877145791',' pfxji@gmail.com','Jaipur','GEC Bhavnagar','2023-02-01 12:55:29'),(909,' ILRUSM',' DSTFY',' 9853141713',' xvpvx@gmail.com','Jharkhand','GEC Gandhinagar','2023-02-01 12:55:29'),(910,' CLKSDK',' UAKVT',' 9553498341',' wtqnn@gmail.com','Valsad','GEC Bhavnagar','2023-02-01 12:55:29'),(911,' HUCHMY',' ISLQL',' 4584529785',' ypgje@gmail.com','Gandhinagar','GEC Anand','2023-02-01 12:55:29'),(912,' ALZXVF',' AWXGL',' 3258235471',' tuasz@gmail.com','Ankleshwar','GMIT Bhavnagar','2023-02-01 12:55:29'),(913,' RHZYCV',' PWJUF',' 2489187764',' sgvzj@gmail.com','Anand','GH Patel Anand','2023-02-01 12:55:29'),(914,' NMGDRX',' SJYMF',' 2273745141',' eddiy@gmail.com','Dahod','GH Patel Anand','2023-02-01 12:55:29'),(915,' UJIQGX',' ZKAOC',' 8666476861',' kdvtr@gmail.com','Ahmedabad','GEC Gandhinagar','2023-02-01 12:55:29'),(916,' QXOTRM',' ZQNIH',' 2211139635',' vepbp@gmail.com','Gandhinagar','GMIT Bhavnagar','2023-02-01 12:55:29'),(917,' PMFAAW',' RQTWG',' 8661563653',' wkxri@gmail.com','Ankleshwar','GIT Gandhinagar','2023-02-01 12:55:29'),(918,' LCHJAR',' MXHRD',' 9243711694',' xwkww@gmail.com','Gandhinagar','GEC Gandhinagar','2023-02-01 12:55:29'),(919,' DDIBXT',' MOTAT',' 6727312471',' miwtq@gmail.com','Ankleshwar','GEC Gandhinagar','2023-02-01 12:55:29'),(920,' AOYGOC',' DKRIT',' 6586389359',' lmxbv@gmail.com','Anand','GMIT Bhavnagar','2023-02-01 12:55:29'),(921,' VLREGP',' GYHDY',' 9358365791',' zkgku@gmail.com','Ankleshwar','GEC Bhavnagar','2023-02-01 12:55:29'),(922,' MUSYRX',' DEMLA',' 6497834629',' erwbc@gmail.com','Gandhinagar','GEC Anand','2023-02-01 12:55:29'),(923,' ZBIXZW',' BZDLB',' 5571783888',' grjor@gmail.com','Godhra','GMIT Bhavnagar','2023-02-01 12:55:29'),(924,' QLFWKM',' OTYMD',' 6656151679',' frpcn@gmail.com','Anand','LJIET Ahmedabad','2023-02-01 12:55:29'),(925,' LSLGZQ',' DBEOT',' 7548141274',' eayuy@gmail.com','Mumbai','GEC Anand','2023-02-01 12:55:29'),(926,' IVPPQG',' CUPIG',' 5528619137',' crgjr@gmail.com','Valsad','GEC Anand','2023-02-01 12:55:29'),(927,' KSYUHD',' IWNFJ',' 5896866969',' wxvxb@gmail.com','Mumbai','GEC Modasa','2023-02-01 12:55:29'),(928,' PTNSXW',' FAPUM',' 6217729746',' chjxq@gmail.com','Jharkhand','GMIT Bhavnagar','2023-02-01 12:55:29'),(929,' TTRCED',' QSBVK',' 8683292686',' hiszu@gmail.com','Surat','GEC Anand','2023-02-01 12:55:29'),(930,' HDFCON',' HVNQD',' 9726161686',' lxtxi@gmail.com','Himmatnagar','GEC Anand','2023-02-01 12:55:29'),(931,' UETBPO',' ZRQEB',' 1651818671',' mcznq@gmail.com','Patan','LJIET Ahmedabad','2023-02-01 12:55:29'),(932,' TBZNLJ',' YVERT',' 6779442387',' sknuz@gmail.com','Dahod','GMIT Bhavnagar','2023-02-01 12:55:29'),(933,' VPVZFZ',' BRODX',' 4653951393',' aywwx@gmail.com','Anand','GH Patel Anand','2023-02-01 12:55:29'),(934,' DMRQAW',' NCHJE',' 5346433647',' jtlrv@gmail.com','Mehsana','GMIT Bhavnagar','2023-02-01 12:55:29'),(935,' FZWCAV',' BMOSE',' 8611986249',' bjqph@gmail.com','Gandhinagar','LJIET Ahmedabad','2023-02-01 12:55:29'),(936,' BRXPDI',' ENVEJ',' 9811424821',' hflkd@gmail.com','Mehsana','GH Patel Anand','2023-02-01 12:55:29'),(937,' YBKETD',' YNEUB',' 3164775541',' imjne@gmail.com','Modasa','LJIET Ahmedabad','2023-02-01 12:55:29'),(938,' HBLDCK',' WPQYN',' 7173898941',' owysu@gmail.com','Jharkhand','GMIT Bhavnagar','2023-02-01 12:55:29'),(939,' LDSSQE',' BFONP',' 7751941323',' pydoz@gmail.com','Gandhinagar','GMIT Bhavnagar','2023-02-01 12:55:29'),(940,' JELGBS',' DTLQB',' 5443258163',' ymwjt@gmail.com','Gandhinagar','GEC Gandhinagar','2023-02-01 12:55:29'),(941,' XPEFUA',' LILBM',' 2247321292',' ijosu@gmail.com','Vadodara','GEC Bhavnagar','2023-02-01 12:55:29'),(942,' BIMLIY',' UYZGB',' 1638974331',' hqiul@gmail.com','Mumbai','GMIT Bhavnagar','2023-02-01 12:55:29'),(943,' WPBCHB',' UBMLK',' 9681399929',' lsgwf@gmail.com','Himmatnagar','GIT Gandhinagar','2023-02-01 12:55:29'),(944,' LXHGIC',' BZOGJ',' 3882937929',' fmemi@gmail.com','Vadnagar','GEC Modasa','2023-02-01 12:55:29'),(945,' INFDZF',' KGPCH',' 9779698944',' ygthz@gmail.com','Mumbai','GEC Gandhinagar','2023-02-01 12:55:29'),(946,' FWJPRN',' GRQPL',' 2972832815',' ahubj@gmail.com','Gandhinagar','GMIT Bhavnagar','2023-02-01 12:55:29'),(947,' BASRTX',' DIQJK',' 8945113156',' ejsvc@gmail.com','Valsad','GMIT Bhavnagar','2023-02-01 12:55:29'),(948,' NMLICJ',' SALKU',' 4319719748',' ncqrw@gmail.com','Valsad','LJIET Ahmedabad','2023-02-01 12:55:29'),(949,' GARXHY',' UCPXN',' 9382597638',' lnvbw@gmail.com','Patan','GEC Modasa','2023-02-01 12:55:29'),(950,' CMTULH',' QGTUH',' 2728937259',' iapos@gmail.com','Bhavnagar','GEC Bhavnagar','2023-02-01 12:55:29'),(951,' OUFOFZ',' DRQWV',' 3979238324',' bnwbu@gmail.com','Patan','GIT Gandhinagar','2023-02-01 12:55:29'),(952,' BMVHQQ',' WCDRO',' 8535482254',' lprow@gmail.com','Modasa','GEC Modasa','2023-02-01 12:55:29'),(953,' KDCHJU',' YIRYP',' 9177285527',' ijuoh@gmail.com','Godhra','GMIT Bhavnagar','2023-02-01 12:55:29'),(954,' JVRQSC',' WDXQN',' 7552481785',' cgsrr@gmail.com','Mumbai','GEC Bhavnagar','2023-02-01 12:55:29'),(955,' DQSBQD',' AURPI',' 2328183164',' bgkqu@gmail.com','Vadnagar','GEC Bhavnagar','2023-02-01 12:55:29'),(956,' UEKEIE',' YUQZG',' 2299365612',' camzw@gmail.com','Surat','GEC Gandhinagar','2023-02-01 12:55:29'),(957,' GPAUOP',' FSWPR',' 4141641732',' ejtxw@gmail.com','Vadnagar','GEC Modasa','2023-02-01 12:55:29'),(958,' TDAZKY',' FBQJN',' 7578274146',' kvdbl@gmail.com','Gandhinagar','GH Patel Anand','2023-02-01 12:55:29'),(959,' XXXRXK',' LNFUG',' 3593739868',' hdrar@gmail.com','Vadnagar','GEC Gandhinagar','2023-02-01 12:55:29'),(960,' KLLBVL',' ADRUU',' 2158669371',' hunaj@gmail.com','Himmatnagar','GEC Modasa','2023-02-01 12:55:29'),(961,' LWFPUG',' TEAWH',' 2235368194',' sgmtn@gmail.com','Ankleshwar','GIT Gandhinagar','2023-02-01 12:55:29'),(962,' APVWCU',' MLXWZ',' 8532655298',' ncbdy@gmail.com','Patan','GIT Gandhinagar','2023-02-01 12:55:29'),(963,' BYCPYQ',' MJHYK',' 4538522143',' wjntp@gmail.com','Dahod','GIT Gandhinagar','2023-02-01 12:55:29'),(964,' WGGESJ',' TBNES',' 4823421855',' gavky@gmail.com','Lunavada','GEC Bhavnagar','2023-02-01 12:55:29'),(965,' WTQFUX',' BMGAD',' 8235756453',' gqpye@gmail.com','Bhavnagar','GEC Bhavnagar','2023-02-01 12:55:29'),(966,' FTFBJX',' NGBMX',' 4837796687',' wgocl@gmail.com','Patan','LJIET Ahmedabad','2023-02-01 12:55:29'),(967,' WOYRJV',' HZDZI',' 5178891245',' nruxl@gmail.com','Gandhinagar','GEC Bhavnagar','2023-02-01 12:55:29'),(968,' AJNSAM',' CNERK',' 7233395451',' bxsrt@gmail.com','Gandhinagar','GEC Gandhinagar','2023-02-01 12:55:29'),(969,' MILHVT',' PDDIS',' 2285116651',' xjysr@gmail.com','Ankleshwar','GH Patel Anand','2023-02-01 12:55:29'),(970,' WMVDNC',' DQOQU',' 7195394853',' vmjch@gmail.com','Dahod','GH Patel Anand','2023-02-01 12:55:29'),(971,' JVHGCF',' CROOE',' 5143539187',' mpnlb@gmail.com','Ahmedabad','GEC Anand','2023-02-01 12:55:29'),(972,' XFHVKQ',' UILAG',' 4587592642',' igiyp@gmail.com','Anand','GEC Gandhinagar','2023-02-01 12:55:29'),(973,' KVWSQY',' LCYXN',' 6612339992',' qusuh@gmail.com','Anand','GEC Bhavnagar','2023-02-01 12:55:29'),(974,' VTMANF',' USVRH',' 3165975816',' zrzdc@gmail.com','Jharkhand','GEC Bhavnagar','2023-02-01 12:55:29'),(975,' KINJOX',' MBSQI',' 5468486548',' advjk@gmail.com','Ankleshwar','GIT Gandhinagar','2023-02-01 12:55:29'),(976,' XGPYFH',' JVXEI',' 7688255431',' awxes@gmail.com','Ankleshwar','GIT Gandhinagar','2023-02-01 12:55:29'),(977,' IRJXYQ',' CGOZM',' 3765998573',' bcxcx@gmail.com','Jaipur','GH Patel Anand','2023-02-01 12:55:29'),(978,' IUJDXW',' XNAGW',' 3285672888',' dygfi@gmail.com','Mumbai','GEC Anand','2023-02-01 12:55:29'),(979,' YEUABT',' QBWEE',' 2852729645',' xicyx@gmail.com','Dahod','GIT Gandhinagar','2023-02-01 12:55:29'),(980,' KMVFOE',' NCZEA',' 9642229539',' fzxzy@gmail.com','Dahod','LJIET Ahmedabad','2023-02-01 12:55:29'),(981,' CNOWNW',' CJHAH',' 8319128184',' ggmfc@gmail.com','Lunavada','GEC Gandhinagar','2023-02-01 12:55:29'),(982,' EVXBUH',' GDSEX',' 8421269785',' ohvfo@gmail.com','Gandhinagar','GIT Gandhinagar','2023-02-01 12:55:29'),(983,' ZNOUHH',' ILYHW',' 4476281475',' nranl@gmail.com','Gandhinagar','LJIET Ahmedabad','2023-02-01 12:55:29'),(984,' GOZSQP',' AWRZV',' 6465837787',' ckbtb@gmail.com','Anand','GMIT Bhavnagar','2023-02-01 12:55:29'),(985,' VPCVTF',' PLQDR',' 3461437957',' jpknp@gmail.com','Ankleshwar','GEC Anand','2023-02-01 12:55:29'),(986,' OTFJPM',' PXLMR',' 7252942293',' qrdpe@gmail.com','Valsad','LJIET Ahmedabad','2023-02-01 12:55:29'),(987,' OORIGG',' HCLVC',' 7778674227',' mcfvd@gmail.com','Jaipur','GEC Bhavnagar','2023-02-01 12:55:29'),(988,' TWTGKG',' OQQTD',' 2293424866',' mkbez@gmail.com','Lunavada','GEC Gandhinagar','2023-02-01 12:55:29'),(989,' TABSUY',' XIMVN',' 4551441813',' bhvua@gmail.com','Ankleshwar','GEC Anand','2023-02-01 12:55:29'),(990,' IGUBRB',' JENMG',' 8498883942',' ilyeg@gmail.com','Valsad','GIT Gandhinagar','2023-02-01 12:55:29'),(991,' QQGRTT',' YLRVL',' 2832615528',' kjguc@gmail.com','Surat','GEC Gandhinagar','2023-02-01 12:55:29'),(992,' GTIMWS',' LOGUE',' 2349162287',' syaox@gmail.com','Ahmedabad','GH Patel Anand','2023-02-01 12:55:29'),(993,' TPMQLE',' VENKL',' 2269656488',' yizii@gmail.com','Himmatnagar','GEC Modasa','2023-02-01 12:55:29'),(994,' YVPVFE',' DZVRJ',' 8412332483',' flqmb@gmail.com','Surat','GH Patel Anand','2023-02-01 12:55:29'),(995,' HRDGZL',' PZYDE',' 1343321587',' maflf@gmail.com','Idar','GIT Gandhinagar','2023-02-01 12:55:29'),(996,' KZNPRR',' TWMKN',' 6647313471',' kiuwq@gmail.com','Godhra','GIT Gandhinagar','2023-02-01 12:55:29'),(997,' BFTSVK',' ILCBX',' 6712583799',' hveyx@gmail.com','Vadodara','GMIT Bhavnagar','2023-02-01 12:55:29'),(998,' NHHICD',' PMHQG',' 7268263579',' enjkd@gmail.com','Vadnagar','LJIET Ahmedabad','2023-02-01 12:55:29'),(999,' FPDLNT',' JSEZT',' 9688781351',' uujex@gmail.com','Patan','LJIET Ahmedabad','2023-02-01 12:55:29'),(1000,' DLLKZR',' QRMWJ',' 1646374378',' rpcyl@gmail.com','Patan','GEC Gandhinagar','2023-02-01 12:55:29'),(1001,' BBTSZS',' JCESH',' 7285825189',' gkonx@gmail.com','Idar','GMIT Bhavnagar','2023-02-01 12:55:29'),(1002,' NSFLCA',' JUFMP',' 9749413425',' pzogn@gmail.com','Ahmedabad','GEC Anand','2023-02-01 12:55:29'),(1003,' AQBJIG',' RZYQL',' 2885432151',' taith@gmail.com','Modasa','LJIET Ahmedabad','2023-02-01 12:55:29'),(1004,' BAYINK',' AEUYV',' 5343768496',' acfsh@gmail.com','Jaipur','GEC Gandhinagar','2023-02-01 12:55:29'),(1005,' RBPACA',' MDSZK',' 4311914836',' kumvb@gmail.com','Modasa','GMIT Bhavnagar','2023-02-01 12:55:29'),(1006,' GKVGBI',' HAOBA',' 6741979338',' mjxqd@gmail.com','Mehsana','GMIT Bhavnagar','2023-02-01 12:55:29'),(1007,' WIHCYW',' MVGGF',' 6145157965',' fgmeg@gmail.com','Gandhinagar','LJIET Ahmedabad','2023-02-01 12:55:29'),(1008,' VJUCXE',' VSHTC',' 4687942442',' ruypy@gmail.com','Patan','GEC Modasa','2023-02-01 12:55:29'),(1009,' GCGTQJ',' IZMSL',' 1552647315',' voanc@gmail.com','Anand','GEC Gandhinagar','2023-02-01 12:55:29'),(1010,' CCRIQL',' HKWFM',' 4851352487',' gfkdb@gmail.com','Ahmedabad','GIT Gandhinagar','2023-02-01 12:55:29'),(1011,' SMKKUD',' ASMUW',' 9234832418',' davus@gmail.com','Lunavada','GEC Gandhinagar','2023-02-01 12:55:29'),(1012,' UODRWT',' YZSQO',' 9531285934',' xpydo@gmail.com','Valsad','LJIET Ahmedabad','2023-02-01 12:55:29'),(1013,' MBQLMJ',' MFFXM',' 4959258167',' itoyh@gmail.com','Patan','GMIT Bhavnagar','2023-02-01 12:55:29'),(1014,' NAXJMQ',' KWCRT',' 2652297932',' tibfl@gmail.com','Himmatnagar','GEC Anand','2023-02-01 12:55:29'),(1015,' WDFCAD',' LSTWO',' 7332235613',' zboxb@gmail.com','Himmatnagar','LJIET Ahmedabad','2023-02-01 12:55:29'),(1016,' HDWCUE',' DANGU',' 3171326529',' ewkgb@gmail.com','Gandhinagar','GIT Gandhinagar','2023-02-01 12:55:29'),(1017,' OPACCR',' UGZZC',' 1733691256',' efamk@gmail.com','Modasa','GEC Anand','2023-02-01 12:55:29'),(1018,' LPRLHW',' XQHBL',' 7116942388',' dugfl@gmail.com','Ankleshwar','GH Patel Anand','2023-02-01 12:55:29'),(1019,' PVSNOQ',' XAPWS',' 2637791924',' boilt@gmail.com','Patan','GEC Bhavnagar','2023-02-01 12:55:29'),(1020,' TGSFUJ',' ANHCU',' 8751291359',' eobsl@gmail.com','Valsad','GEC Anand','2023-02-01 12:55:29'),(1021,' VLMCDS',' UXDJM',' 9165978329',' mtiwk@gmail.com','Jharkhand','GEC Gandhinagar','2023-02-01 12:55:29'),(1022,' TKEKRG',' DLFRQ',' 1152116872',' gwjva@gmail.com','Jaipur','LJIET Ahmedabad','2023-02-01 12:55:29'),(1023,' DAQSHP',' JOQMZ',' 1486389961',' podtb@gmail.com','Bhavnagar','GEC Bhavnagar','2023-02-01 12:55:29'),(1024,' BAFPYL',' GDWST',' 5864987167',' aplfn@gmail.com','Modasa','GMIT Bhavnagar','2023-02-01 12:55:29'),(1025,' DWVKGK',' CBFER',' 8357953243',' jreol@gmail.com','Mehsana','GEC Gandhinagar','2023-02-01 12:55:29'),(1026,' XMEPTY',' TDSUO',' 1851759682',' lwdqw@gmail.com','Valsad','GMIT Bhavnagar','2023-02-01 12:55:29'),(1027,' FTAVFA',' NJPBM',' 7592249575',' vdsbv@gmail.com','Dahod','LJIET Ahmedabad','2023-02-01 12:55:29'),(1028,' LRFJSK',' HCRBG',' 5623632491',' aclqe@gmail.com','Vadodara','GEC Anand','2023-02-01 12:55:29'),(1029,' GRREJF',' NXJNO',' 5343565151',' aztzm@gmail.com','Ahmedabad','GEC Anand','2023-02-01 12:55:29'),(1030,' RWORIJ',' VIJJH',' 5617322147',' bdbtk@gmail.com','Idar','LJIET Ahmedabad','2023-02-01 12:55:29'),(1031,' QXNZMJ',' CSXKP',' 6544338988',' fczea@gmail.com','Mehsana','GIT Gandhinagar','2023-02-01 12:55:29'),(1032,' ICJVSF',' PDDBY',' 2696537798',' wyhel@gmail.com','Ahmedabad','GEC Bhavnagar','2023-02-01 12:55:29'),(1033,' ZATVJT',' CHVBJ',' 4862987486',' kpbdx@gmail.com','Valsad','GMIT Bhavnagar','2023-02-01 12:55:29'),(1034,' OXCHYJ',' NGITK',' 8193571852',' ryelj@gmail.com','Ankleshwar','GIT Gandhinagar','2023-02-01 12:55:29'),(1035,' HERBQI',' NBQTD',' 2365372462',' jsyls@gmail.com','Mehsana','GEC Anand','2023-02-01 12:55:29'),(1036,' STIUDF',' OMMAL',' 9139486547',' avqsa@gmail.com','Ankleshwar','GMIT Bhavnagar','2023-02-01 12:55:29'),(1037,' FWSWPS',' SCKTI',' 4867461889',' irxon@gmail.com','Dahod','GIT Gandhinagar','2023-02-01 12:55:29'),(1038,' SOLWDA',' IZCJB',' 4744365443',' kytbp@gmail.com','Ankleshwar','GIT Gandhinagar','2023-02-01 12:55:29'),(1039,' JTZIHT',' GPXFG',' 6226864931',' zliit@gmail.com','Ahmedabad','GEC Gandhinagar','2023-02-01 12:55:29'),(1040,' IQKMZF',' BIOYC',' 4126766674',' mhpid@gmail.com','Patan','GEC Anand','2023-02-01 12:55:29'),(1041,' NYFBWS',' QUQOC',' 5691679957',' kxwod@gmail.com','Mumbai','LJIET Ahmedabad','2023-02-01 12:55:29'),(1042,' HVVSKC',' YUMXC',' 2594114917',' alvmd@gmail.com','Idar','GH Patel Anand','2023-02-01 12:55:29'),(1043,' INFBOS',' VLGBP',' 2153858525',' dqgte@gmail.com','Jharkhand','GEC Gandhinagar','2023-02-01 12:55:29'),(1044,' ZRAMIN',' DJNXX',' 8222668638',' rjwel@gmail.com','Lunavada','GEC Modasa','2023-02-01 12:55:29'),(1045,' ALFLIS',' YQXKA',' 7662313194',' vcmmq@gmail.com','Jharkhand','GEC Modasa','2023-02-01 12:55:29'),(1046,' UUTDGS',' DONXP',' 7897386526',' ircuj@gmail.com','Jharkhand','GEC Gandhinagar','2023-02-01 12:55:29'),(1047,' PHRKHU',' YFGEV',' 5195474926',' qamnw@gmail.com','Anand','GMIT Bhavnagar','2023-02-01 12:55:29'),(1048,' XRZMLL',' GFWJL',' 8821514514',' rszco@gmail.com','Idar','GIT Gandhinagar','2023-02-01 12:55:29'),(1049,' KJXNVX',' BOLVV',' 5599596187',' tmtod@gmail.com','Valsad','GEC Modasa','2023-02-01 12:55:29'),(1050,' XWHZDL',' UUAGO',' 7462639847',' zpndr@gmail.com','Mumbai','GIT Gandhinagar','2023-02-01 12:55:29'),(1051,' PDZXIU',' RJVFN',' 3386913429',' bqqkx@gmail.com','Idar','GEC Gandhinagar','2023-02-01 12:55:29'),(1052,' EWHWSB',' AVGDY',' 7178321976',' bmgbt@gmail.com','Modasa','GEC Modasa','2023-02-01 12:55:29'),(1053,' WGVBZH',' BDQTD',' 2289726677',' zyutq@gmail.com','Patan','GMIT Bhavnagar','2023-02-01 12:55:29'),(1054,' AGWTHN',' QBIES',' 1892825361',' pqyei@gmail.com','Gandhinagar','GH Patel Anand','2023-02-01 12:55:29'),(1055,' YIFXPW',' BTKGP',' 4376961828',' qvtxd@gmail.com','Vadodara','GMIT Bhavnagar','2023-02-01 12:55:29'),(1056,' EWJFPU',' NGTMY',' 6444282739',' keuuh@gmail.com','Godhra','GH Patel Anand','2023-02-01 12:55:29'),(1057,' CYPHXW',' OJGER',' 9167768686',' qaele@gmail.com','Himmatnagar','GEC Bhavnagar','2023-02-01 12:55:29'),(1058,' TXLPGS',' VMZPI',' 7612584919',' damjr@gmail.com','Patan','GIT Gandhinagar','2023-02-01 12:55:29'),(1059,' UEMJCE',' PQXTU',' 6131643846',' ixlit@gmail.com','Godhra','LJIET Ahmedabad','2023-02-01 12:55:29'),(1060,' APHLPO',' LEDWV',' 2718818987',' elclz@gmail.com','Modasa','GEC Modasa','2023-02-01 12:55:29'),(1061,' UEBEYW',' HIGZS',' 3399927439',' nwenq@gmail.com','Modasa','GMIT Bhavnagar','2023-02-01 12:55:29'),(1062,' CIEKSY',' URLAW',' 3761738829',' qppdo@gmail.com','Himmatnagar','GEC Gandhinagar','2023-02-01 12:55:29'),(1063,' CEWNUU',' DQEJT',' 7993236314',' katip@gmail.com','Patan','GIT Gandhinagar','2023-02-01 12:55:29'),(1064,' LIHQUN',' BQVUR',' 9649216923',' nrlyr@gmail.com','Vadodara','LJIET Ahmedabad','2023-02-01 12:55:29'),(1065,' SRSRAL',' EPKGL',' 6785876151',' jtmza@gmail.com','Bhavnagar','GIT Gandhinagar','2023-02-01 12:55:29'),(1066,' WPCBBI',' IIEQD',' 9727784399',' nsslg@gmail.com','Mehsana','GEC Bhavnagar','2023-02-01 12:55:29'),(1067,' LKLBNX',' PAJAG',' 9829688526',' sxjui@gmail.com','Ankleshwar','GH Patel Anand','2023-02-01 12:55:29'),(1068,' DBQMJE',' LFLAH',' 1532579615',' oglxj@gmail.com','Godhra','GH Patel Anand','2023-02-01 12:55:29'),(1069,' ICPLQR',' XWLRN',' 5663492181',' aforc@gmail.com','Ankleshwar','GMIT Bhavnagar','2023-02-01 12:55:29'),(1070,' NGMBFP',' GWYPL',' 7692115764',' eofkg@gmail.com','Vadnagar','GH Patel Anand','2023-02-01 12:55:29'),(1071,' WVRINL',' HNDGD',' 1662259676',' mbmsn@gmail.com','Anand','GIT Gandhinagar','2023-02-01 12:55:29'),(1072,' JMUOVX',' NPBHB',' 9256528215',' czpry@gmail.com','Ahmedabad','GMIT Bhavnagar','2023-02-01 12:55:29'),(1073,' AVQTMH',' RKBZI',' 9124151282',' zhvoc@gmail.com','Ankleshwar','GH Patel Anand','2023-02-01 12:55:29'),(1074,' PEEAWS',' KTHES',' 7942991618',' omcpl@gmail.com','Vadodara','LJIET Ahmedabad','2023-02-01 12:55:29'),(1075,' EPYUCV',' QLATV',' 5674583713',' kfgkr@gmail.com','Ahmedabad','GIT Gandhinagar','2023-02-01 12:55:29'),(1076,' VMPWIL',' ULQSR',' 2484394671',' zihlg@gmail.com','Mehsana','GH Patel Anand','2023-02-01 12:55:29'),(1077,' HXIEWS',' QUMOP',' 7425373572',' yfwuj@gmail.com','Jaipur','GEC Gandhinagar','2023-02-01 12:55:29'),(1078,' PTTBKA',' CNMSC',' 9853774912',' jrjoa@gmail.com','Bhavnagar','GIT Gandhinagar','2023-02-01 12:55:29'),(1079,' PQVPRD',' PJDMT',' 4318345995',' lhmdb@gmail.com','Vadnagar','GIT Gandhinagar','2023-02-01 12:55:29'),(1080,' KVUZXW',' MZZFQ',' 8479174721',' sswss@gmail.com','Vadnagar','GEC Anand','2023-02-01 12:55:29'),(1081,' HSWRZN',' ELPRR',' 5141323937',' qkvan@gmail.com','Jharkhand','GEC Gandhinagar','2023-02-01 12:55:29'),(1082,' JDORXL',' KVTZC',' 3415324597',' khojg@gmail.com','Mehsana','GEC Gandhinagar','2023-02-01 12:55:29'),(1083,' VCSXNW',' CGBMO',' 6714669457',' qwomu@gmail.com','Godhra','GH Patel Anand','2023-02-01 12:55:29'),(1084,' ZXPUCE',' CLZML',' 8828873467',' xrcyb@gmail.com','Dahod','GH Patel Anand','2023-02-01 12:55:29'),(1085,' AXDESJ',' AGGDP',' 5458517167',' prehx@gmail.com','Godhra','GEC Anand','2023-02-01 12:55:29'),(1086,' LFYANE',' DPVIO',' 7273713922',' tzsvm@gmail.com','Lunavada','GEC Anand','2023-02-01 12:55:29'),(1087,' OCMPPX',' UGLTG',' 4966528317',' mbvoj@gmail.com','Valsad','GIT Gandhinagar','2023-02-01 12:55:29'),(1088,' GWAAXI',' DKYXM',' 9743795667',' cjfre@gmail.com','Vadnagar','GEC Modasa','2023-02-01 12:55:29'),(1089,' EWVATI',' DBVPJ',' 1825736461',' demrh@gmail.com','Patan','GEC Anand','2023-02-01 12:55:29'),(1090,' TFZBLM',' BCOUJ',' 9151141978',' lgobq@gmail.com','Patan','GEC Anand','2023-02-01 12:55:29'),(1091,' BMAIJU',' NTWWA',' 5751857999',' xnqze@gmail.com','Gandhinagar','LJIET Ahmedabad','2023-02-01 12:55:29'),(1092,' AMLLJA',' UNFBT',' 6449461377',' yvcep@gmail.com','Patan','GEC Modasa','2023-02-01 12:55:29'),(1093,' YSGODW',' GTCLE',' 2293973155',' eqeqx@gmail.com','Mehsana','GEC Modasa','2023-02-01 12:55:29'),(1094,' SIZTXT',' LVKZC',' 5732457751',' lukws@gmail.com','Jharkhand','GH Patel Anand','2023-02-01 12:55:29'),(1095,' SPZRII',' ETRAA',' 9896392483',' oqnyp@gmail.com','Vadodara','GEC Gandhinagar','2023-02-01 12:55:29'),(1096,' KXLQNH',' VWKYR',' 6136545253',' unxrd@gmail.com','Ahmedabad','GEC Anand','2023-02-01 12:55:29'),(1097,' JEVOKF',' RMQTI',' 9333149794',' xeqnw@gmail.com','Idar','GMIT Bhavnagar','2023-02-01 12:55:29'),(1098,' STJTPY',' ZCNVV',' 5598155297',' ojrjj@gmail.com','Vadnagar','GEC Gandhinagar','2023-02-01 12:55:29'),(1099,' NWQZBH',' ZSPQU',' 7961347841',' mheez@gmail.com','Dahod','GEC Modasa','2023-02-01 12:55:29'),(1100,' MEEWVQ',' CPVXG',' 4893241282',' iungr@gmail.com','Ankleshwar','GEC Gandhinagar','2023-02-01 12:55:29'),(1101,' XFWARA',' WUJMU',' 2293137711',' edymm@gmail.com','Anand','GIT Gandhinagar','2023-02-01 12:55:29'),(1102,' YAYPVO',' RHJGC',' 8767194527',' qasll@gmail.com','Bhavnagar','GMIT Bhavnagar','2023-02-01 12:55:29'),(1103,' ZQVVUW',' PFBQM',' 7918483583',' ezhse@gmail.com','Surat','GEC Bhavnagar','2023-02-01 12:55:29'),(1104,' RJTAWL',' JQEOB',' 6451367424',' tdbnm@gmail.com','Jharkhand','GH Patel Anand','2023-02-01 12:55:29'),(1105,' DHIPQB',' XFIPE',' 6732422624',' ctezc@gmail.com','Lunavada','GMIT Bhavnagar','2023-02-01 12:55:29'),(1106,' CTVJWR',' TFZFQ',' 2447598194',' ykfwa@gmail.com','Mumbai','GEC Bhavnagar','2023-02-01 12:55:29'),(1107,' TGVQCQ',' WKKIJ',' 9599355359',' faayg@gmail.com','Anand','GIT Gandhinagar','2023-02-01 12:55:29'),(1108,' OSRLUD',' PTLPX',' 2422251955',' yqwat@gmail.com','Gandhinagar','GIT Gandhinagar','2023-02-01 12:55:29'),(1109,' FLMIGN',' GIKRB',' 8733369891',' nkkgt@gmail.com','Ankleshwar','GIT Gandhinagar','2023-02-01 12:55:29'),(1110,' WALWVE',' EFXFG',' 9231331758',' dxrwo@gmail.com','Ankleshwar','GEC Modasa','2023-02-01 12:55:29'),(1111,' MLSJPH',' AVMYS',' 9457113641',' spkek@gmail.com','Anand','GMIT Bhavnagar','2023-02-01 12:55:29'),(1112,' AXSWRE',' TMPIA',' 8395961888',' ujelf@gmail.com','Godhra','GEC Gandhinagar','2023-02-01 12:55:29'),(1113,' QJDXXT',' TYFFK',' 9582383165',' folnf@gmail.com','Valsad','GEC Anand','2023-02-01 12:55:29'),(1114,' WCZCQA',' DXFKO',' 7863352816',' lfeyb@gmail.com','Patan','LJIET Ahmedabad','2023-02-01 12:55:29'),(1115,' UMBDLX',' VLHJK',' 3517843824',' coxtw@gmail.com','Vadnagar','LJIET Ahmedabad','2023-02-01 12:55:29'),(1116,' RLJGTG',' AZBUR',' 8843948584',' rmwgn@gmail.com','Gandhinagar','GH Patel Anand','2023-02-01 12:55:29'),(1117,' EODWBP',' ZETAN',' 4348779667',' tjidb@gmail.com','Valsad','GEC Anand','2023-02-01 12:55:29'),(1118,' CJOKUO',' BJFNJ',' 8676918527',' pakfq@gmail.com','Mumbai','LJIET Ahmedabad','2023-02-01 12:55:29'),(1119,' BTXNVB',' JHTFI',' 6983467157',' rlzhp@gmail.com','Anand','GMIT Bhavnagar','2023-02-01 12:55:29'),(1120,' KDMKQX',' GGOEG',' 8216588382',' nbrqc@gmail.com','Vadodara','GEC Gandhinagar','2023-02-01 12:55:29'),(1121,' IRXRVU',' YFEBI',' 9482143747',' yvmpe@gmail.com','Ahmedabad','GIT Gandhinagar','2023-02-01 12:55:29'),(1122,' SHBELK',' LDNIT',' 8993493262',' lysmr@gmail.com','Jharkhand','GH Patel Anand','2023-02-01 12:55:29'),(1123,' RYOCHN',' OXDWQ',' 1887375584',' mfenr@gmail.com','Vadnagar','GMIT Bhavnagar','2023-02-01 12:55:29'),(1124,' EYXQEM',' OGOUA',' 5568281873',' owvmu@gmail.com','Vadnagar','GEC Modasa','2023-02-01 12:55:29'),(1125,' JXJBCA',' YQFIH',' 4891518997',' tvqim@gmail.com','Ahmedabad','GEC Anand','2023-02-01 12:55:29'),(1126,' DLNXJL',' BMOUI',' 4477856252',' etgpt@gmail.com','Ahmedabad','GEC Modasa','2023-02-01 12:55:29'),(1127,' KTAAUQ',' AVSKR',' 4975111342',' sksaf@gmail.com','Anand','GIT Gandhinagar','2023-02-01 12:55:29'),(1128,' QIAWYC',' ZMCNX',' 7538888785',' zdzuj@gmail.com','Lunavada','GIT Gandhinagar','2023-02-01 12:55:29'),(1129,' TMQQAW',' HCGGX',' 6366287142',' dqmin@gmail.com','Modasa','GH Patel Anand','2023-02-01 12:55:29'),(1130,' GKLVLE',' RWFBM',' 3393361172',' bkoyy@gmail.com','Ahmedabad','GEC Anand','2023-02-01 12:55:29'),(1131,' AQWFUD',' LWKUL',' 2922447167',' vtnut@gmail.com','Jaipur','GMIT Bhavnagar','2023-02-01 12:55:29'),(1132,' FIGDEQ',' FRJOG',' 1857243118',' cyama@gmail.com','Valsad','GEC Gandhinagar','2023-02-01 12:55:29'),(1133,' LWGRNL',' IPLSS',' 7371285724',' bdonj@gmail.com','Bhavnagar','GEC Gandhinagar','2023-02-01 12:55:29'),(1134,' YLKLUE',' KLCNJ',' 1263568472',' rrcub@gmail.com','Jharkhand','LJIET Ahmedabad','2023-02-01 12:55:29'),(1135,' RFHLOA',' ASROE',' 9343966334',' vldpe@gmail.com','Jaipur','GEC Gandhinagar','2023-02-01 12:55:29'),(1136,' VKFBAR',' NKFPO',' 8815751516',' drjux@gmail.com','Jaipur','GEC Gandhinagar','2023-02-01 12:55:29'),(1137,' BRSFMT',' GKILJ',' 5539163888',' vyxre@gmail.com','Anand','GEC Gandhinagar','2023-02-01 12:55:29'),(1138,' NEOOJD',' BMQZD',' 8353795292',' mdyrv@gmail.com','Valsad','GEC Modasa','2023-02-01 12:55:29'),(1139,' NZIHSE',' MLZGL',' 6489269236',' sjioh@gmail.com','Bhavnagar','LJIET Ahmedabad','2023-02-01 12:55:29'),(1140,' UYSOOY',' UYLGI',' 2197291667',' biljj@gmail.com','Lunavada','LJIET Ahmedabad','2023-02-01 12:55:29'),(1141,' ECUUMY',' ICIIX',' 4413964983',' lvnmu@gmail.com','Gandhinagar','GEC Bhavnagar','2023-02-01 12:55:29'),(1142,' HFOKGE',' STDRN',' 6427127887',' lbijd@gmail.com','Bhavnagar','GIT Gandhinagar','2023-02-01 12:55:29'),(1143,' TMHWWK',' SUCHM',' 4124756221',' edtaa@gmail.com','Jharkhand','GEC Gandhinagar','2023-02-01 12:55:29'),(1144,' KCDHRT',' PVCGN',' 7396715347',' ffzov@gmail.com','Mumbai','GEC Modasa','2023-02-01 12:55:29'),(1145,' TWETOP',' IBSXU',' 3735166146',' igjsk@gmail.com','Ankleshwar','LJIET Ahmedabad','2023-02-01 12:55:29'),(1146,' JMQLUN',' SSGRL',' 9162555995',' uxtrr@gmail.com','Patan','GEC Modasa','2023-02-01 12:55:29'),(1147,' ZTTUZR',' ILSRI',' 6342427994',' xwkwl@gmail.com','Jaipur','LJIET Ahmedabad','2023-02-01 12:55:29'),(1148,' YSTBXC',' XWIPH',' 2129654916',' whwro@gmail.com','Jharkhand','GMIT Bhavnagar','2023-02-01 12:55:29'),(1149,' SELFIG',' TSTTV',' 6635777477',' xjaea@gmail.com','Mehsana','GEC Anand','2023-02-01 12:55:29'),(1150,' TYTEWR',' DHKVL',' 3712636462',' pfxdz@gmail.com','Jaipur','GEC Modasa','2023-02-01 12:55:29'),(1151,' EFAMHS',' LVVDI',' 5126266598',' nmpzw@gmail.com','Mehsana','GIT Gandhinagar','2023-02-01 12:55:29'),(1152,' XKJHLV',' ORZGO',' 4627971235',' qvlqf@gmail.com','Bhavnagar','GEC Bhavnagar','2023-02-01 12:55:29'),(1153,' JBKUIE',' NTZNX',' 3838936363',' buzvg@gmail.com','Himmatnagar','GEC Anand','2023-02-01 12:55:29'),(1154,' FIHHIL',' LEYKY',' 1453336582',' cyrdq@gmail.com','Ahmedabad','GEC Modasa','2023-02-01 12:55:29'),(1155,' HFHIHO',' XQXZT',' 5369832699',' tjqlj@gmail.com','Godhra','GEC Bhavnagar','2023-02-01 12:55:29'),(1156,' DZFIKG',' WHCTR',' 4747144949',' wmylw@gmail.com','Ahmedabad','GEC Anand','2023-02-01 12:55:29'),(1157,' EKJIWO',' AFJIO',' 6414774638',' nxccb@gmail.com','Jharkhand','GIT Gandhinagar','2023-02-01 12:55:29'),(1158,' HKAITI',' OMIWK',' 5263448329',' grspb@gmail.com','Idar','GIT Gandhinagar','2023-02-01 12:55:29'),(1159,' DQBDEI',' IUEQE',' 7137413574',' bkchp@gmail.com','Idar','GMIT Bhavnagar','2023-02-01 12:55:29'),(1160,' QJKIFM',' LHOGX',' 5548616719',' njgjt@gmail.com','Jharkhand','LJIET Ahmedabad','2023-02-01 12:55:29'),(1161,' REEXLK',' PRAAV',' 1262527772',' mavjf@gmail.com','Anand','GEC Modasa','2023-02-01 12:55:29'),(1162,' BSNPSJ',' UHHFN',' 6424168621',' fnfia@gmail.com','Lunavada','GMIT Bhavnagar','2023-02-01 12:55:29'),(1163,' QVBTLB',' DMJHB',' 6482455178',' nmnzj@gmail.com','Godhra','GEC Gandhinagar','2023-02-01 12:55:29'),(1164,' EAOKAR',' TUYEH',' 8494228693',' qtkcb@gmail.com','Modasa','GEC Bhavnagar','2023-02-01 12:55:29'),(1165,' TGWVKF',' QRFXT',' 2241161574',' ohbse@gmail.com','Jharkhand','GEC Bhavnagar','2023-02-01 12:55:29'),(1166,' IDJBTQ',' IRZIR',' 4447477594',' gvzyo@gmail.com','Bhavnagar','LJIET Ahmedabad','2023-02-01 12:55:29'),(1167,' SPMFXN',' LAPFL',' 6166378526',' tximo@gmail.com','Dahod','LJIET Ahmedabad','2023-02-01 12:55:29'),(1168,' FYILIR',' RJFST',' 3676996848',' yuyeg@gmail.com','Himmatnagar','GIT Gandhinagar','2023-02-01 12:55:29'),(1169,' QXPITR',' UTJKV',' 1332397298',' miyxw@gmail.com','Gandhinagar','GEC Modasa','2023-02-01 12:55:29'),(1170,' KWNWRX',' OWUTW',' 8666528316',' gcvlw@gmail.com','Mumbai','GEC Bhavnagar','2023-02-01 12:55:29'),(1171,' AAZPWM',' WCWUC',' 5235151994',' lahjn@gmail.com','Gandhinagar','GEC Gandhinagar','2023-02-01 12:55:29'),(1172,' XKNPPC',' KAQNO',' 6551681554',' qijre@gmail.com','Idar','GEC Anand','2023-02-01 12:55:29'),(1173,' XBEOHU',' EKMLJ',' 2486634867',' pgkih@gmail.com','Valsad','GIT Gandhinagar','2023-02-01 12:55:29'),(1174,' LGDWQW',' HNIET',' 8262267595',' hknrt@gmail.com','Modasa','GEC Bhavnagar','2023-02-01 12:55:29'),(1175,' QMKKPS',' OWZIS',' 9583921462',' sqggj@gmail.com','Dahod','LJIET Ahmedabad','2023-02-01 12:55:29'),(1176,' POJBBM',' GJMDD',' 1171782194',' eoppy@gmail.com','Jharkhand','GEC Bhavnagar','2023-02-01 12:55:29'),(1177,' NHQCXZ',' VCFYR',' 9423187288',' xevdu@gmail.com','Surat','GIT Gandhinagar','2023-02-01 12:55:29'),(1178,' XFBCMM',' NXNMG',' 4147643813',' fgphg@gmail.com','Valsad','GH Patel Anand','2023-02-01 12:55:29'),(1179,' KIAHGX',' BCHZD',' 2548254373',' kxkxg@gmail.com','Bhavnagar','GMIT Bhavnagar','2023-02-01 12:55:29'),(1180,' OBKUXH',' OUMBD',' 3822875972',' wupcp@gmail.com','Vadnagar','LJIET Ahmedabad','2023-02-01 12:55:29'),(1181,' TNNQIL',' EIJPO',' 5276533513',' peayp@gmail.com','Ahmedabad','GEC Anand','2023-02-01 12:55:29'),(1182,' PGARVS',' HHUBZ',' 7374624176',' obbay@gmail.com','Bhavnagar','GEC Modasa','2023-02-01 12:55:29'),(1183,' LDJGPU',' QHCWY',' 5775579267',' kysdg@gmail.com','Vadodara','LJIET Ahmedabad','2023-02-01 12:55:29'),(1184,' SJJDFW',' KFITC',' 2249167719',' sntvr@gmail.com','Gandhinagar','GIT Gandhinagar','2023-02-01 12:55:29'),(1185,' RJWEHP',' YHTAL',' 6951895695',' eqzsm@gmail.com','Himmatnagar','GEC Modasa','2023-02-01 12:55:29'),(1186,' QHICIJ',' YTKON',' 9552143848',' ectjq@gmail.com','Mehsana','GEC Modasa','2023-02-01 12:55:29'),(1187,' FURKRQ',' CMNVJ',' 8235477124',' rvczj@gmail.com','Modasa','GEC Anand','2023-02-01 12:55:29'),(1188,' EVHSEH',' TJDDH',' 2825773835',' ifkci@gmail.com','Anand','GH Patel Anand','2023-02-01 12:55:29'),(1189,' ATSAXZ',' TFGXF',' 9189348456',' scjfe@gmail.com','Lunavada','LJIET Ahmedabad','2023-02-01 12:55:29'),(1190,' MHGUXO',' TSMCU',' 7135181631',' yzyuu@gmail.com','Idar','GH Patel Anand','2023-02-01 12:55:29'),(1191,' APVEDU',' XZZBS',' 7867323298',' yjeen@gmail.com','Gandhinagar','GMIT Bhavnagar','2023-02-01 12:55:29'),(1192,' WSFVEZ',' OOGIA',' 8417855833',' wmboj@gmail.com','Vadnagar','GEC Gandhinagar','2023-02-01 12:55:29'),(1193,' VGXGBB',' UUJGU',' 9684832245',' bntpk@gmail.com','Patan','GH Patel Anand','2023-02-01 12:55:29'),(1194,' VZCIGQ',' EJSPI',' 4178195637',' spjex@gmail.com','Patan','GEC Bhavnagar','2023-02-01 12:55:29'),(1195,' RNBYAI',' OHMVJ',' 6366988826',' srfuu@gmail.com','Modasa','GIT Gandhinagar','2023-02-01 12:55:29'),(1196,' KAUHQJ',' WXFVA',' 4552946671',' yfeku@gmail.com','Vadodara','GEC Modasa','2023-02-01 12:55:29'),(1197,' JGPIFP',' INCKR',' 2811933446',' qyzjq@gmail.com','Lunavada','GH Patel Anand','2023-02-01 12:55:29'),(1198,' FZWDWM',' UWFBO',' 2179924246',' mheju@gmail.com','Mehsana','LJIET Ahmedabad','2023-02-01 12:55:29'),(1199,' RNTTTO',' CDDCX',' 6729265186',' crkaa@gmail.com','Lunavada','GMIT Bhavnagar','2023-02-01 12:55:29'),(1200,' BLJLOQ',' PTEWC',' 3343758289',' dgxgh@gmail.com','Mehsana','GMIT Bhavnagar','2023-02-01 12:55:29'),(1201,' CSKXKJ',' OTNUY',' 6347363266',' eactd@gmail.com','Vadnagar','GIT Gandhinagar','2023-02-01 12:55:29'),(1202,' UUOHJU',' XLKWW',' 2141792937',' myqdm@gmail.com','Dahod','GEC Gandhinagar','2023-02-01 12:55:29'),(1203,' MFUPCK',' CCMVE',' 1635952436',' ghdlw@gmail.com','Valsad','GMIT Bhavnagar','2023-02-01 12:55:29'),(1204,' SRZXQU',' ZGTMF',' 6679361991',' iopbp@gmail.com','Vadnagar','GEC Modasa','2023-02-01 12:55:29'),(1205,' FNTCVQ',' WYKCD',' 2652182916',' rtkna@gmail.com','Jharkhand','GEC Anand','2023-02-01 12:55:29'),(1206,' NNIINF',' FAPHZ',' 8336141159',' wnqld@gmail.com','Valsad','GEC Bhavnagar','2023-02-01 12:55:29'),(1207,' MUIEES',' WLCEL',' 2554532187',' lkgnc@gmail.com','Anand','LJIET Ahmedabad','2023-02-01 12:55:29'),(1208,' ZJEHFA',' LUHEL',' 1131879219',' bfbln@gmail.com','Anand','GEC Bhavnagar','2023-02-01 12:55:29'),(1209,' ICBZKR',' GUVVM',' 7833687596',' wsbgb@gmail.com','Himmatnagar','LJIET Ahmedabad','2023-02-01 12:55:29'),(1210,' OWWTKD',' WUXJD',' 6274187955',' vazqs@gmail.com','Valsad','GEC Anand','2023-02-01 12:55:29'),(1211,' XHHGUL',' SSGKO',' 8178912751',' wbvsf@gmail.com','Mehsana','GEC Gandhinagar','2023-02-01 12:55:29'),(1212,' EKKZXW',' ZXONT',' 9245127739',' xxmof@gmail.com','Himmatnagar','GMIT Bhavnagar','2023-02-01 12:55:29'),(1213,' WIZSPR',' FQURY',' 3912417993',' hjvxd@gmail.com','Anand','GEC Modasa','2023-02-01 12:55:29'),(1214,' VBFIRQ',' RGDHH',' 9727261186',' ouorr@gmail.com','Bhavnagar','GMIT Bhavnagar','2023-02-01 12:55:29'),(1215,' THZMSF',' OHRXX',' 2112293839',' joajh@gmail.com','Lunavada','GIT Gandhinagar','2023-02-01 12:55:29'),(1216,' RWJZLC',' JCHJP',' 6283742338',' eivdd@gmail.com','Patan','GH Patel Anand','2023-02-01 12:55:29'),(1217,' WAZWLH',' AIFUL',' 5421593358',' tvcgw@gmail.com','Anand','GH Patel Anand','2023-02-01 12:55:29'),(1218,' HMGYMA',' WHADP',' 4121463294',' wlfod@gmail.com','Lunavada','GMIT Bhavnagar','2023-02-01 12:55:29'),(1219,' FGRQBD',' ABISM',' 7613242655',' vyyzn@gmail.com','Idar','GH Patel Anand','2023-02-01 12:55:29'),(1220,' EICFXI',' VDBME',' 3424417585',' dxygm@gmail.com','Anand','GEC Gandhinagar','2023-02-01 12:55:29'),(1221,' UYQWIK',' VSMAE',' 8176156356',' oosxv@gmail.com','Jaipur','GEC Modasa','2023-02-01 12:55:29'),(1222,' VIUGIN',' JQAPV',' 6131898247',' waiui@gmail.com','Ankleshwar','GEC Anand','2023-02-01 12:55:29'),(1223,' RIEJHD',' ZSETI',' 2695355739',' gqrcr@gmail.com','Modasa','GEC Anand','2023-02-01 12:55:29'),(1224,' NTPKIP',' QVWDC',' 9237352634',' jdidy@gmail.com','Mumbai','GMIT Bhavnagar','2023-02-01 12:55:29'),(1225,' RPCKIV',' JITZX',' 9721847422',' wnehr@gmail.com','Modasa','GIT Gandhinagar','2023-02-01 12:55:29'),(1226,' SWKGRJ',' IOXFT',' 5731448397',' lwmxn@gmail.com','Jaipur','GIT Gandhinagar','2023-02-01 12:55:29'),(1227,' HNGCJB',' AEPJL',' 7897784312',' ampjk@gmail.com','Jaipur','GEC Gandhinagar','2023-02-01 12:55:29'),(1228,' RRHWMA',' WGXZW',' 7733257799',' bgpvr@gmail.com','Mumbai','GEC Modasa','2023-02-01 12:55:29'),(1229,' YXDEMR',' KEIQV',' 4398237539',' xgcxg@gmail.com','Anand','LJIET Ahmedabad','2023-02-01 12:55:29'),(1230,' YSMIIV',' CJBWW',' 6456988526',' oyaah@gmail.com','Dahod','GIT Gandhinagar','2023-02-01 12:55:29'),(1231,' DTBNVF',' YNCWP',' 5695251863',' hxzwy@gmail.com','Dahod','GMIT Bhavnagar','2023-02-01 12:55:29'),(1232,' HPZKDR',' NUMYQ',' 9237182574',' fqatw@gmail.com','Jaipur','GMIT Bhavnagar','2023-02-01 12:55:29'),(1233,' JDWKWM',' OHUNI',' 7566264242',' cdibv@gmail.com','Mehsana','GEC Modasa','2023-02-01 12:55:29'),(1234,' YYCLOZ',' UXLAW',' 9993839736',' yssmb@gmail.com','Vadodara','GEC Gandhinagar','2023-02-01 12:55:29'),(1235,' VLAVHJ',' LHBFJ',' 1556178877',' zvfir@gmail.com','Modasa','GEC Anand','2023-02-01 12:55:29'),(1236,' SOWWHM',' IQKPC',' 2779111441',' auyzz@gmail.com','Bhavnagar','GMIT Bhavnagar','2023-02-01 12:55:29'),(1237,' AVQKQN',' YJWHV',' 6858779762',' sbrqa@gmail.com','Vadnagar','GMIT Bhavnagar','2023-02-01 12:55:29'),(1238,' BJNIKH',' VMGEU',' 8983258645',' oaduw@gmail.com','Patan','GMIT Bhavnagar','2023-02-01 12:55:29'),(1239,' FVCLEE',' FHDNL',' 3371729861',' ymxac@gmail.com','Lunavada','LJIET Ahmedabad','2023-02-01 12:55:29'),(1240,' WLAXZQ',' DUEJS',' 2325252353',' muqsv@gmail.com','Mehsana','GEC Anand','2023-02-01 12:55:29'),(1241,' JIPINJ',' MGBMG',' 4761312656',' epnut@gmail.com','Ankleshwar','GEC Anand','2023-02-01 12:55:29'),(1242,' TVUHVU',' PXCDY',' 1322216241',' rfeot@gmail.com','Mehsana','LJIET Ahmedabad','2023-02-01 12:55:29'),(1243,' ADPBGB',' TRGKZ',' 5976656923',' rbkxo@gmail.com','Surat','GEC Modasa','2023-02-01 12:55:29'),(1244,' UJNEZC',' SQTWX',' 1935381548',' cuils@gmail.com','Himmatnagar','GEC Gandhinagar','2023-02-01 12:55:29'),(1245,' OZPQCD',' SHBUO',' 5946687858',' kfdrb@gmail.com','Modasa','GEC Gandhinagar','2023-02-01 12:55:29'),(1246,' DBXOJZ',' NOJVN',' 7189698786',' eqhmd@gmail.com','Jharkhand','GEC Anand','2023-02-01 12:55:29'),(1247,' BCTWBT',' KACWL',' 2478364699',' sfykf@gmail.com','Godhra','GEC Anand','2023-02-01 12:55:29'),(1248,' XTGJPJ',' XESPH',' 1424647495',' nrajl@gmail.com','Anand','GIT Gandhinagar','2023-02-01 12:55:29'),(1249,' TTHQAJ',' QABUW',' 5353244316',' dvzgs@gmail.com','Jaipur','GIT Gandhinagar','2023-02-01 12:55:29'),(1250,' TPTROX',' DKJRA',' 9637897783',' reiub@gmail.com','Valsad','GEC Bhavnagar','2023-02-01 12:55:29'),(1251,' QEUEFX',' ARQHE',' 4823393646',' spqyu@gmail.com','Godhra','GIT Gandhinagar','2023-02-01 12:55:29'),(1252,' RXIVGJ',' VCZVB',' 2269464799',' ghypa@gmail.com','Vadnagar','GEC Modasa','2023-02-01 12:55:29'),(1253,' PPKMQV',' XTFQU',' 8764859189',' dizmv@gmail.com','Dahod','GEC Anand','2023-02-01 12:55:29'),(1254,' BNPARL',' EJLOQ',' 3893488266',' uejtp@gmail.com','Ahmedabad','GH Patel Anand','2023-02-01 12:55:29'),(1255,' JYLHYE',' KSXEK',' 5535694726',' icupy@gmail.com','Mehsana','GEC Gandhinagar','2023-02-01 12:55:29'),(1256,' DYBYST',' KVTPB',' 3658371392',' rdyhb@gmail.com','Vadnagar','GEC Modasa','2023-02-01 12:55:29'),(1257,' WHVVGC',' SNVZC',' 9699923445',' nohgj@gmail.com','Bhavnagar','GH Patel Anand','2023-02-01 12:55:29'),(1258,' HWPIOJ',' JDVXR',' 1193852336',' fdccv@gmail.com','Dahod','LJIET Ahmedabad','2023-02-01 12:55:29'),(1259,' VZNDHG',' SFKJM',' 1797755741',' olvfh@gmail.com','Vadodara','GEC Gandhinagar','2023-02-01 12:55:29'),(1260,' KUGATA',' QSGWW',' 6911386933',' agend@gmail.com','Bhavnagar','LJIET Ahmedabad','2023-02-01 12:55:29'),(1261,' MHKHKM',' FCHUE',' 5185948192',' iztvz@gmail.com','Lunavada','GEC Modasa','2023-02-01 12:55:29'),(1262,' KEAMPF',' IUIOH',' 2294441619',' cpscr@gmail.com','Patan','LJIET Ahmedabad','2023-02-01 12:55:29'),(1263,' XLJROS',' NVGQF',' 1551525911',' vxvlp@gmail.com','Anand','GEC Gandhinagar','2023-02-01 12:55:29'),(1264,' DZJBXO',' EKPHK',' 7666284438',' rkayo@gmail.com','Gandhinagar','GIT Gandhinagar','2023-02-01 12:55:29'),(1265,' IVJGRJ',' EYKBB',' 6996799177',' mmwqu@gmail.com','Vadnagar','GIT Gandhinagar','2023-02-01 12:55:29'),(1266,' MNRHEM',' UZVJH',' 6453894947',' qadsc@gmail.com','Anand','GH Patel Anand','2023-02-01 12:55:29'),(1267,' BDVOMZ',' PVAQH',' 9699367268',' fkcvi@gmail.com','Mumbai','GEC Bhavnagar','2023-02-01 12:55:29'),(1268,' XTRMPZ',' TTXVF',' 7592575484',' lpxww@gmail.com','Vadnagar','GEC Bhavnagar','2023-02-01 12:55:29'),(1269,' LAVJOS',' IOZOV',' 6326416158',' przbf@gmail.com','Idar','GH Patel Anand','2023-02-01 12:55:29'),(1270,' MBFBNS',' FYEWT',' 5936128588',' hpmyl@gmail.com','Vadodara','LJIET Ahmedabad','2023-02-01 12:55:29'),(1271,' FXRGHA',' CQJLU',' 3753651476',' kxgzm@gmail.com','Anand','GEC Modasa','2023-02-01 12:55:29'),(1272,' BQAIHA',' THOZZ',' 6554713744',' zocuf@gmail.com','Valsad','GH Patel Anand','2023-02-01 12:55:29'),(1273,' ZMBLUJ',' FWMYT',' 5151498699',' mvdcw@gmail.com','Jharkhand','GIT Gandhinagar','2023-02-01 12:55:29'),(1274,' QSNGFZ',' TWKVW',' 7975494343',' mttuo@gmail.com','Surat','GEC Anand','2023-02-01 12:55:29'),(1275,' LBFWMK',' FBVVT',' 3545517226',' hjhdj@gmail.com','Himmatnagar','GEC Bhavnagar','2023-02-01 12:55:29'),(1276,' ZXCSUJ',' NSEST',' 4762719468',' zvuaj@gmail.com','Surat','GMIT Bhavnagar','2023-02-01 12:55:29'),(1277,' SIEHTT',' DGLXA',' 7753362695',' rdkan@gmail.com','Surat','GEC Anand','2023-02-01 12:55:29'),(1278,' EGVYPZ',' LIRWZ',' 5999855287',' svvad@gmail.com','Dahod','LJIET Ahmedabad','2023-02-01 12:55:29'),(1279,' QFIEKB',' GZBCW',' 4981722121',' hiikt@gmail.com','Jaipur','GH Patel Anand','2023-02-01 12:55:29'),(1280,' SFJENS',' ARBDH',' 2133739218',' fcqij@gmail.com','Lunavada','GEC Modasa','2023-02-01 12:55:29'),(1281,' PODZNO',' ICHKV',' 6818249113',' racii@gmail.com','Anand','GH Patel Anand','2023-02-01 12:55:29'),(1282,' YQMYEL',' MICMT',' 9856857466',' yywln@gmail.com','Jaipur','GEC Anand','2023-02-01 12:55:29'),(1283,' HKEEVT',' GLBMA',' 2999752974',' fbqnl@gmail.com','Mehsana','GEC Anand','2023-02-01 12:55:29'),(1284,' KFDAVJ',' JVLVN',' 3538311533',' dhyhh@gmail.com','Mehsana','GEC Anand','2023-02-01 12:55:29'),(1285,' OZGQBW',' QENZN',' 6399767986',' tnjot@gmail.com','Dahod','LJIET Ahmedabad','2023-02-01 12:55:29'),(1286,' UOQBTQ',' ARBCO',' 1974292247',' aywmj@gmail.com','Mumbai','LJIET Ahmedabad','2023-02-01 12:55:29'),(1287,' OTEXYA',' SGDCJ',' 6463267148',' exzrb@gmail.com','Bhavnagar','GEC Modasa','2023-02-01 12:55:29'),(1288,' BJJESW',' ARQIN',' 4812819373',' fsbxg@gmail.com','Bhavnagar','GEC Anand','2023-02-01 12:55:29'),(1289,' IOCCMW',' IJFOJ',' 5421987789',' hnqfz@gmail.com','Valsad','GEC Anand','2023-02-01 12:55:29'),(1290,' NPAZWQ',' OCDRA',' 8788845523',' ztysj@gmail.com','Vadnagar','GH Patel Anand','2023-02-01 12:55:29'),(1291,' PVIHGO',' OXJZG',' 9268671817',' vinft@gmail.com','Mumbai','GEC Bhavnagar','2023-02-01 12:55:29'),(1292,' WBGMJE',' QTBAI',' 7999959559',' zmlqp@gmail.com','Jaipur','GEC Modasa','2023-02-01 12:55:29'),(1293,' OLKIEI',' ZRLKT',' 5621343597',' jpswh@gmail.com','Vadodara','GEC Gandhinagar','2023-02-01 12:55:29'),(1294,' ZQOAAC',' VWMTQ',' 4776188745',' fcavt@gmail.com','Gandhinagar','GEC Modasa','2023-02-01 12:55:29'),(1295,' FVHFSE',' LHVFN',' 1615919114',' rvlpc@gmail.com','Bhavnagar','GEC Gandhinagar','2023-02-01 12:55:29'),(1296,' URHNAP',' EABPZ',' 9917434378',' imcyl@gmail.com','Valsad','GIT Gandhinagar','2023-02-01 12:55:29'),(1297,' SHFNBX',' LPMKD',' 1919592377',' uhlho@gmail.com','Himmatnagar','GIT Gandhinagar','2023-02-01 12:55:29'),(1298,' VRZONV',' VGJNH',' 2693468224',' rexst@gmail.com','Bhavnagar','GIT Gandhinagar','2023-02-01 12:55:29'),(1299,' VEBFJP',' PVSWK',' 7765851388',' yqvbx@gmail.com','Gandhinagar','GEC Anand','2023-02-01 12:55:29'),(1300,' IMBLXM',' IEYWD',' 4466155296',' ukfny@gmail.com','Himmatnagar','GEC Modasa','2023-02-01 12:55:29'),(1301,' QIYNGM',' BMZYN',' 5159736446',' maogd@gmail.com','Godhra','GMIT Bhavnagar','2023-02-01 12:55:29'),(1302,' EWEJWM',' HZFLM',' 1913273263',' qjlwp@gmail.com','Ankleshwar','GEC Anand','2023-02-01 12:55:29'),(1303,' PCMGZA',' ZBOHQ',' 7854742178',' eeidf@gmail.com','Vadnagar','GEC Gandhinagar','2023-02-01 12:55:29'),(1304,' KEBAOZ',' MWJBB',' 7397679836',' ztcrl@gmail.com','Mumbai','GEC Anand','2023-02-01 12:55:29'),(1305,' PFGCJG',' TSFXI',' 7419562244',' sjuui@gmail.com','Dahod','LJIET Ahmedabad','2023-02-01 12:55:29'),(1306,' CEHOON',' VYHJB',' 4733836236',' uryuq@gmail.com','Mehsana','GIT Gandhinagar','2023-02-01 12:55:29'),(1307,' EOSPWQ',' KUSYU',' 4712652423',' cfjmz@gmail.com','Jaipur','GEC Anand','2023-02-01 12:55:29'),(1308,' XXJLXH',' FLNWZ',' 7974722927',' dotdr@gmail.com','Ahmedabad','LJIET Ahmedabad','2023-02-01 12:55:29'),(1309,' CIIZYB',' ZYDHZ',' 2417873686',' eoesl@gmail.com','Vadnagar','GIT Gandhinagar','2023-02-01 12:55:29'),(1310,' APAISO',' OXWLF',' 2781937939',' gwwnn@gmail.com','Vadnagar','GH Patel Anand','2023-02-01 12:55:29'),(1311,' HBLAQN',' NXSPY',' 1351239413',' dvwrq@gmail.com','Ankleshwar','GH Patel Anand','2023-02-01 12:55:29'),(1312,' RFITUZ',' ZXMSX',' 2649216131',' wdxsv@gmail.com','Dahod','GEC Bhavnagar','2023-02-01 12:55:29'),(1313,' VPXYHD',' TOHBJ',' 9449185892',' zwhkn@gmail.com','Jaipur','GEC Modasa','2023-02-01 12:55:29'),(1314,' XGLCJY',' HMNVF',' 4212727176',' jczrs@gmail.com','Jharkhand','GMIT Bhavnagar','2023-02-01 12:55:29'),(1315,' DXRJGC',' LUGJE',' 6165527252',' bojqt@gmail.com','Himmatnagar','GEC Anand','2023-02-01 12:55:29'),(1316,' UOZDTA',' GMWIS',' 9892836279',' jhrzw@gmail.com','Lunavada','LJIET Ahmedabad','2023-02-01 12:55:29'),(1317,' WZQMTR',' RGHCK',' 8354489472',' hpvmd@gmail.com','Himmatnagar','LJIET Ahmedabad','2023-02-01 12:55:29'),(1318,' JEYKFH',' WKZWK',' 9163572632',' genes@gmail.com','Gandhinagar','GMIT Bhavnagar','2023-02-01 12:55:29'),(1319,' TYPIFS',' OTIUV',' 6659257859',' xpkby@gmail.com','Vadnagar','GMIT Bhavnagar','2023-02-01 12:55:29'),(1320,' ABZTYY',' CRHQT',' 3266726691',' vhqbc@gmail.com','Gandhinagar','GMIT Bhavnagar','2023-02-01 12:55:29'),(1321,' ORKPUX',' PLAGO',' 2378181712',' wmefx@gmail.com','Vadnagar','LJIET Ahmedabad','2023-02-01 12:55:29'),(1322,' EFATHD',' ASUOK',' 5672428836',' xmmcl@gmail.com','Dahod','GIT Gandhinagar','2023-02-01 12:55:29'),(1323,' IPBGWI',' KCNIQ',' 3586953898',' agptl@gmail.com','Valsad','GIT Gandhinagar','2023-02-01 12:55:29'),(1324,' OWZVUG',' EVKAC',' 6338271756',' xpprp@gmail.com','Vadodara','GEC Anand','2023-02-01 12:55:29'),(1325,' YAAUXI',' DSYAS',' 5352413454',' ibayn@gmail.com','Vadnagar','GEC Modasa','2023-02-01 12:55:29'),(1326,' DVTNSS',' DKKYY',' 9457528675',' hqcwf@gmail.com','Jharkhand','GH Patel Anand','2023-02-01 12:55:29'),(1327,' DUTLYN',' VJASH',' 8964267653',' lkrhb@gmail.com','Jharkhand','GH Patel Anand','2023-02-01 12:55:29'),(1328,' GVYZWD',' EJKGH',' 8455834846',' rsaml@gmail.com','Lunavada','GEC Modasa','2023-02-01 12:55:29'),(1329,' AGPOWU',' NLMKK',' 5617361345',' rasse@gmail.com','Patan','GEC Anand','2023-02-01 12:55:29'),(1330,' IFCKDK',' ODKUG',' 2926512234',' idkdz@gmail.com','Surat','GEC Anand','2023-02-01 12:55:29'),(1331,' MIFHQZ',' CXTCT',' 4785737825',' cnoga@gmail.com','Anand','GIT Gandhinagar','2023-02-01 12:55:29'),(1332,' WKVUZT',' VVWQO',' 3368363922',' fkbnu@gmail.com','Himmatnagar','GH Patel Anand','2023-02-01 12:55:29'),(1333,' ZONKLV',' FERLK',' 2495338851',' pbhkm@gmail.com','Ahmedabad','GEC Modasa','2023-02-01 12:55:29'),(1334,' GZLXMA',' VGKLT',' 9152631718',' zqteo@gmail.com','Himmatnagar','LJIET Ahmedabad','2023-02-01 12:55:29'),(1335,' CLWVFX',' KHKQE',' 7958443477',' ayvrp@gmail.com','Vadodara','GH Patel Anand','2023-02-01 12:55:29'),(1336,' AMXJCL',' WQNIO',' 3579322937',' nurgq@gmail.com','Mehsana','GMIT Bhavnagar','2023-02-01 12:55:29'),(1337,' SPHFJT',' DPLRD',' 7238367677',' uddqs@gmail.com','Gandhinagar','GEC Gandhinagar','2023-02-01 12:55:29'),(1338,' BTPYQL',' NWPAL',' 1451682296',' arusp@gmail.com','Bhavnagar','GEC Modasa','2023-02-01 12:55:29'),(1339,' WXAUCB',' EDOLE',' 9157149634',' qsxbz@gmail.com','Idar','GEC Gandhinagar','2023-02-01 12:55:29'),(1340,' WYVGWV',' LWAYF',' 6436812134',' epvdi@gmail.com','Idar','GEC Bhavnagar','2023-02-01 12:55:29'),(1341,' PXVFST',' WNFRK',' 7237962551',' qelyb@gmail.com','Ankleshwar','GMIT Bhavnagar','2023-02-01 12:55:29'),(1342,' IGNUFA',' MYJOK',' 1718966772',' xlrfs@gmail.com','Gandhinagar','GEC Bhavnagar','2023-02-01 12:55:29'),(1343,' UQJHXL',' TFQKR',' 7793944387',' yejuh@gmail.com','Idar','GEC Bhavnagar','2023-02-01 12:55:29'),(1344,' FTHEGS',' SWPPU',' 1612356251',' hhiyb@gmail.com','Vadnagar','GEC Gandhinagar','2023-02-01 12:55:29'),(1345,' ZWOMBN',' FESYN',' 5325254152',' fzxuw@gmail.com','Surat','GEC Modasa','2023-02-01 12:55:29'),(1346,' MFALNL',' NSGGI',' 2915395177',' vovoo@gmail.com','Mumbai','GEC Anand','2023-02-01 12:55:29'),(1347,' MMXZQZ',' SDRKN',' 3911327251',' yxkmp@gmail.com','Jaipur','GEC Gandhinagar','2023-02-01 12:55:29'),(1348,' NDJAIU',' KEYMI',' 4827244491',' jvmpr@gmail.com','Dahod','GIT Gandhinagar','2023-02-01 12:55:29'),(1349,' JTSTMS',' AARIN',' 4754642358',' ampuj@gmail.com','Mumbai','GEC Anand','2023-02-01 12:55:29'),(1350,' PVCXOZ',' BBTUL',' 3296378588',' dutpj@gmail.com','Surat','GEC Anand','2023-02-01 12:55:29'),(1351,' YTUGFY',' RSNNC',' 6787928127',' uxggp@gmail.com','Ankleshwar','GEC Bhavnagar','2023-02-01 12:55:29'),(1352,' ZYPQWW',' BYLXQ',' 6143645158',' nkmhe@gmail.com','Dahod','GIT Gandhinagar','2023-02-01 12:55:29'),(1353,' OAYQYJ',' DIQVE',' 8637248563',' czdkz@gmail.com','Anand','GIT Gandhinagar','2023-02-01 12:55:29'),(1354,' ZRCMLB',' TXPGU',' 9638939939',' ngkrf@gmail.com','Mumbai','GEC Anand','2023-02-01 12:55:29'),(1355,' EEENQV',' PKTTB',' 7376162429',' ivizx@gmail.com','Ahmedabad','GH Patel Anand','2023-02-01 12:55:29'),(1356,' YEPYVJ',' MYNWL',' 5778253676',' qjopv@gmail.com','Ankleshwar','GEC Modasa','2023-02-01 12:55:29'),(1357,' XEUJTY',' KUFQS',' 5866876521',' wptym@gmail.com','Mehsana','GEC Bhavnagar','2023-02-01 12:55:29'),(1358,' HFAIFD',' KYBWF',' 8259628866',' ebotd@gmail.com','Gandhinagar','GEC Gandhinagar','2023-02-01 12:55:29'),(1359,' UPKBIL',' FLKOP',' 2464641712',' zvbjg@gmail.com','Ahmedabad','GH Patel Anand','2023-02-01 12:55:29'),(1360,' EGOTTX',' EBEKL',' 3161728189',' krgos@gmail.com','Jaipur','GH Patel Anand','2023-02-01 12:55:29'),(1361,' URHUEH',' WRURY',' 2766924567',' yxbkz@gmail.com','Vadnagar','GIT Gandhinagar','2023-02-01 12:55:29'),(1362,' CJLNDR',' WAXOD',' 8828871295',' tjkmq@gmail.com','Idar','GIT Gandhinagar','2023-02-01 12:55:29'),(1363,' MKANVO',' CZSWF',' 6292242753',' qweab@gmail.com','Idar','GIT Gandhinagar','2023-02-01 12:55:29'),(1364,' GOGJQE',' UIUSY',' 3588922923',' voqis@gmail.com','Surat','GEC Gandhinagar','2023-02-01 12:55:29'),(1365,' OFGLUY',' SQZVH',' 7296551547',' czjey@gmail.com','Modasa','GEC Modasa','2023-02-01 12:55:29'),(1366,' LWUCXK',' NWVTS',' 8355184943',' mdcmd@gmail.com','Modasa','GMIT Bhavnagar','2023-02-01 12:55:29'),(1367,' HKRXVM',' MRWCK',' 2292444689',' xhmic@gmail.com','Patan','GEC Modasa','2023-02-01 12:55:29'),(1368,' DZOHAT',' XUMYD',' 9419454962',' tfjys@gmail.com','Idar','GIT Gandhinagar','2023-02-01 12:55:29'),(1369,' WEOURK',' FYBVZ',' 5727344345',' ofzau@gmail.com','Lunavada','GH Patel Anand','2023-02-01 12:55:29'),(1370,' VDZZNG',' XGZUW',' 9475357143',' bhmln@gmail.com','Ahmedabad','GEC Gandhinagar','2023-02-01 12:55:29'),(1371,' VVVPAV',' TVKQK',' 2227132488',' ompzh@gmail.com','Ahmedabad','GEC Modasa','2023-02-01 12:55:29'),(1372,' EHZHKL',' BAKCQ',' 9845799953',' uzpww@gmail.com','Dahod','GH Patel Anand','2023-02-01 12:55:29'),(1373,' SKZAAE',' RBHEX',' 3554714833',' bmhaz@gmail.com','Mumbai','GEC Modasa','2023-02-01 12:55:29'),(1374,' TYJKZJ',' YTCXB',' 3884689447',' qmork@gmail.com','Gandhinagar','GEC Anand','2023-02-01 12:55:29'),(1375,' CHLTQL',' IPTGT',' 9213899113',' zvngg@gmail.com','Dahod','GIT Gandhinagar','2023-02-01 12:55:29'),(1376,' BEXKGI',' KQPAP',' 8598344672',' lvvhd@gmail.com','Idar','GMIT Bhavnagar','2023-02-01 12:55:29'),(1377,' JYZBIG',' OFCFI',' 9893125152',' qrpdj@gmail.com','Modasa','GEC Anand','2023-02-01 12:55:29'),(1378,' FNNYTQ',' QXTKD',' 9972777488',' rydqy@gmail.com','Mumbai','GEC Modasa','2023-02-01 12:55:29'),(1379,' REZRDR',' SJOBK',' 2548777144',' fdxwv@gmail.com','Jaipur','GEC Gandhinagar','2023-02-01 12:55:29'),(1380,' DVPNDI',' RGUNM',' 4323443784',' cruuq@gmail.com','Anand','GMIT Bhavnagar','2023-02-01 12:55:29'),(1381,' KQXKPZ',' ULLQP',' 6186739987',' hjruw@gmail.com','Jharkhand','GEC Modasa','2023-02-01 12:55:29'),(1382,' LRLFRH',' RTPMA',' 3415821438',' eedva@gmail.com','Jharkhand','GIT Gandhinagar','2023-02-01 12:55:29'),(1383,' YSDYEC',' QJSMI',' 3447431189',' vdtvj@gmail.com','Anand','GEC Bhavnagar','2023-02-01 12:55:29'),(1384,' QKZATG',' OOTFI',' 8534575916',' uyxxo@gmail.com','Dahod','GMIT Bhavnagar','2023-02-01 12:55:29'),(1385,' HPAUBY',' TAXPC',' 2943582167',' pzovy@gmail.com','Surat','GEC Modasa','2023-02-01 12:55:29'),(1386,' KTIFRK',' IBUIM',' 5744829982',' lxdik@gmail.com','Jaipur','GIT Gandhinagar','2023-02-01 12:55:29'),(1387,' DKBVZW',' SHYDZ',' 6746869532',' camlg@gmail.com','Ahmedabad','GMIT Bhavnagar','2023-02-01 12:55:29'),(1388,' UQJBEO',' FZYTU',' 6314681411',' rxmja@gmail.com','Mehsana','LJIET Ahmedabad','2023-02-01 12:55:29'),(1389,' IQJVGP',' HTUKZ',' 5884235275',' ykivk@gmail.com','Mehsana','GEC Modasa','2023-02-01 12:55:29'),(1390,' MJIBTA',' ERALG',' 9439125576',' mcplb@gmail.com','Ahmedabad','GEC Bhavnagar','2023-02-01 12:55:29'),(1391,' GQKUAB',' POVAA',' 3367626642',' qtuie@gmail.com','Ankleshwar','GEC Modasa','2023-02-01 12:55:29'),(1392,' ZQBCJI',' BGBHW',' 3176953735',' inbnw@gmail.com','Ahmedabad','GEC Gandhinagar','2023-02-01 12:55:29'),(1393,' GLGUKD',' YIJXL',' 4696513947',' wpsuu@gmail.com','Modasa','LJIET Ahmedabad','2023-02-01 12:55:29'),(1394,' TRFKOU',' YXDPC',' 3139998478',' emicy@gmail.com','Anand','GEC Anand','2023-02-01 12:55:29'),(1395,' TYYHSI',' JJNJV',' 5829824952',' famrk@gmail.com','Lunavada','GEC Bhavnagar','2023-02-01 12:55:29'),(1396,' IVRXWW',' SQPKP',' 2375482582',' swgez@gmail.com','Dahod','GEC Anand','2023-02-01 12:55:29'),(1397,' OPLLJJ',' CZISO',' 7923487488',' qkcvt@gmail.com','Anand','GMIT Bhavnagar','2023-02-01 12:55:29'),(1398,' WEOXNM',' SXWHA',' 4757125457',' kvubs@gmail.com','Dahod','GEC Bhavnagar','2023-02-01 12:55:29'),(1399,' KJHKVF',' LZIIU',' 7778458167',' ejodb@gmail.com','Surat','GEC Modasa','2023-02-01 12:55:29'),(1400,' TYCTEZ',' NYPMR',' 7496695639',' mbqub@gmail.com','Valsad','GEC Anand','2023-02-01 12:55:29'),(1401,' XNZZWI',' JEZJE',' 5775369694',' hjyrf@gmail.com','Patan','GH Patel Anand','2023-02-01 12:55:29'),(1402,' TZCKNN',' LGOEQ',' 5675229856',' dvtxo@gmail.com','Lunavada','LJIET Ahmedabad','2023-02-01 12:55:29'),(1403,' QQKVYF',' XIDPX',' 2838942831',' vkosr@gmail.com','Patan','GIT Gandhinagar','2023-02-01 12:55:29'),(1404,' WHOOYT',' GTHDI',' 4888133215',' vnjav@gmail.com','Gandhinagar','LJIET Ahmedabad','2023-02-01 12:55:29'),(1405,' WIIQKH',' JHDCI',' 7457411769',' rvnlj@gmail.com','Gandhinagar','GH Patel Anand','2023-02-01 12:55:29'),(1406,' GEKTTT',' AMKVI',' 4229871523',' mjefw@gmail.com','Gandhinagar','GEC Bhavnagar','2023-02-01 12:55:29'),(1407,' SVDPRA',' EHCPW',' 1657122593',' ldszd@gmail.com','Himmatnagar','GEC Bhavnagar','2023-02-01 12:55:29'),(1408,' VPGIPN',' OXFXL',' 9359847484',' bxlhs@gmail.com','Patan','GEC Gandhinagar','2023-02-01 12:55:29'),(1409,' IKJSUL',' HOLVF',' 7557928582',' ewqwj@gmail.com','Dahod','GEC Modasa','2023-02-01 12:55:29'),(1410,' GNFRVN',' MGUJT',' 3852466569',' qbbcs@gmail.com','Surat','GEC Gandhinagar','2023-02-01 12:55:29'),(1411,' BAAXKW',' MLXUL',' 5719448391',' iaoui@gmail.com','Modasa','GEC Anand','2023-02-01 12:55:29'),(1412,' TYSURY',' DKANH',' 7442633613',' jwthc@gmail.com','Lunavada','GEC Gandhinagar','2023-02-01 12:55:29'),(1413,' CATKBQ',' UQKEX',' 3571314622',' erogx@gmail.com','Vadodara','GEC Gandhinagar','2023-02-01 12:55:29'),(1414,' QETZVK',' GALTK',' 6732226458',' ihjtm@gmail.com','Surat','GEC Bhavnagar','2023-02-01 12:55:29'),(1415,' ZOHUWC',' YKOEL',' 5899476449',' ozpil@gmail.com','Idar','GMIT Bhavnagar','2023-02-01 12:55:29'),(1416,' YMFJIN',' DFJAI',' 3251714374',' tjvkv@gmail.com','Himmatnagar','GMIT Bhavnagar','2023-02-01 12:55:29'),(1417,' JYMIGE',' XRDKQ',' 6918629865',' ayngo@gmail.com','Dahod','GEC Modasa','2023-02-01 12:55:29'),(1418,' CPUFRE',' FEDXM',' 6763168523',' ndxqs@gmail.com','Gandhinagar','LJIET Ahmedabad','2023-02-01 12:55:29'),(1419,' GJGSKU',' MSWBB',' 9774733529',' prfmr@gmail.com','Dahod','GEC Bhavnagar','2023-02-01 12:55:29'),(1420,' NJHXUH',' TOIOZ',' 3389781462',' huuxt@gmail.com','Ahmedabad','GEC Bhavnagar','2023-02-01 12:55:29'),(1421,' CYVISZ',' MYHJN',' 4562765488',' kpfyq@gmail.com','Patan','GEC Bhavnagar','2023-02-01 12:55:29'),(1422,' ZROYMD',' IBMEI',' 7795931926',' qeteg@gmail.com','Jaipur','GMIT Bhavnagar','2023-02-01 12:55:29'),(1423,' XBWDOV',' NYQSF',' 2884586945',' nwicl@gmail.com','Himmatnagar','GEC Modasa','2023-02-01 12:55:29'),(1424,' HHSYOJ',' OYNXG',' 1351844527',' jeohu@gmail.com','Vadnagar','GEC Gandhinagar','2023-02-01 12:55:29'),(1425,' TMNORH',' UYDFN',' 4144264294',' leqng@gmail.com','Patan','GEC Modasa','2023-02-01 12:55:29'),(1426,' KULJLS',' CPGZW',' 6271951426',' spttx@gmail.com','Vadodara','GEC Gandhinagar','2023-02-01 12:55:29'),(1427,' OKMPNG',' UDWIJ',' 2374117184',' rjjjs@gmail.com','Jharkhand','GIT Gandhinagar','2023-02-01 12:55:29'),(1428,' EDDMRS',' DWCZK',' 4211151733',' xrufk@gmail.com','Ahmedabad','GEC Gandhinagar','2023-02-01 12:55:29'),(1429,' UYHHEU',' NYSDN',' 8552215134',' bbtdp@gmail.com','Patan','GMIT Bhavnagar','2023-02-01 12:55:29'),(1430,' YDHTOI',' NAPGJ',' 2143516427',' ofcpo@gmail.com','Jharkhand','GEC Modasa','2023-02-01 12:55:29'),(1431,' FOGECT',' DSNUM',' 5578355651',' tpeuq@gmail.com','Modasa','LJIET Ahmedabad','2023-02-01 12:55:29'),(1432,' KTCPFF',' MXOWV',' 5333282337',' mjrzq@gmail.com','Patan','GEC Gandhinagar','2023-02-01 12:55:29'),(1433,' FMEQUD',' HCUGS',' 8738526795',' zdnjy@gmail.com','Patan','GEC Bhavnagar','2023-02-01 12:55:29'),(1434,' OWWQIH',' CTMVX',' 4673193279',' zrycv@gmail.com','Vadodara','LJIET Ahmedabad','2023-02-01 12:55:29'),(1435,' HUSHXW',' ASADD',' 2564865537',' ivvho@gmail.com','Patan','GIT Gandhinagar','2023-02-01 12:55:29'),(1436,' IYRFRX',' IIMRP',' 8561457165',' kieqd@gmail.com','Patan','GEC Gandhinagar','2023-02-01 12:55:29'),(1437,' IKBGLD',' OMOAN',' 5836288136',' jdbvj@gmail.com','Jharkhand','GEC Modasa','2023-02-01 12:55:29'),(1438,' BZRRBE',' HXOUK',' 4421715196',' wskdf@gmail.com','Mehsana','GEC Modasa','2023-02-01 12:55:29'),(1439,' SDIALT',' FPQNS',' 6695163365',' abfvi@gmail.com','Modasa','GEC Gandhinagar','2023-02-01 12:55:29'),(1440,' ZIVVCD',' PSOPF',' 8985776562',' ghyyb@gmail.com','Valsad','GEC Gandhinagar','2023-02-01 12:55:29'),(1441,' UTHBQF',' UIKHU',' 5148176974',' qphvy@gmail.com','Lunavada','GH Patel Anand','2023-02-01 12:55:29'),(1442,' JGJPJF',' GILBP',' 8147545426',' cosui@gmail.com','Vadodara','GIT Gandhinagar','2023-02-01 12:55:29'),(1443,' HVTYVK',' AJDSS',' 2259644149',' vjdgh@gmail.com','Jaipur','GEC Gandhinagar','2023-02-01 12:55:29'),(1444,' RTICIO',' UTRKE',' 3523463489',' bpcsr@gmail.com','Lunavada','GEC Bhavnagar','2023-02-01 12:55:29'),(1445,' YGPVRO',' DWDNY',' 6522964824',' qmrua@gmail.com','Mehsana','GEC Gandhinagar','2023-02-01 12:55:29'),(1446,' HRZPGW',' JJHKQ',' 1978447511',' diblw@gmail.com','Godhra','GEC Bhavnagar','2023-02-01 12:55:29'),(1447,' FRJTEA',' IMEAU',' 8638186677',' yafss@gmail.com','Mehsana','GH Patel Anand','2023-02-01 12:55:29'),(1448,' DUHUPT',' RIVDT',' 4222592976',' vpxit@gmail.com','Dahod','GEC Bhavnagar','2023-02-01 12:55:29'),(1449,' GSNWKZ',' KKMTJ',' 1155224768',' jdbop@gmail.com','Gandhinagar','LJIET Ahmedabad','2023-02-01 12:55:29'),(1450,' MREXCA',' XDDEJ',' 4315832156',' smmyv@gmail.com','Vadodara','GH Patel Anand','2023-02-01 12:55:29'),(1451,' ECFOMC',' EGVOI',' 9126243358',' segzp@gmail.com','Jharkhand','GEC Anand','2023-02-01 12:55:29'),(1452,' EOLDEZ',' QTJDZ',' 8573538127',' bobyv@gmail.com','Jharkhand','GEC Gandhinagar','2023-02-01 12:55:29'),(1453,' YZQELA',' XHVEQ',' 2454389134',' zapef@gmail.com','Dahod','GIT Gandhinagar','2023-02-01 12:55:29'),(1454,' NYYJFT',' TKJJK',' 7329896394',' kmthf@gmail.com','Himmatnagar','GEC Bhavnagar','2023-02-01 12:55:29'),(1455,' FHRJQX',' YXXVL',' 1427881312',' rvbof@gmail.com','Lunavada','GEC Bhavnagar','2023-02-01 12:55:29'),(1456,' XJPOPT',' ZDRJC',' 9937176162',' doboy@gmail.com','Himmatnagar','LJIET Ahmedabad','2023-02-01 12:55:29'),(1457,' UWIPAJ',' BFMGT',' 7434327956',' lueoi@gmail.com','Gandhinagar','GEC Modasa','2023-02-01 12:55:29'),(1458,' UDZLNA',' WNRNM',' 7363161337',' pdizn@gmail.com','Dahod','GEC Modasa','2023-02-01 12:55:29'),(1459,' ZVULKX',' WODED',' 2416343453',' dcdvu@gmail.com','Anand','GEC Modasa','2023-02-01 12:55:29'),(1460,' BJTHEX',' VCVVK',' 6553169354',' xglqd@gmail.com','Mehsana','GEC Gandhinagar','2023-02-01 12:55:29'),(1461,' QOAFXD',' BYBNL',' 2361897449',' hrtww@gmail.com','Surat','GEC Bhavnagar','2023-02-01 12:55:29'),(1462,' YGUKVX',' QHKLL',' 1656957949',' wacfj@gmail.com','Patan','GEC Modasa','2023-02-01 12:55:29'),(1463,' AQYNGK',' WXVYS',' 7688678335',' qamde@gmail.com','Dahod','GH Patel Anand','2023-02-01 12:55:29'),(1464,' BXYYIC',' MRBQW',' 8385732772',' byusv@gmail.com','Surat','LJIET Ahmedabad','2023-02-01 12:55:29'),(1465,' CGDBCT',' LSNSX',' 5765177338',' wxmfs@gmail.com','Ankleshwar','GEC Anand','2023-02-01 12:55:29'),(1466,' UXIABN',' QHYHQ',' 4737868549',' korbq@gmail.com','Jharkhand','GIT Gandhinagar','2023-02-01 12:55:29'),(1467,' VETJZM',' JBYLN',' 6391593918',' bkmsy@gmail.com','Surat','GMIT Bhavnagar','2023-02-01 12:55:29'),(1468,' NNWEMH',' GQVQS',' 1287376452',' cxlfn@gmail.com','Patan','GIT Gandhinagar','2023-02-01 12:55:29'),(1469,' WYVDGX',' DZFIT',' 8618584377',' tffwc@gmail.com','Ahmedabad','GEC Modasa','2023-02-01 12:55:29'),(1470,' FFJVIN',' UIRBV',' 8582615759',' rmknj@gmail.com','Lunavada','GEC Anand','2023-02-01 12:55:29'),(1471,' AJORDC',' CWIOQ',' 3815291167',' xuoyb@gmail.com','Lunavada','GH Patel Anand','2023-02-01 12:55:29'),(1472,' VSGIKZ',' VPPYL',' 2116648799',' jryye@gmail.com','Lunavada','GIT Gandhinagar','2023-02-01 12:55:29'),(1473,' PURDIP',' SFIDI',' 5882162798',' neauu@gmail.com','Ankleshwar','GMIT Bhavnagar','2023-02-01 12:55:29'),(1474,' IKPEXU',' JDZOX',' 5613224781',' ioril@gmail.com','Bhavnagar','GEC Gandhinagar','2023-02-01 12:55:29'),(1475,' QBNGZT',' JAGGH',' 6541673422',' rokkx@gmail.com','Vadodara','GEC Bhavnagar','2023-02-01 12:55:29'),(1476,' IRTHNX',' BBIGG',' 3182569128',' ywbkd@gmail.com','Mumbai','GEC Modasa','2023-02-01 12:55:29'),(1477,' RNGHEF',' GTLJB',' 5818379329',' atxaw@gmail.com','Ankleshwar','GEC Bhavnagar','2023-02-01 12:55:29'),(1478,' NSGBQK',' AGYLL',' 4598349648',' drsyc@gmail.com','Bhavnagar','GMIT Bhavnagar','2023-02-01 12:55:29'),(1479,' SFQFCI',' YYQUN',' 6469782483',' samrm@gmail.com','Vadodara','GMIT Bhavnagar','2023-02-01 12:55:29'),(1480,' WGRRTI',' QYXYH',' 4598548865',' omuel@gmail.com','Surat','GEC Gandhinagar','2023-02-01 12:55:29'),(1481,' DYLERU',' WLZWI',' 5911786372',' ynbto@gmail.com','Patan','GIT Gandhinagar','2023-02-01 12:55:29'),(1482,' LZBBDN',' NGUUF',' 9489651171',' sayjj@gmail.com','Lunavada','GH Patel Anand','2023-02-01 12:55:29'),(1483,' YJRHWN',' ETXAM',' 4144877372',' mxxgv@gmail.com','Godhra','LJIET Ahmedabad','2023-02-01 12:55:29'),(1484,' VIWRPT',' MXJHN',' 1953765414',' aqpjk@gmail.com','Anand','GH Patel Anand','2023-02-01 12:55:29'),(1485,' VJMFVF',' HYIHR',' 6952914825',' hfywl@gmail.com','Surat','GMIT Bhavnagar','2023-02-01 12:55:29'),(1486,' TQDIXO',' RFEVU',' 7945391352',' lmzbq@gmail.com','Godhra','GEC Modasa','2023-02-01 12:55:29'),(1487,' QJRLNF',' HQYYU',' 7797371552',' ebxob@gmail.com','Dahod','GEC Gandhinagar','2023-02-01 12:55:29'),(1488,' QOXBIG',' WIWIY',' 7315655973',' vccdr@gmail.com','Vadnagar','GEC Bhavnagar','2023-02-01 12:55:29'),(1489,' NKNYKN',' QHMQK',' 3479931229',' fogkq@gmail.com','Patan','GH Patel Anand','2023-02-01 12:55:29'),(1490,' ECETLU',' LWMAW',' 6455341817',' ssuei@gmail.com','Jaipur','GIT Gandhinagar','2023-02-01 12:55:29'),(1491,' SCEYTH',' CMPCT',' 9284423791',' jwkej@gmail.com','Surat','GEC Anand','2023-02-01 12:55:29'),(1492,' DEUGMD',' XRNVK',' 6166324246',' vemlu@gmail.com','Himmatnagar','LJIET Ahmedabad','2023-02-01 12:55:29'),(1493,' PORTWN',' MHLYP',' 2161538621',' brbms@gmail.com','Mehsana','GEC Bhavnagar','2023-02-01 12:55:29'),(1494,' YWCVDV',' IOTPH',' 6612245265',' hnwka@gmail.com','Jharkhand','GMIT Bhavnagar','2023-02-01 12:55:29'),(1495,' GYJMPY',' PMRVD',' 8574294161',' rsmlc@gmail.com','Himmatnagar','GH Patel Anand','2023-02-01 12:55:29'),(1496,' DZWCAF',' EXJMU',' 2262917749',' ydwll@gmail.com','Ahmedabad','GIT Gandhinagar','2023-02-01 12:55:29'),(1497,' ECCCRV',' VAEEX',' 2734227654',' xqjfe@gmail.com','Idar','GEC Modasa','2023-02-01 12:55:29'),(1498,' AFPKYX',' LGURF',' 1276939672',' yqrrg@gmail.com','Godhra','GIT Gandhinagar','2023-02-01 12:55:29'),(1499,' BCWHKY',' GLWNP',' 2269572411',' qswvo@gmail.com','Idar','GEC Bhavnagar','2023-02-01 12:55:29'),(1500,' OEHDUP',' AUTFT',' 1389398867',' ycrip@gmail.com','Godhra','GEC Anand','2023-02-01 12:55:29'),(1501,'Hetal','Mehta','1234987654','hetal@gmail.com','Himmatnagar','GEC Modasa',NULL);
/*!40000 ALTER TABLE `STUDENT` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-11 18:06:50
-- MySQL dump 10.13  Distrib 8.0.29, for Linux (x86_64)
--
-- Host: localhost    Database: person_master
-- ------------------------------------------------------
-- Server version	8.0.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `person_basicDetails`
--

DROP TABLE IF EXISTS `person_basicDetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `person_basicDetails` (
  `person_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `contact_number` varchar(45) DEFAULT NULL,
  `location` varchar(45) DEFAULT NULL,
  `created_time` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`person_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person_basicDetails`
--

LOCK TABLES `person_basicDetails` WRITE;
/*!40000 ALTER TABLE `person_basicDetails` DISABLE KEYS */;
INSERT INTO `person_basicDetails` VALUES (4,'Jaini','Mehta','asd','dsfae','dscf','2023-02-27 12:13:38'),(5,'Het','Patel','Male','1238940384','Gandhinagar','2023-02-27 12:13:38'),(6,'Jigar','Sankhla','Male','9829102930','Chandigarh','2023-02-27 12:13:38'),(7,'Khushi','Bhavsar','undefined','2782913849','Ahmedabad',NULL);
/*!40000 ALTER TABLE `person_basicDetails` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-11 18:06:50
-- MySQL dump 10.13  Distrib 8.0.29, for Linux (x86_64)
--
-- Host: localhost    Database: job_application_data
-- ------------------------------------------------------
-- Server version	8.0.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `academic_details`
--

DROP TABLE IF EXISTS `academic_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `academic_details` (
  `candidate_id` int DEFAULT NULL,
  `course_name` varchar(45) NOT NULL,
  `course_board` varchar(45) NOT NULL,
  `course_passingYear` varchar(45) NOT NULL,
  `course_gainedMarks` varchar(45) DEFAULT NULL,
  `course_id` int NOT NULL AUTO_INCREMENT,
  `isDeleted` int DEFAULT '0',
  PRIMARY KEY (`course_id`),
  UNIQUE KEY `course_id_UNIQUE` (`course_id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `academic_details`
--

LOCK TABLES `academic_details` WRITE;
/*!40000 ALTER TABLE `academic_details` DISABLE KEYS */;
INSERT INTO `academic_details` VALUES (97,'SSC','GSEB','2017','87',2,0),(97,'HSC','GHSEB','2019','88',3,0),(97,'BE','GTU','2023','8.8',4,0),(98,'SSC','GSEB','2019','77',5,0),(99,'BCA','GTU','2024','46',6,0),(100,'SSC','GTU','2016','67',7,1),(100,'HSC','GSEB','2018','69',8,1),(101,'SSC','GTU','2015','78',9,0),(101,'HSC','GSEB','2018','65',10,0),(101,'BTech','GTU','2023','7.9',11,0),(113,'SSC','GSEB','97','589',23,1),(114,'SSC','GSEB','97','589',24,0),(115,'SSC','GSEB','97','589',25,0),(116,'SSC','GSEB','97','589',26,0),(117,'SSC','GSEB','97','589',27,0),(118,'SSC','GSEB','97','589',28,0),(119,'SSC','GSEB','97','589',29,0),(120,'SSC','GTU','2015','78',30,0),(120,'HSC','GSEB','2018','65',31,0),(120,'BTech','GTU','2023','7.9',32,0),(120,'SSC','GSEB','','',33,0),(121,'SSC','GTU','2015','78',34,1),(121,'HSC','GSEB','2018','65',35,1),(121,'BTech','GTU','2023','7.9',36,1),(122,'SSC','GSEB','97','589',37,0),(123,'SSC','GTU','2015','78',38,0),(123,'HSC','GSEB','2018','65',39,0),(123,'BTech','GTU','2023','7.9',40,0),(123,'BE','GTU','2322','2',41,0),(124,'SSC','GTU','2015','78',42,1),(124,'HSC','GSEB','2018','65',43,1),(124,'BTech','GTU','2023','7.9',44,1),(124,'BE','GTU','2322','2',45,1),(125,'SSC','GTU','2015','78',46,0),(125,'HSC','GSEB','2018','65',47,0),(125,'BTech','GTU','2023','7.9',48,0),(125,'BE','GTU','2322','2',49,0),(125,'SSC','GSEB','','',50,0),(126,'SSC','GTU','2015','78',51,0),(126,'HSC','GSEB','2018','65',52,0),(126,'BTech','GTU','2023','7.9',53,0),(126,'BE','GTU','2322','2',54,0),(126,'SSC','GSEB','','',55,0),(127,'SSC','GTU','2016','67',56,0),(127,'HSC','GSEB','2018','69',57,0);
/*!40000 ALTER TABLE `academic_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `basic_details`
--

DROP TABLE IF EXISTS `basic_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `basic_details` (
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `gender` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `date_of_birth` varchar(20) NOT NULL,
  `contact_number` varchar(20) NOT NULL,
  `email_id` varchar(45) NOT NULL,
  `candidate_id` int NOT NULL AUTO_INCREMENT,
  `created_time` varchar(45) DEFAULT NULL,
  `designation` varchar(45) NOT NULL,
  `address1` varchar(45) NOT NULL,
  `address2` varchar(45) NOT NULL,
  `city` varchar(45) NOT NULL,
  `state` varchar(45) NOT NULL,
  `zipCode` varchar(45) NOT NULL,
  `relationshipStatus` varchar(45) NOT NULL,
  `isDeleted` varchar(45) DEFAULT '0',
  PRIMARY KEY (`candidate_id`),
  UNIQUE KEY `candidate_id_UNIQUE` (`candidate_id`)
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `basic_details`
--

LOCK TABLES `basic_details` WRITE;
/*!40000 ALTER TABLE `basic_details` DISABLE KEYS */;
INSERT INTO `basic_details` VALUES ('Jaini','Mehta','Female','2002-03-16','1234554321','jaini19@gmail.com',97,'2023-02-17 07:01:09','Software Developer','Prahladnagar','Satellite','Ahmedabad','Gujarat','213425','Single','0'),('Khushi','Bhavsar','Female','2006-10-12','1231231310','khushi@gmail.com',98,'2023-02-17 07:06:38','Backend Developer','Jaimangal','Ahmedabad','Ahmedabad','Gujarat','212323','Married','1'),('Om','Modi','Male','2001-07-17','1234554323','om@gmail.com',99,'2023-02-17 07:09:38','Python Developer','Jankinagar','Idar','Idar','Gujarat','213428','Married','1'),('Milan','Chudasma','Male','2001-07-21','1234121323','milan21@gmail.com',100,'2023-02-17 08:07:44','React Developer','Memnagar','Bhavnagar','Bhavnagar','Gujarat','213434','Married','1'),('Suhani','Chaudhry','Female','2001-02-21','1234122232','suhani@gmail.com',101,'2023-02-17 08:12:21','PHP Developer','Chaudhrynagar','Mumbai','Mumbai','Maharashtra','213478','Divorced','0'),('WDFER','VCERF','Male','2023-02-01','123','CE@DEF.CGH',113,'2023-02-21 05:41:19','CEFR','EFRC','HZHGB','Vishakhapatnam','3','646','Married','1'),('WDFER','VCERF','Male','2023-02-01','123','CE@DEF.CGH',114,'2023-02-21 05:42:01','CEFR','EFRC','HZHGB','Vishakhapatnam','3','646','Married','0'),('WDFER','VCERF','Male','2023-02-01','123','CE@DEF.CGH',115,'2023-02-21 05:42:02','CEFR','EFRC','HZHGB','Vishakhapatnam','3','646','Married','0'),('WDFER','VCERF','Male','2023-02-01','123','CE@DEF.CGH',116,'2023-02-21 05:42:14','CEFR','EFRC','HZHGB','Vishakhapatnam','3','646','Married','1'),('WDFER','VCERF','Male','2023-02-01','123','CE@DEF.CGH',117,'2023-02-21 05:42:15','CEFR','EFRC','HZHGB','Vishakhapatnam','3','646','Married','0'),('WDFER','VCERF','Male','2023-02-01','123','CE@DEF.CGH',118,'2023-02-21 05:42:16','CEFR','EFRC','HZHGB','Vishakhapatnam','3','646','Married','0'),('WDFER','VCERF','Male','2023-02-01','123','CE@DEF.CGH',119,'2023-02-21 05:42:17','CEFR','EFRC','HZHGB','Vishakhapatnam','3','646','Married','0'),('Suhani','Chaudhry','Female','2001-02-21','1234122232','suhani@gmail.com',120,'2023-02-24 12:44:37','PHP Developer','Chaudhrynagar','Mumbai','Mumbai','2','213478','Single','0'),('Suhani','Chaudhry','Female','2001-02-21','1234122232','suhani@gmail.com',121,'2023-02-24 12:54:30','PHP Developer','Chaudhrynagar','Mumbai','Mumbai','2','213478','Single','1'),('WDFER','VCERF','Male','2023-02-01','123','CE@DEF.CGH',122,'2023-02-25 10:08:33','CEFR','EFRC','HZHGB','Vishakhapatnam','1','646','Single','0'),('Suhan','Chaudhry','Male','2001-02-14','1234122232','suhani@gmail.com',123,'2023-02-25 10:12:04','Java Developer','Chaudhrynagar','Mumbai','Nagpur','1','213479','Married','0'),('Suhan','Chaudhry','Male','2001-02-14','1234122232','suhani@gmail.com',124,'2023-02-25 10:13:11','Java Developer','Chaudhrynagar','Mumbai','Nagpur','1','213479','Married','1'),('jSEDNO','Chaudhry','Male','2001-02-14','1234122232','suhani@gmail.com',125,'2023-02-25 10:18:47','Java Developer','Chaudhrynagar','Mumbai','Nagpur','1','213479','Single','0'),('jSEDNO','Chaudhry','Male','2001-02-14','1234122232','suhani@gmail.com',126,'2023-02-25 10:21:53','Java Developer','Chaudhrynagar','Mumbai','Nagpur','1','213479','Single','0'),('Milan','Chudasma','Male','2001-07-21','1234121323','milan21@gmail.com',127,'2023-02-25 11:14:17','React Developer','Memnagar','Bhavnagar','Bhavnagar','1','213434','Single','0');
/*!40000 ALTER TABLE `basic_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `city_master`
--

DROP TABLE IF EXISTS `city_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `city_master` (
  `city_id` int NOT NULL,
  `state_id` int DEFAULT NULL,
  `city_name` varchar(45) DEFAULT NULL,
  `city_key` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`city_id`),
  KEY `fk_city_master_1_idx` (`state_id`),
  CONSTRAINT `fk_city_master_1` FOREIGN KEY (`state_id`) REFERENCES `state_master` (`state_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city_master`
--

LOCK TABLES `city_master` WRITE;
/*!40000 ALTER TABLE `city_master` DISABLE KEYS */;
INSERT INTO `city_master` VALUES (1,1,'Vadodara','Vadodara'),(2,1,'Rajkot','Rajkot'),(3,2,'Mumbai','Mumbai'),(4,2,'Pune','Pune'),(5,2,'Nagpur','Nagpur'),(6,2,'Thane','Thane'),(7,3,'Vishakhapatnam','Vishakhapatnam'),(8,3,'Vijayawada','Vijayawada'),(9,3,'Guntur','Guntur'),(10,4,'Changlang','Changlang'),(11,4,'Tezu','Tezu');
/*!40000 ALTER TABLE `city_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `experience`
--

DROP TABLE IF EXISTS `experience`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `experience` (
  `company_id` int NOT NULL AUTO_INCREMENT,
  `company_name` varchar(45) DEFAULT NULL,
  `designation` varchar(45) DEFAULT NULL,
  `company_join_date` varchar(20) DEFAULT NULL,
  `company_leave_date` varchar(20) DEFAULT NULL,
  `candidate_id` int DEFAULT NULL,
  `isDeleted` int DEFAULT '0',
  PRIMARY KEY (`company_id`),
  UNIQUE KEY `company_id_UNIQUE` (`company_id`),
  KEY `fk_experience_1_idx` (`candidate_id`),
  CONSTRAINT `fk_experience_1` FOREIGN KEY (`candidate_id`) REFERENCES `basic_details` (`candidate_id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `experience`
--

LOCK TABLES `experience` WRITE;
/*!40000 ALTER TABLE `experience` DISABLE KEYS */;
INSERT INTO `experience` VALUES (2,'Asite','Backend Developer','2022-07-15','2023-02-17',97,0),(3,'Simforms','Python Developer','2022-03-18','2023-01-31',98,0),(4,'Google','Python Developer','2022-08-17','2023-02-08',99,0),(5,'FST','Node Developer','2022-08-03','2023-03-08',100,1),(6,'Synoverge','Node Developer','2022-08-16','2023-03-08',101,0),(15,'BK,','CGHJ','2023-02-22','2023-03-07',113,1),(16,'BK,','CGHJ','2023-02-22','2023-03-07',114,0),(17,'BK,','CGHJ','2023-02-22','2023-03-07',115,0),(18,'BK,','CGHJ','2023-02-22','2023-03-07',116,0),(19,'BK,','CGHJ','2023-02-22','2023-03-07',117,0),(20,'BK,','CGHJ','2023-02-22','2023-03-07',118,0),(21,'BK,','CGHJ','2023-02-22','2023-03-07',119,0),(22,'Synoverge','Node Developer','2022-08-16','2023-03-08',121,1),(23,'BK,','CGHJ','2023-02-22','2023-03-07',122,0),(24,'Synoverge','Node Developer','2022-08-16','2023-03-08',124,1),(25,'dfha','dfcaw','2023-02-09','2023-02-07',124,1),(26,'undefined','undefined','undefined','undefined',124,1),(27,'undefined','undefined','undefined','undefined',124,1),(28,'Synoverge','Node Developer','2022-08-16','2023-03-08',125,0),(29,'dfha','dfcaw','2023-02-09','2023-02-07',125,0),(30,'undefined','undefined','','',125,0),(31,'undefined','undefined','','',125,0),(32,'undefined','undefined','undefined','undefined',125,0),(33,'Synoverge','Node Developer','2022-08-16','2023-03-08',126,0),(34,'dfha','dfcaw','2023-02-09','2023-02-07',126,0),(35,'undefined','undefined','','',126,0),(36,'undefined','undefined','','',126,0),(37,'undefined','undefined','undefined','undefined',126,0),(38,'FST','Node Developer','2022-08-03','2023-03-08',127,0),(39,'Cybercon','Java Developer','2023-02-23','2023-02-10',127,0);
/*!40000 ALTER TABLE `experience` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `languages` (
  `language_id` int NOT NULL AUTO_INCREMENT,
  `canRead` varchar(45) DEFAULT NULL,
  `canWrite` varchar(45) DEFAULT NULL,
  `canSpeak` varchar(45) DEFAULT NULL,
  `candidate_id` int DEFAULT NULL,
  `language_name` varchar(45) DEFAULT NULL,
  `isDeleted` int DEFAULT '0',
  PRIMARY KEY (`language_id`),
  KEY `fk_languages_1_idx` (`candidate_id`),
  CONSTRAINT `fk_languages_1` FOREIGN KEY (`candidate_id`) REFERENCES `basic_details` (`candidate_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,'yes','no','no',97,'Hindi',0),(2,'yes','no','yes',97,'Gujarati',0),(3,'no','yes','no',98,'Hindi',0),(4,'yes','no','no',98,'Gujarati',0),(5,'yes','no','no',99,'Hindi',0),(6,'yes','no','yes',99,'Gujarati',0),(7,'yes','yes','no',100,'Hindi',1),(8,'no','no','yes',100,'Gujarati',1),(9,'no','no','yes',100,'English',1),(10,'yes','no','yes',101,'Hindi',0),(11,'no','no','yes',101,'Gujarati',0),(12,'yes','yes','yes',101,'English',0),(13,'yes','no','yes',113,'Gujarati',1),(14,'yes','no','yes',114,'Gujarati',0),(15,'yes','no','yes',115,'Gujarati',0),(16,'yes','no','yes',116,'Gujarati',0),(17,'yes','no','yes',117,'Gujarati',0),(18,'yes','no','yes',118,'Gujarati',0),(19,'yes','no','yes',119,'Gujarati',0),(20,'yes','no','no',121,'Hindi',1),(21,'no','no','no',121,'Gujarati',1),(22,'yes','yes','no',121,'English',1),(23,'yes','no','no',122,'Gujarati',0),(24,'yes','no','no',124,'Hindi',1),(25,'yes','no','no',124,'Gujarati',1),(26,'no','no','no',124,'Marathi',1),(27,'yes','no','no',125,'Hindi',0),(28,'yes','no','no',125,'Gujarati',0),(29,'yes','no','no',125,'English',0),(30,'yes','no','no',125,'Marathi',0),(31,'yes','no','no',126,'Hindi',0),(32,'yes','no','no',126,'Gujarati',0),(33,'yes','no','no',126,'English',0),(34,'no','no','no',126,'Marathi',0),(35,'yes','yes','no',127,'Hindi',0),(36,'no','yes','no',127,'Gujarati',0),(37,'no','no','no',127,'English',0),(38,'yes','no','no',127,'Marathi',0);
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `option_master`
--

DROP TABLE IF EXISTS `option_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `option_master` (
  `option_id` int NOT NULL AUTO_INCREMENT,
  `select_id` int NOT NULL,
  `option_value` varchar(45) DEFAULT NULL,
  `option_key` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_id_UNIQUE` (`option_id`),
  KEY `fk_option_master_1_idx` (`select_id`),
  CONSTRAINT `fk_option_master_1` FOREIGN KEY (`select_id`) REFERENCES `select_master` (`select_id`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `option_master`
--

LOCK TABLES `option_master` WRITE;
/*!40000 ALTER TABLE `option_master` DISABLE KEYS */;
INSERT INTO `option_master` VALUES (36,1,'Gujarat','Gujarat'),(37,1,'Maharashtra','Maharashtra'),(38,1,'Andhra Pradesh','Andhra Pradesh'),(39,2,'Single','Single'),(40,2,'Married','Married'),(41,2,'Divorced','Divorced'),(42,3,'SSC','SSC'),(43,3,'HSC','HSC'),(44,3,'Diploma','Diploma'),(45,3,'BE','BE'),(46,3,'BCA','BCA'),(47,3,'BTech','BTech'),(48,3,'ME','ME'),(49,3,'MCA','MCA'),(50,3,'MTech','MTech'),(51,4,'GSEB','GSEB'),(52,4,'GHSEB','GHSEB'),(53,4,'CBSE','CBSE'),(54,4,'GTU','GTU'),(55,5,'Hindi','Hindi'),(56,5,'Gujarati','Gujarati'),(57,5,'English','English'),(58,5,'Marathi','Marathi'),(59,6,'C','C'),(60,6,'C++',NULL),(61,6,'Javascript','C++'),(62,6,'Java','Java'),(63,6,'Python','Python'),(64,6,'PHP','PHP'),(65,7,'Ahmedabad','Ahmedabad'),(66,7,'Gandhinagar','Gandhinagar'),(67,7,'Bhavnagar','Bhavnagar'),(68,7,'Vadodara','Vadodara'),(69,7,'Surat','Surat'),(70,8,'Frontend','Frontend'),(71,8,'Backend','Backend'),(72,8,'Full Stack','Full Stack'),(73,8,'DevOps','DevOps'),(74,8,NULL,NULL);
/*!40000 ALTER TABLE `option_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `preferences`
--

DROP TABLE IF EXISTS `preferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `preferences` (
  `preference_id` int NOT NULL AUTO_INCREMENT,
  `prefered_location` varchar(45) DEFAULT NULL,
  `notice_period` varchar(45) DEFAULT NULL,
  `expected_ctc` varchar(45) DEFAULT NULL,
  `current_ctc` varchar(45) DEFAULT NULL,
  `candidate_id` int NOT NULL,
  `prefered_department` varchar(45) DEFAULT NULL,
  `isDeleted` int DEFAULT '0',
  PRIMARY KEY (`preference_id`),
  KEY `fk_preferences_1_idx` (`candidate_id`),
  CONSTRAINT `fk_preferences_1` FOREIGN KEY (`candidate_id`) REFERENCES `basic_details` (`candidate_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `preferences`
--

LOCK TABLES `preferences` WRITE;
/*!40000 ALTER TABLE `preferences` DISABLE KEYS */;
INSERT INTO `preferences` VALUES (1,'Gandhinagar','3','5','3.8',97,'Backend',0),(2,'Bhavnagar','3','4','4.5',98,'Full Stack',0),(3,'Bhavnagar','3','4','3.8',99,'Frontend',0),(4,'Ahmedabad','2','5','3.5',100,'Full Stack',1),(5,'Vadodara','1','7','6.5',101,'Backend',0),(14,'Bhavnagar','67','47','76',113,'undefined',1),(15,'Bhavnagar','67','47','76',114,'undefined',0),(16,'Bhavnagar','67','47','76',115,'undefined',0),(17,'Bhavnagar','67','47','76',116,'undefined',0),(18,'Bhavnagar','67','47','76',117,'undefined',0),(19,'Bhavnagar','67','47','76',118,'undefined',0),(20,'Bhavnagar','67','47','76',119,'undefined',0),(21,'Vadodara','1','7','6.5',121,'Backend',1),(22,'Bhavnagar','67','47','76',122,'undefined',0),(23,'Gandhinagar','12','72','6.52',124,'Full Stack',1),(24,'Gandhinagar','12','72','6.52',125,'DevOps',0),(25,'Gandhinagar','12','72','6.52',126,'DevOps',0),(26,'Ahmedabad','2','5','3.5',127,'Full Stack',0);
/*!40000 ALTER TABLE `preferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `references`
--

DROP TABLE IF EXISTS `references`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `references` (
  `reference_id` int NOT NULL AUTO_INCREMENT,
  `reference_name` varchar(45) NOT NULL,
  `reference_contact` varchar(45) NOT NULL,
  `reference_relation` varchar(45) NOT NULL,
  `candidate_id` int NOT NULL,
  `isDeleted` int DEFAULT '0',
  PRIMARY KEY (`reference_id`),
  UNIQUE KEY `reference_id_UNIQUE` (`reference_id`),
  KEY `fk_references_1_idx` (`candidate_id`),
  CONSTRAINT `fk_references_1` FOREIGN KEY (`candidate_id`) REFERENCES `basic_details` (`candidate_id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `references`
--

LOCK TABLES `references` WRITE;
/*!40000 ALTER TABLE `references` DISABLE KEYS */;
INSERT INTO `references` VALUES (1,'Sahil','4532567854','Friend',97,0),(2,'Shraddha','2345432398','Friend',97,0),(3,'Janvi','1232454353','Friend',98,0),(4,'Kartik','2345431398','Friend',99,0),(5,'Nihol','2345211398','Sister',100,1),(6,'Nikita','2343409876','Friend',101,0),(15,'CJK,','1232454353','Sister',113,1),(16,'CJK,','1232454353','Sister',114,0),(17,'CJK,','1232454353','Sister',115,0),(18,'CJK,','1232454353','Sister',116,0),(19,'CJK,','1232454353','Sister',117,0),(20,'CJK,','1232454353','Sister',118,0),(21,'CJK,','1232454353','Sister',119,0),(22,'Nikita','2343409876','Friend',121,1),(23,'CJK,','1232454353','Sister',122,0),(24,'Nikita','2343409876','Friend',124,1),(25,'sdvr','dsfca','sdfv',124,1),(26,'Nikita','2343409876','Friend',125,0),(27,'sdvr','dsfca','sdfv',125,0),(28,'Nikita','2343409876','Friend',126,0),(29,'sdvr','dsfca','sdfv',126,0),(30,'Nihol','2345211398','Fri',127,0),(31,'Niharika','34124','Fri',127,0);
/*!40000 ALTER TABLE `references` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `select_master`
--

DROP TABLE IF EXISTS `select_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `select_master` (
  `select_id` int NOT NULL AUTO_INCREMENT,
  `select_value` varchar(45) NOT NULL,
  `select_key` varchar(45) NOT NULL,
  PRIMARY KEY (`select_id`),
  UNIQUE KEY `select_id_UNIQUE` (`select_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `select_master`
--

LOCK TABLES `select_master` WRITE;
/*!40000 ALTER TABLE `select_master` DISABLE KEYS */;
INSERT INTO `select_master` VALUES (1,'states','global_states'),(2,'relationship_status','relationship_status'),(3,'education_course','education_course'),(4,'course_board','course_board'),(5,'languages_known','languages_known'),(6,'technologies_known','technologies_known'),(7,'prefered_job_location','prefered_job_location'),(8,'prefered_job_department','prefered_job_department');
/*!40000 ALTER TABLE `select_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `state_master`
--

DROP TABLE IF EXISTS `state_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `state_master` (
  `state_id` int NOT NULL AUTO_INCREMENT,
  `state_name` varchar(45) DEFAULT NULL,
  `state_key` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`state_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `state_master`
--

LOCK TABLES `state_master` WRITE;
/*!40000 ALTER TABLE `state_master` DISABLE KEYS */;
INSERT INTO `state_master` VALUES (1,'Gujarat','Gujarat'),(2,'Maharashtra','Maharashtra'),(3,'Andhra Pradesh','Andhra Pradesh'),(4,'Arunachal Pradesh','Arunachal Pradesh'),(5,'Assam','Assam'),(6,'Bihar','Bihar'),(7,'Chhattisgarh','Chhattisgarh');
/*!40000 ALTER TABLE `state_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `technologies`
--

DROP TABLE IF EXISTS `technologies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `technologies` (
  `technology_id` int NOT NULL AUTO_INCREMENT,
  `candidate_id` int DEFAULT NULL,
  `technology_name` varchar(45) DEFAULT NULL,
  `learning_status` varchar(45) DEFAULT NULL,
  `isDeleted` int DEFAULT '0',
  PRIMARY KEY (`technology_id`),
  KEY `fk_technologies_1_idx` (`candidate_id`),
  CONSTRAINT `fk_technologies_1` FOREIGN KEY (`candidate_id`) REFERENCES `basic_details` (`candidate_id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `technologies`
--

LOCK TABLES `technologies` WRITE;
/*!40000 ALTER TABLE `technologies` DISABLE KEYS */;
INSERT INTO `technologies` VALUES (1,97,'C','Beginner',0),(2,97,'C++','Intermediate',0),(3,97,'Javascript','Expert',0),(4,98,'C','Beginner',0),(5,98,'Javascript','Intermediate',0),(6,99,'C','Beginner',0),(7,99,'Javascript','Intermediate',0),(8,100,'C','Beginner',1),(9,100,'C++','Intermediate',1),(10,100,'Javascript','Intermediate',1),(11,101,'C','Beginner',0),(12,101,'C++','Intermediate',0),(13,101,'Javascript','Intermediate',0),(14,101,'Java','Expert',0),(15,113,'C','Intermediate',1),(16,113,'C','undefined',1),(17,114,'C','Intermediate',0),(18,114,'C','undefined',0),(19,115,'C','Intermediate',0),(20,115,'C','undefined',0),(21,116,'C','Intermediate',0),(22,116,'C','undefined',0),(23,117,'C','Intermediate',0),(24,117,'C','undefined',0),(25,118,'C','Intermediate',0),(26,118,'C','undefined',0),(27,119,'C','Intermediate',0),(28,119,'C','undefined',0),(29,121,'C','Beginner',1),(30,121,'C++','Intermediate',1),(31,121,'Javascript','Intermediate',1),(32,121,'Java','Expert',1),(33,121,'C','undefined',1),(34,121,'C++','undefined',1),(35,121,'Javascript','undefined',1),(36,121,'Java','undefined',1),(37,122,'C','Intermediate',0),(38,122,'C','Intermediate',0),(39,122,'C','undefined',0),(40,122,'C','undefined',0),(41,124,'C','Beginner',1),(42,124,'C','Beginner',1),(43,124,'C++','Intermediate',1),(44,124,'Javascript','Intermediate',1),(45,124,'Javascript','Intermediate',1),(46,124,'Java','Intermediate',1),(47,124,'C','undefined',1),(48,124,'C','undefined',1),(49,124,'C++','undefined',1),(50,124,'Javascript','undefined',1),(51,125,'C','Expert',0),(52,125,'C','Expert',0),(53,125,'C','Expert',0),(54,125,'C','Expert',0),(55,125,'C++','Intermediate',0),(56,125,'C++','Intermediate',0),(57,125,'Javascript','Expert',0),(58,125,'Javascript','Expert',0),(59,125,'Javascript','Expert',0),(60,125,'Java','Expert',0),(61,125,'C','undefined',0),(62,125,'C','undefined',0),(63,125,'C','undefined',0),(64,125,'C','undefined',0),(65,126,'C','Expert',0),(66,126,'C','Expert',0),(67,126,'C','Expert',0),(68,126,'C','Expert',0),(69,126,'C++','Intermediate',0),(70,126,'C++','Intermediate',0),(71,126,'Javascript','Expert',0),(72,126,'Javascript','Expert',0),(73,126,'Javascript','Expert',0),(74,126,'Java','Expert',0),(75,126,'C','undefined',0),(76,126,'C','undefined',0),(77,126,'C','undefined',0),(78,126,'C','undefined',0),(79,127,'C','Beginner',0),(80,127,'C++','Intermediate',0),(81,127,'Javascript','Intermediate',0),(82,127,'Java','Expert',0),(83,127,'C','undefined',0),(84,127,'C++','undefined',0),(85,127,'Javascript','undefined',0),(86,127,'Java','undefined',0);
/*!40000 ALTER TABLE `technologies` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-11 18:06:50
