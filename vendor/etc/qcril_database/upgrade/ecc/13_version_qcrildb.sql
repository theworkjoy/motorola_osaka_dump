BEGIN TRANSACTION;

CREATE TABLE IF NOT EXISTS qcril_properties_table (property TEXT,value TEXT, PRIMARY KEY(property));
INSERT OR REPLACE INTO qcril_properties_table (property, value) VALUES ('qcrildb_version', 13);


DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '222' AND MNC = '88';
DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '222' AND MNC = '99';

COMMIT TRANSACTION;


