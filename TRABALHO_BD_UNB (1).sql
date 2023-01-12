prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- Oracle APEX export file
--
-- You should run the script connected to SQL*Plus as the owner (parsing schema)
-- of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_imp.import_begin (
 p_version_yyyy_mm_dd=>'2022.10.07'
,p_default_workspace_id=>36466131036907718637
);
end;
/
prompt  WORKSPACE 36466131036907718637
--
-- Workspace, User Group, User, and Team Development Export:
--   Date and Time:   20:17 Monday January 9, 2023
--   Exported By:     HYPERLOBE2@GMAIL.COM
--   Export Type:     Workspace Export
--   Version:         22.2.0
--   Instance ID:     63113759365424
--
-- Import:
--   Using Instance Administration / Manage Workspaces
--   or
--   Using SQL*Plus as the Oracle user APEX_220200
 
begin
    wwv_flow_imp.set_security_group_id(p_security_group_id=>36466131036907718637);
end;
/
----------------
-- W O R K S P A C E
-- Creating a workspace will not create database schemas or objects.
-- This API creates only the meta data for this APEX workspace
prompt  Creating workspace TRABALHO_BD_UNB...
begin
wwv_flow_fnd_user_api.create_company (
  p_id => 36467952775912754041
 ,p_provisioning_company_id => 36466131036907718637
 ,p_short_name => 'TRABALHO_BD_UNB'
 ,p_display_name => 'TRABALHO_BD_UNB'
 ,p_first_schema_provisioned => 'WKSP_TRABALHOBDUNB'
 ,p_company_schemas => 'WKSP_TRABALHOBDUNB'
 ,p_account_status => 'ASSIGNED'
 ,p_allow_plsql_editing => 'Y'
 ,p_allow_app_building_yn => 'Y'
 ,p_allow_packaged_app_ins_yn => 'Y'
 ,p_allow_sql_workshop_yn => 'Y'
 ,p_allow_team_development_yn => 'Y'
 ,p_allow_to_be_purged_yn => 'Y'
 ,p_allow_restful_services_yn => 'Y'
 ,p_source_identifier => 'TRABALHO'
 ,p_webservice_logging_yn => 'Y'
 ,p_path_prefix => 'TRABALHO_BD_UNB'
 ,p_files_version => 1
 ,p_env_banner_yn => 'N'
 ,p_env_banner_pos => 'LEFT'
);
end;
/
----------------
-- G R O U P S
--
prompt  Creating Groups...
begin
wwv_flow_fnd_user_api.create_user_group (
  p_id => 111224556075029,
  p_GROUP_NAME => 'OAuth2 Client Developer',
  p_SECURITY_GROUP_ID => 10,
  p_GROUP_DESC => 'Users authorized to register OAuth2 Client Applications');
end;
/
begin
wwv_flow_fnd_user_api.create_user_group (
  p_id => 111140893075029,
  p_GROUP_NAME => 'RESTful Services',
  p_SECURITY_GROUP_ID => 10,
  p_GROUP_DESC => 'Users authorized to use RESTful Services with this workspace');
end;
/
begin
wwv_flow_fnd_user_api.create_user_group (
  p_id => 111073851075029,
  p_GROUP_NAME => 'SQL Developer',
  p_SECURITY_GROUP_ID => 10,
  p_GROUP_DESC => 'Users authorized to use SQL Developer with this workspace');
end;
/
prompt  Creating group grants...
----------------
-- U S E R S
-- User repository for use with APEX cookie-based authentication.
--
prompt  Creating Users...
begin
wwv_flow_fnd_user_api.create_fnd_user (
  p_user_id                      => '36466130984016718637',
  p_user_name                    => 'HYPERLOBE2@GMAIL.COM',
  p_first_name                   => 'JOAO VICTOR ALVES',
  p_last_name                    => 'SANTOS',
  p_description                  => '',
  p_email_address                => 'hyperlobe2@gmail.com',
  p_web_password                 => '42F51C3812E56207AB63003FD40FE6BC7BF3E5C2D1F53AB76B9272FC2B447D1FCC3E6EFF32F338F17B1DF95BE8A22CF35B769C72855EEFB7E83A4310BE936BF9',
  p_web_password_format          => '5;5;10000',
  p_group_ids                    => '',
  p_developer_privs              => 'ADMIN:CREATE:DATA_LOADER:EDIT:HELP:MONITOR:SQL',
  p_default_schema               => 'WKSP_TRABALHOBDUNB',
  p_account_locked               => 'N',
  p_account_expiry               => to_date('202301051246','YYYYMMDDHH24MI'),
  p_failed_access_attempts       => 0,
  p_change_password_on_first_use => 'Y',
  p_first_password_use_occurred  => 'Y',
  p_allow_app_building_yn        => 'Y',
  p_allow_sql_workshop_yn        => 'Y',
  p_allow_team_development_yn    => 'Y',
  p_allow_access_to_schemas      => '');
end;
/
---------------------------
-- D G  B L U E P R I N T S
-- Creating Data Generator Blueprints...
----------------
--Click Count Logs
--
----------------
--mail
--
----------------
--mail log
--
----------------
--app models
--
----------------
--password history
--
begin
  wwv_imp_workspace.create_password_history (
    p_id => 36467952968006754051,
    p_user_id => 36466130984016718637,
    p_password => 'BFB939E803A12AA892D4059B521EC2BF7C8AC335C0A1D6262441F4E53BAEB13E69DBBA68A23AA9E5BEF88421DEA4AA42FFA8FCEC0BF6A03F59FE270131D1B5F0');
end;
/
begin
  wwv_imp_workspace.create_password_history (
    p_id => 36468007718836085654,
    p_user_id => 36466130984016718637,
    p_password => '42F51C3812E56207AB63003FD40FE6BC7BF3E5C2D1F53AB76B9272FC2B447D1FCC3E6EFF32F338F17B1DF95BE8A22CF35B769C72855EEFB7E83A4310BE936BF9');
end;
/
----------------
--preferences
--
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 37775050870035638522,
    p_user_id => 'HYPERLOBE2@GMAIL.COM',
    p_preference_name => 'APEX_IG_665073618803777080_CURRENT_REPORT',
    p_attribute_value => '665079563548779201:GRID',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 37775087224239646377,
    p_user_id => 'HYPERLOBE2@GMAIL.COM',
    p_preference_name => 'CODE_LANGUAGE',
    p_attribute_value => 'PLSQL',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 37723603829957852078,
    p_user_id => 'HYPERLOBE2@GMAIL.COM',
    p_preference_name => 'FB_FLOW_ID',
    p_attribute_value => '51925',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 37740753494502496255,
    p_user_id => 'HYPERLOBE2@GMAIL.COM',
    p_preference_name => 'FSP4000_P34_R77549119545304597_SORT',
    p_attribute_value => 'sort_1_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 37729674331126069402,
    p_user_id => 'HYPERLOBE2@GMAIL.COM',
    p_preference_name => 'FSP_IR_4000_P1500_W3519715528105919',
    p_attribute_value => '3521529006112497____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 37723601968893852011,
    p_user_id => 'HYPERLOBE2@GMAIL.COM',
    p_preference_name => 'FSP_IR_4000_P1_W3326806401130228',
    p_attribute_value => '3328003692130542____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 37734738116387944165,
    p_user_id => 'HYPERLOBE2@GMAIL.COM',
    p_preference_name => 'FSP_IR_51925_P12_W37734730204820943374',
    p_attribute_value => '37734737658485944162____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 37737674117015049001,
    p_user_id => 'HYPERLOBE2@GMAIL.COM',
    p_preference_name => 'FSP_IR_51925_P16_W37737527213937370649',
    p_attribute_value => '37737673696500048998____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 37753917044555559815,
    p_user_id => 'HYPERLOBE2@GMAIL.COM',
    p_preference_name => 'FSP_IR_51925_P20_W37753171937006533130',
    p_attribute_value => '37753916535952559812____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 37756587358705779931,
    p_user_id => 'HYPERLOBE2@GMAIL.COM',
    p_preference_name => 'FSP_IR_51925_P24_W37757159030983437347',
    p_attribute_value => '37756586809046779928____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 37723774293692882169,
    p_user_id => 'HYPERLOBE2@GMAIL.COM',
    p_preference_name => 'FSP_IR_51925_P2_W37724514100353535090',
    p_attribute_value => '37723773755458882166____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 37728902523744710287,
    p_user_id => 'HYPERLOBE2@GMAIL.COM',
    p_preference_name => 'FSP_IR_51925_P7_W37728893359270709512',
    p_attribute_value => '37728902066114710284____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 37725925246324587676,
    p_user_id => 'HYPERLOBE2@GMAIL.COM',
    p_preference_name => 'PD_GAL_CUR_TAB',
    p_attribute_value => '2',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 37723600511097851891,
    p_user_id => 'HYPERLOBE2@GMAIL.COM',
    p_preference_name => 'PERSISTENT_ITEM_P1_DISPLAY_MODE',
    p_attribute_value => 'ICONS',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 37740753326200496244,
    p_user_id => 'HYPERLOBE2@GMAIL.COM',
    p_preference_name => 'PERSISTENT_ITEM_P34_ROWS',
    p_attribute_value => '',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 38135808576223664784,
    p_user_id => 'HYPERLOBE2@GMAIL.COM',
    p_preference_name => 'FSP_IR_4350_P55_W10236304983033455',
    p_attribute_value => '10238325656034902____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 37740326426443159325,
    p_user_id => 'HYPERLOBE2@GMAIL.COM',
    p_preference_name => 'FSP_IR_4000_P19_W451745617575288584',
    p_attribute_value => '451746507039288843____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 37729693830408071998,
    p_user_id => 'HYPERLOBE2@GMAIL.COM',
    p_preference_name => 'FSP_IR_4000_P4110_W1548412223182178',
    p_attribute_value => '1550029190194632____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 37740731532920489687,
    p_user_id => 'HYPERLOBE2@GMAIL.COM',
    p_preference_name => 'FSP_IR_4000_P939_W451352700445603348',
    p_attribute_value => '451353909559603360____',
    p_tenant_id => '');
end;
/
----------------
--query builder
--
----------------
--sql scripts
--
----------------
--sql commands
--
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 37685089058508346892
 ,p_command => 
'drop TABLE "TESTE"'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'HYPERLOBE2@GMAIL.COM'
    ,p_created_on => to_date('202301081725','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_TRABALHOBDUNB');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 37685127814586349966
 ,p_command => 
'drop TABLE "T_SOCIO"'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'HYPERLOBE2@GMAIL.COM'
    ,p_created_on => to_date('202301081725','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_TRABALHOBDUNB');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 37685211840849676366
 ,p_command => 
'drop TABLE "TESTE"'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'HYPERLOBE2@GMAIL.COM'
    ,p_created_on => to_date('202301081725','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_TRABALHOBDUNB');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 37685242329520678373
 ,p_command => 
'drop TABLE "T_CARTAO"'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'HYPERLOBE2@GMAIL.COM'
    ,p_created_on => to_date('202301081725','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_TRABALHOBDUNB');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 37686413760821729161
 ,p_command => 
'alter table "T_PRODUTOS" add'||wwv_flow.LF||
'("QUANTIDADE" NUMBER)'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'HYPERLOBE2@GMAIL.COM'
    ,p_created_on => to_date('202301081733','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_TRABALHOBDUNB');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 37686434199415730853
 ,p_command => 
'alter table "T_SOCIO" modify'||wwv_flow.LF||
'("NOME" VARCHAR2(50) NOT NULL)'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'HYPERLOBE2@GMAIL.COM'
    ,p_created_on => to_date('202301081734','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_TRABALHOBDUNB');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 37686464424521733278
 ,p_command => 
'alter table "T_SOCIO" modify'||wwv_flow.LF||
'("ATIVO" NUMBER(1,0) NOT NULL)'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'HYPERLOBE2@GMAIL.COM'
    ,p_created_on => to_date('202301081734','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_TRABALHOBDUNB');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 37686631118041405307
 ,p_command => 
'alter table "T_SOCIO" modify'||wwv_flow.LF||
'("CPF" NUMBER(12,0) NOT NULL)'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'HYPERLOBE2@GMAIL.COM'
    ,p_created_on => to_date('202301081734','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_TRABALHOBDUNB');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 37729179133486786835
 ,p_command => 
'alter table "T_PRODUTOS" modify'||wwv_flow.LF||
'("VALOR" NUMBER(2,0))'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'HYPERLOBE2@GMAIL.COM'
    ,p_created_on => to_date('202301082125','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_TRABALHOBDUNB');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 37736724952743009377
 ,p_command => 
'alter table "T_CARTAO" add'||wwv_flow.LF||
'("QUITADO" NUMBER(1))'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'HYPERLOBE2@GMAIL.COM'
    ,p_created_on => to_date('202301082202','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_TRABALHOBDUNB');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 37739652400855104711
 ,p_command => 
'alter table "T_CARTAO" drop column'||wwv_flow.LF||
'"ID_CONSUMO"'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'HYPERLOBE2@GMAIL.COM'
    ,p_created_on => to_date('202301082218','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_TRABALHOBDUNB');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 37742097715394590321
 ,p_command => 
'alter table "T_CARTAO" add'||wwv_flow.LF||
'("DATA_HORA" DATE)'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'HYPERLOBE2@GMAIL.COM'
    ,p_created_on => to_date('202301082244','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_TRABALHOBDUNB');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 37742286187438324274
 ,p_command => 
'alter table "T_CONSUMO" add'||wwv_flow.LF||
'("ID_PRODUTO" NUMBER NOT NULL)'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'HYPERLOBE2@GMAIL.COM'
    ,p_created_on => to_date('202301082254','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_TRABALHOBDUNB');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 37753017555240501075
 ,p_command => 
'alter table "T_CONSUMO" drop column'||wwv_flow.LF||
'"NOME"'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'HYPERLOBE2@GMAIL.COM'
    ,p_created_on => to_date('202301090115','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_TRABALHOBDUNB');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 37753019354468502579
 ,p_command => 
'alter table "T_CONSUMO" drop column'||wwv_flow.LF||
'"VALOR_UNIDADE"'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'HYPERLOBE2@GMAIL.COM'
    ,p_created_on => to_date('202301090116','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_TRABALHOBDUNB');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 37754998489838326239
 ,p_command => 
'alter table "T_PRODUTOS" modify'||wwv_flow.LF||
'("NOME" VARCHAR2(20))'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'HYPERLOBE2@GMAIL.COM'
    ,p_created_on => to_date('202301090141','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_TRABALHOBDUNB');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 37755255370134336483
 ,p_command => 
'alter table "T_PRODUTOS" modify'||wwv_flow.LF||
'("VALOR" NUMBER(0))'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'HYPERLOBE2@GMAIL.COM'
    ,p_created_on => to_date('202301090143','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_TRABALHOBDUNB');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 37755551317067668374
 ,p_command => 
'alter table "T_PRODUTOS" modify'||wwv_flow.LF||
'("VALOR" NUMBER(0,0))'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'HYPERLOBE2@GMAIL.COM'
    ,p_created_on => to_date('202301090143','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_TRABALHOBDUNB');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 37755556365099670184
 ,p_command => 
'alter table "T_PRODUTOS" modify'||wwv_flow.LF||
'("VALOR" NUMBER(20,0))'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'HYPERLOBE2@GMAIL.COM'
    ,p_created_on => to_date('202301090144','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_TRABALHOBDUNB');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 37778571199244795275
 ,p_command => 
'MERGE INTO T_CONSUMO T'||wwv_flow.LF||
'   USING (SELECT ID,NOME,VALOR,QUANTIDADE FROM T_PRODUTOS'||wwv_flow.LF||
'   WHERE ID = :P24_PRODUTOS) PR'||wwv_flow.LF||
'   ON (:P24_ID_CARTAO = T.ID_CARTAO AND :P24_PRODUTOS = T.ID_PRODUTO and T.DATA = SYSDATE)'||wwv_flow.LF||
'   WHEN MATCHED THEN UPDATE SET'||wwv_flow.LF||
'   DATA = SYSDATE,'||wwv_flow.LF||
'   QUANTIDADE = QUANTIDADE + 1'||wwv_flow.LF||
'   WHEN NOT MATCHED THEN INSERT (ID_CARTAO,DATA,QUANTIDADE,ID_PRODUTO)'||wwv_flow.LF||
'     VALUES (:P24_ID_CARTAO,SYSDATE,''1'',:P2'||
'4_PRODUTOS);'
    ,p_created_by => 'HYPERLOBE2@GMAIL.COM'
    ,p_created_on => to_date('202301090451','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_TRABALHOBDUNB');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 37779206846103472383
 ,p_command => 
'MERGE INTO T_CONSUMO T'||wwv_flow.LF||
'   USING (SELECT ID,NOME,VALOR,QUANTIDADE FROM T_PRODUTOS'||wwv_flow.LF||
'   WHERE ID = :P24_PRODUTOS) PR'||wwv_flow.LF||
'   ON (:P24_ID_CARTAO = T.ID_CARTAO AND :P24_PRODUTOS = T.ID_PRODUTO and T.DATA = SYSDATE)'||wwv_flow.LF||
'   WHEN MATCHED THEN UPDATE SET'||wwv_flow.LF||
'   T.DATA = SYSDATE,'||wwv_flow.LF||
'   T.QUANTIDADE = T.QUANTIDADE + 1'||wwv_flow.LF||
'   WHEN NOT MATCHED THEN INSERT (T.ID_CARTAO,T.DATA,T.QUANTIDADE,T.ID_PRODUTO)'||wwv_flow.LF||
'     VALUES (:P24_ID_CARTAO,S'||
'YSDATE,''1'',:P24_PRODUTOS);'
    ,p_created_by => 'HYPERLOBE2@GMAIL.COM'
    ,p_created_on => to_date('202301090452','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_TRABALHOBDUNB');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 37779631307985808529
 ,p_command => 
'MERGE INTO T_CONSUMO T'||wwv_flow.LF||
'   USING (SELECT ID,NOME,VALOR,QUANTIDADE FROM T_PRODUTOS'||wwv_flow.LF||
'   WHERE ID = :P24_PRODUTOS) PR'||wwv_flow.LF||
'   ON (:P24_ID_CARTAO = T.ID_CARTAO AND :P24_PRODUTOS = T.ID_PRODUTO and T.DATA = SYSDATE)'||wwv_flow.LF||
'   WHEN MATCHED THEN UPDATE SET'||wwv_flow.LF||
'   T.DATA = TO_DATE(TO_CHAR(SYSDATE,''DD/MM/YYYY'')),'||wwv_flow.LF||
'   T.QUANTIDADE = T.QUANTIDADE + 1'||wwv_flow.LF||
'   WHEN NOT MATCHED THEN INSERT (T.ID_CARTAO,T.DATA,T.QUANTIDADE,T.ID_PRODUTO'||
')'||wwv_flow.LF||
'     VALUES (:P24_ID_CARTAO,TO_DATE(TO_CHAR(SYSDATE,''DD/MM/YYYY'')),''1'',:P24_PRODUTOS);'
    ,p_created_by => 'HYPERLOBE2@GMAIL.COM'
    ,p_created_on => to_date('202301090453','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_TRABALHOBDUNB');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 37779883271148486006
 ,p_command => 
'MERGE INTO T_CONSUMO T'||wwv_flow.LF||
'   USING (SELECT ID,NOME,VALOR,QUANTIDADE FROM T_PRODUTOS'||wwv_flow.LF||
'   WHERE ID = :P24_PRODUTOS) PR'||wwv_flow.LF||
'   ON (:P24_ID_CARTAO = T.ID_CARTAO AND :P24_PRODUTOS = T.ID_PRODUTO and T.DATA = SYSDATE)'||wwv_flow.LF||
'   WHEN MATCHED THEN UPDATE SET'||wwv_flow.LF||
'   T.QUANTIDADE = T.QUANTIDADE + 1'||wwv_flow.LF||
'   WHEN NOT MATCHED THEN INSERT (T.ID_CARTAO,T.DATA,T.QUANTIDADE,T.ID_PRODUTO)'||wwv_flow.LF||
'     VALUES (:P24_ID_CARTAO,TO_DATE(TO_CHAR(SYSDAT'||
'E,''DD/MM/YYYY'')),''1'',:P24_PRODUTOS);'
    ,p_created_by => 'HYPERLOBE2@GMAIL.COM'
    ,p_created_on => to_date('202301090454','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_TRABALHOBDUNB');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38136161834451675003
 ,p_command => 
'select * from dba_users'
    ,p_created_by => 'HYPERLOBE2@GMAIL.COM'
    ,p_created_on => to_date('202301091824','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_TRABALHOBDUNB');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38136595693080699905
 ,p_command => 
'select USER_NAME from  APEX_WORKSPACE_APEX_USERS'||wwv_flow.LF||
'WHERE IS_ADMIN = ''Yes'' and USER_NAME = ''HYPERLOBE2@GMAIL.COM'''
    ,p_created_by => 'HYPERLOBE2@GMAIL.COM'
    ,p_created_on => to_date('202301091829','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_TRABALHOBDUNB');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38136952126251362335
 ,p_command => 
'select * from  APEX_WORKSPACE_APEX_USERS'
    ,p_created_by => 'HYPERLOBE2@GMAIL.COM'
    ,p_created_on => to_date('202301091827','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_TRABALHOBDUNB');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38137990407272377020
 ,p_command => 
'create or replace view "VW_FUNCIONARIOS" as'||wwv_flow.LF||
'select USER_NAME from  APEX_WORKSPACE_APEX_USERS'||wwv_flow.LF||
'WHERE IS_ADMIN = ''Yes'' and USER_NAME = ''HYPERLOBE2@GMAIL.COM'''||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'HYPERLOBE2@GMAIL.COM'
    ,p_created_on => to_date('202301091830','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_TRABALHOBDUNB');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 38141431660949433796
 ,p_command => 
'select * from  APEX_WORKSPACE_APEX_USERS'||wwv_flow.LF||
'WHERE IS_ADMIN = ''Yes'' and USER_NAME = ''HYPERLOBE2@GMAIL.COM'''
    ,p_created_by => 'HYPERLOBE2@GMAIL.COM'
    ,p_created_on => to_date('202301091839','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_TRABALHOBDUNB');
end;
/
----------------
--Quick SQL saved models
--
----------------
--user access log
--
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'HYPERLOBE2@GMAIL.COM',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_220200',
    p_access_date => to_date('202301081631','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.4',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'HYPERLOBE2@GMAIL.COM',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_220200',
    p_access_date => to_date('202301090425','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.2',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'HYPERLOBE2@GMAIL.COM',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_220200',
    p_access_date => to_date('202301091146','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.4',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'HYPERLOBE2@GMAIL.COM',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_220200',
    p_access_date => to_date('202301091210','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.2',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'HYPERLOBE2@GMAIL.COM',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_220200',
    p_access_date => to_date('202301091735','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.4',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'HYPERLOBE2@GMAIL.COM',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 51925,
    p_owner => 'WKSP_TRABALHOBDUNB',
    p_access_date => to_date('202301082041','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.2',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'HYPERLOBE2@GMAIL.COM',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 51925,
    p_owner => 'WKSP_TRABALHOBDUNB',
    p_access_date => to_date('202301090427','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.4',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'HYPERLOBE2@GMAIL.COM',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 51925,
    p_owner => 'WKSP_TRABALHOBDUNB',
    p_access_date => to_date('202301091146','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.4',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'HYPERLOBE2@GMAIL.COM',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 51925,
    p_owner => 'WKSP_TRABALHOBDUNB',
    p_access_date => to_date('202301091213','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.4',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'HYPERLOBE2@GMAIL.COM',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 51925,
    p_owner => 'WKSP_TRABALHOBDUNB',
    p_access_date => to_date('202301091820','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.4',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'HYPERLOBE2@GMAIL.COM',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 51925,
    p_owner => 'WKSP_TRABALHOBDUNB',
    p_access_date => to_date('202301091838','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.2',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'HYPERLOBE2@GMAIL.COM',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_220200',
    p_access_date => to_date('202301051246','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.2',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
prompt Check Compatibility...
begin
-- This date identifies the minimum version required to import this file.
wwv_flow_team_api.check_version(p_version_yyyy_mm_dd=>'2010.05.13');
end;
/
 
begin wwv_flow.g_import_in_progress := true; wwv_flow.g_user := USER; end; 
/
 
--
prompt ...feedback
--
begin
null;
end;
/
--
prompt ...Issue Templates
--
begin
null;
end;
/
--
prompt ...Issue Email Prefs
--
begin
null;
end;
/
--
prompt ...Label Groups
--
begin
null;
end;
/
--
prompt ...Labels
--
begin
null;
end;
/
--
prompt ... Milestones
--
begin
null;
end;
/
--
prompt ... Issues
--
begin
null;
end;
/
--
prompt ... Issue Attachments
--
begin
null;
end;
/
--
prompt ... Issues Milestones
--
begin
null;
end;
/
--
prompt ... Issues Labels
--
begin
null;
end;
/
--
prompt ... Issues stakeholders
--
begin
null;
end;
/
--
prompt ... Issues Comments
--
begin
null;
end;
/
--
prompt ... Issues Events
--
begin
null;
end;
/
--
prompt ... Issues Notifications
--
begin
null;
end;
/
 
prompt ...workspace objects
 
 
prompt ...RESTful Services
 
-- SET SCHEMA
 
begin
 
   wwv_flow_imp.g_id_offset := 0;
   wwv_flow_hint.g_schema   := 'WKSP_TRABALHOBDUNB';
   wwv_flow_hint.check_schema_privs;
 
end;
/

 
--------------------------------------------------------------------
prompt  SCHEMA WKSP_TRABALHOBDUNB - User Interface Defaults, Table Defaults
--
-- Import using sqlplus as the Oracle user: APEX_220200
-- Exported 20:17 Monday January 9, 2023 by: HYPERLOBE2@GMAIL.COM
--
 
--------------------------------------------------------------------
prompt User Interface Defaults, Attribute Dictionary
--
-- Exported 20:17 Monday January 9, 2023 by: HYPERLOBE2@GMAIL.COM
--
-- SHOW EXPORTING WORKSPACE
 
begin
 
   wwv_flow_imp.g_id_offset := 0;
   wwv_flow_hint.g_exp_workspace := 'TRABALHO_BD_UNB';
 
end;
/

begin
wwv_flow_imp.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
