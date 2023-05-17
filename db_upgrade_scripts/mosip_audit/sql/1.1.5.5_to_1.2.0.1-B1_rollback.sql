-- -------------------------------------------------------------------------------------------------
-- Database Name: mosip_audit
-- Release Version 	: 1.2.0-SNAPSHOT
-- Purpose    		: Revoking Database Alter deployement done for release in Audit DB.       
-- Create By   		: Sadanandegowda DM
-- Created Date		: Sep-2020
-- 
-- Modified Date        Modified By         Comments / Remarks
-- -------------------------------------------------------------------------------------------------

\c mosip_audit sysadmin

--This only need to execute if no rows added after upgradescripts for host_ip column---------------
ALTER TABLE audit.app_audit_log ALTER COLUMN host_ip TYPE varchar(16) USING host_ip::varchar;