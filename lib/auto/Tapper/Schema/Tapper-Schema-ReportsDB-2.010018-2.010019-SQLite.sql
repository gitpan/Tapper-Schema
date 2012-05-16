-- Convert schema 'upgrades/Tapper-Schema-ReportsDB-2.010018-SQLite.sql' to 'upgrades/Tapper-Schema-ReportsDB-2.010019-SQLite.sql':

BEGIN;

CREATE TEMPORARY TABLE report_temp_alter (
  id INTEGER PRIMARY KEY NOT NULL,
  suite_id INT(11),
  suite_version VARCHAR(11),
  reportername VARCHAR(100) DEFAULT '',
  peeraddr VARCHAR(20) DEFAULT '',
  peerport VARCHAR(20) DEFAULT '',
  peerhost VARCHAR(255) DEFAULT '',
  tap LONGBLOB NOT NULL DEFAULT '',
  tapdata LONGBLOB NOT NULL DEFAULT '',
  successgrade VARCHAR(10) DEFAULT '',
  reviewed_successgrade VARCHAR(10) DEFAULT '',
  total INT(10),
  failed INT(10),
  parse_errors INT(10),
  passed INT(10),
  skipped INT(10),
  todo INT(10),
  todo_passed INT(10),
  wait INT(10),
  exit INT(10),
  success_ratio VARCHAR(20),
  starttime_test_program DATETIME,
  endtime_test_program DATETIME,
  machine_name VARCHAR(50) DEFAULT '',
  machine_description TEXT DEFAULT '',
  created_at DATETIME NOT NULL,
  updated_at DATETIME NOT NULL
);
INSERT INTO report_temp_alter SELECT id, suite_id, suite_version, reportername, peeraddr, peerport, peerhost, tap, tapdata, successgrade, reviewed_successgrade, total, failed, parse_errors, passed, skipped, todo, todo_passed, wait, exit, success_ratio, starttime_test_program, endtime_test_program, machine_name, machine_description, created_at, updated_at FROM report;
DROP TABLE report;
CREATE TABLE report (
  id INTEGER PRIMARY KEY NOT NULL,
  suite_id INT(11),
  suite_version VARCHAR(11),
  reportername VARCHAR(100) DEFAULT '',
  peeraddr VARCHAR(20) DEFAULT '',
  peerport VARCHAR(20) DEFAULT '',
  peerhost VARCHAR(255) DEFAULT '',
  tap LONGBLOB NOT NULL DEFAULT '',
  tapdata LONGBLOB NOT NULL DEFAULT '',
  successgrade VARCHAR(10) DEFAULT '',
  reviewed_successgrade VARCHAR(10) DEFAULT '',
  total INT(10),
  failed INT(10),
  parse_errors INT(10),
  passed INT(10),
  skipped INT(10),
  todo INT(10),
  todo_passed INT(10),
  wait INT(10),
  exit INT(10),
  success_ratio VARCHAR(20),
  starttime_test_program DATETIME,
  endtime_test_program DATETIME,
  machine_name VARCHAR(50) DEFAULT '',
  machine_description TEXT DEFAULT '',
  created_at DATETIME NOT NULL,
  updated_at DATETIME NOT NULL
);
CREATE INDEX report_idx_suite_id_report_00 ON report (suite_id);
INSERT INTO report SELECT id, suite_id, suite_version, reportername, peeraddr, peerport, peerhost, tap, tapdata, successgrade, reviewed_successgrade, total, failed, parse_errors, passed, skipped, todo, todo_passed, wait, exit, success_ratio, starttime_test_program, endtime_test_program, machine_name, machine_description, created_at, updated_at FROM report_temp_alter;
DROP TABLE report_temp_alter;











COMMIT;
