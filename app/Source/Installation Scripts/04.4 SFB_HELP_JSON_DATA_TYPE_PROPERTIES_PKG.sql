create or replace PACKAGE       SFB_HELP_JSON_DATA_TYPE_PROPERTIES_PKG IS 
  /* 
  This is the API for the table SFB_HELP_JSON_DATA_TYPE_PROPERTIES. 
 
  GENERATION OPTIONS 
  - Must be in the lines 5-42 to be reusable by the generator 
  - DO NOT TOUCH THIS until you know what you do 
  - Read the docs under github.com/OraMUC/table-api-generator ;-) 
  <options 
    generator="OM_TAPIGEN" 
    generator_version="0.6.3" 
    generator_action="COMPILE_API" 
    generated_at="2024-07-12 14:58:39" 
    generated_by="SAJJAD" 
    p_table_name="SFB_HELP_JSON_DATA_TYPE_PROPERTIES" 
    p_owner="TEST1" 
    p_enable_insertion_of_rows="TRUE" 
    p_enable_column_defaults="TRUE" 
    p_enable_update_of_rows="TRUE" 
    p_enable_deletion_of_rows="TRUE" 
    p_enable_parameter_prefixes="TRUE" 
    p_enable_proc_with_out_params="TRUE" 
    p_enable_getter_and_setter="TRUE" 
    p_col_prefix_in_method_names="TRUE" 
    p_return_row_instead_of_pk="FALSE" 
    p_double_quote_names="FALSE" 
    p_default_bulk_limit="1000" 
    p_enable_dml_view="FALSE" 
    p_dml_view_name="SFB_HELP_JSON_DATA_TYPE_PROPERTIES_DML_V" 
    p_dml_view_trigger_name="SFB_HELP_JSON_DATA_TYPE_PROPERTIES_IOIUD" 
    p_enable_one_to_one_view="FALSE" 
    p_one_to_one_view_name="SFB_HELP_JSON_DATA_TYPE_PROPERTIES_V" 
    p_api_name="SFB_HELP_JSON_DATA_TYPE_PROPERTIES_PKG" 
    p_sequence_name="" 
    p_exclude_column_list="" 
    p_audit_column_mappings="created=#PREFIX#_CREATED, created_by=#PREFIX#_CREATED_BY, updated=#PREFIX#_UPDATED, updated_by=#PREFIX#_UPDATED_BY" 
    p_audit_user_expression="coalesce(sys_context('apex$session','app_user'), sys_context('userenv','os_user'), sys_context('userenv','session_user'))" 
    p_row_version_column_mapping="" 
    p_tenant_column_mapping="" 
    p_enable_custom_defaults="FALSE" 
    p_custom_default_values=""/> 
  */
  
  TYPE t_strong_ref_cursor IS REF CURSOR RETURN SFB_HELP_JSON_DATA_TYPE_PROPERTIES%ROWTYPE;
 
  FUNCTION bulk_is_complete 
  RETURN BOOLEAN;
 
  PROCEDURE set_bulk_limit ( 
    p_bulk_limit IN PLS_INTEGER );
 
  FUNCTION get_bulk_limit 
  RETURN PLS_INTEGER;
 
  FUNCTION row_exists ( 
    p_hjdp_id IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_ID%TYPE /*PK*/ ) 
  RETURN BOOLEAN;
 
  FUNCTION row_exists_yn ( 
    p_hjdp_id IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_ID%TYPE /*PK*/ ) 
  RETURN VARCHAR2;
 
  FUNCTION create_row ( 
    p_hjdp_id         IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_ID%TYPE           DEFAULT "SFB_HJDP_SEQ"."NEXTVAL" /*PK*/,
    p_hjdp_name       IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_NAME%TYPE         DEFAULT NULL,
    p_hjdp_remark     IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_REMARK%TYPE       DEFAULT NULL,
    p_hjdp_valid_from IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_VALID_FROM%TYPE   DEFAULT sysdate ,
    p_hjdp_valid_to   IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_VALID_TO%TYPE     DEFAULT TO_DATE('31.12.2999', 'DD.MM.YYYY') ,
    p_hjdp_deleted_yn IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_DELETED_YN%TYPE   DEFAULT 'NO' ,
    p_hjdp_hfat_fk    IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_HFAT_FK%TYPE       /*FK*/,
    p_hjdp_prop_fk    IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_PROP_FK%TYPE       /*FK*/ ) 
  RETURN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_ID%TYPE;
 
  PROCEDURE create_row ( 
    p_hjdp_id         IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_ID%TYPE           DEFAULT "SFB_HJDP_SEQ"."NEXTVAL" /*PK*/,
    p_hjdp_name       IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_NAME%TYPE         DEFAULT NULL,
    p_hjdp_remark     IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_REMARK%TYPE       DEFAULT NULL,
    p_hjdp_valid_from IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_VALID_FROM%TYPE   DEFAULT sysdate ,
    p_hjdp_valid_to   IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_VALID_TO%TYPE     DEFAULT TO_DATE('31.12.2999', 'DD.MM.YYYY') ,
    p_hjdp_deleted_yn IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_DELETED_YN%TYPE   DEFAULT 'NO' ,
    p_hjdp_hfat_fk    IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_HFAT_FK%TYPE       /*FK*/,
    p_hjdp_prop_fk    IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_PROP_FK%TYPE       /*FK*/ );
 
  FUNCTION create_row ( 
    p_row IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES%ROWTYPE ) 
  RETURN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_ID%TYPE;
 
  PROCEDURE create_row ( 
    p_row IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES%ROWTYPE );
 
  
 
 
  FUNCTION read_row ( 
    p_hjdp_id IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_ID%TYPE /*PK*/ ) 
  RETURN SFB_HELP_JSON_DATA_TYPE_PROPERTIES%ROWTYPE;
 
  PROCEDURE read_row ( 
    p_hjdp_id         IN            SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_ID%TYPE /*PK*/,
    p_hjdp_name          OUT NOCOPY SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_NAME%TYPE,
    p_hjdp_remark        OUT NOCOPY SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_REMARK%TYPE,
    p_hjdp_created       OUT NOCOPY SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_CREATED%TYPE,
    p_hjdp_created_by    OUT NOCOPY SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_CREATED_BY%TYPE,
    p_hjdp_updated       OUT NOCOPY SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_UPDATED%TYPE,
    p_hjdp_updated_by    OUT NOCOPY SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_UPDATED_BY%TYPE,
    p_hjdp_valid_from    OUT NOCOPY SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_VALID_FROM%TYPE,
    p_hjdp_valid_to      OUT NOCOPY SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_VALID_TO%TYPE,
    p_hjdp_deleted_yn    OUT NOCOPY SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_DELETED_YN%TYPE,
    p_hjdp_hfat_fk       OUT NOCOPY SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_HFAT_FK%TYPE /*FK*/,
    p_hjdp_prop_fk       OUT NOCOPY SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_PROP_FK%TYPE /*FK*/ );
 
 
 
  FUNCTION update_row ( 
    p_hjdp_id         IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_ID%TYPE /*PK*/,
    p_hjdp_name       IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_NAME%TYPE,
    p_hjdp_remark     IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_REMARK%TYPE,
    p_hjdp_valid_from IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_VALID_FROM%TYPE,
    p_hjdp_valid_to   IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_VALID_TO%TYPE,
    p_hjdp_deleted_yn IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_DELETED_YN%TYPE,
    p_hjdp_hfat_fk    IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_HFAT_FK%TYPE /*FK*/,
    p_hjdp_prop_fk    IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_PROP_FK%TYPE /*FK*/ ) 
  RETURN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_ID%TYPE;
 
  PROCEDURE update_row ( 
    p_hjdp_id         IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_ID%TYPE /*PK*/,
    p_hjdp_name       IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_NAME%TYPE,
    p_hjdp_remark     IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_REMARK%TYPE,
    p_hjdp_valid_from IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_VALID_FROM%TYPE,
    p_hjdp_valid_to   IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_VALID_TO%TYPE,
    p_hjdp_deleted_yn IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_DELETED_YN%TYPE,
    p_hjdp_hfat_fk    IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_HFAT_FK%TYPE /*FK*/,
    p_hjdp_prop_fk    IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_PROP_FK%TYPE /*FK*/ );
 
  FUNCTION update_row ( 
    p_row IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES%ROWTYPE ) 
  RETURN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_ID%TYPE;
 
  PROCEDURE update_row ( 
    p_row IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES%ROWTYPE );
 
 
  PROCEDURE delete_row ( 
    p_hjdp_id IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_ID%TYPE /*PK*/ );
 
 
  FUNCTION create_or_update_row ( 
    p_hjdp_id         IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_ID%TYPE /*PK*/,
    p_hjdp_name       IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_NAME%TYPE,
    p_hjdp_remark     IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_REMARK%TYPE,
    p_hjdp_valid_from IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_VALID_FROM%TYPE,
    p_hjdp_valid_to   IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_VALID_TO%TYPE,
    p_hjdp_deleted_yn IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_DELETED_YN%TYPE,
    p_hjdp_hfat_fk    IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_HFAT_FK%TYPE /*FK*/,
    p_hjdp_prop_fk    IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_PROP_FK%TYPE /*FK*/ ) 
  RETURN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_ID%TYPE;
 
  PROCEDURE create_or_update_row ( 
    p_hjdp_id         IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_ID%TYPE /*PK*/,
    p_hjdp_name       IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_NAME%TYPE,
    p_hjdp_remark     IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_REMARK%TYPE,
    p_hjdp_valid_from IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_VALID_FROM%TYPE,
    p_hjdp_valid_to   IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_VALID_TO%TYPE,
    p_hjdp_deleted_yn IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_DELETED_YN%TYPE,
    p_hjdp_hfat_fk    IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_HFAT_FK%TYPE /*FK*/,
    p_hjdp_prop_fk    IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_PROP_FK%TYPE /*FK*/ );
 
  FUNCTION create_or_update_row ( 
    p_row IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES%ROWTYPE ) 
  RETURN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_ID%TYPE;
 
  PROCEDURE create_or_update_row ( 
    p_row IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES%ROWTYPE );
 
  FUNCTION get_hjdp_name ( 
    p_hjdp_id IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_ID%TYPE /*PK*/ ) 
  RETURN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_NAME%TYPE;
 
  FUNCTION get_hjdp_remark ( 
    p_hjdp_id IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_ID%TYPE /*PK*/ ) 
  RETURN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_REMARK%TYPE;
 
  FUNCTION get_hjdp_created ( 
    p_hjdp_id IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_ID%TYPE /*PK*/ ) 
  RETURN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_CREATED%TYPE;
 
  FUNCTION get_hjdp_created_by ( 
    p_hjdp_id IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_ID%TYPE /*PK*/ ) 
  RETURN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_CREATED_BY%TYPE;
 
  FUNCTION get_hjdp_updated ( 
    p_hjdp_id IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_ID%TYPE /*PK*/ ) 
  RETURN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_UPDATED%TYPE;
 
  FUNCTION get_hjdp_updated_by ( 
    p_hjdp_id IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_ID%TYPE /*PK*/ ) 
  RETURN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_UPDATED_BY%TYPE;
 
  FUNCTION get_hjdp_valid_from ( 
    p_hjdp_id IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_ID%TYPE /*PK*/ ) 
  RETURN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_VALID_FROM%TYPE;
 
  FUNCTION get_hjdp_valid_to ( 
    p_hjdp_id IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_ID%TYPE /*PK*/ ) 
  RETURN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_VALID_TO%TYPE;
 
  FUNCTION get_hjdp_deleted_yn ( 
    p_hjdp_id IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_ID%TYPE /*PK*/ ) 
  RETURN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_DELETED_YN%TYPE;
 
  FUNCTION get_hjdp_hfat_fk ( 
    p_hjdp_id IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_ID%TYPE /*PK*/ ) 
  RETURN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_HFAT_FK%TYPE;
 
  FUNCTION get_hjdp_prop_fk ( 
    p_hjdp_id IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_ID%TYPE /*PK*/ ) 
  RETURN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_PROP_FK%TYPE;
 
  PROCEDURE set_hjdp_name ( 
    p_hjdp_id   IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_ID%TYPE /*PK*/, 
    p_hjdp_name IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_NAME%TYPE );
 
  PROCEDURE set_hjdp_remark ( 
    p_hjdp_id     IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_ID%TYPE /*PK*/, 
    p_hjdp_remark IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_REMARK%TYPE );
 
  PROCEDURE set_hjdp_valid_from ( 
    p_hjdp_id         IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_ID%TYPE /*PK*/, 
    p_hjdp_valid_from IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_VALID_FROM%TYPE );
 
  PROCEDURE set_hjdp_valid_to ( 
    p_hjdp_id       IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_ID%TYPE /*PK*/, 
    p_hjdp_valid_to IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_VALID_TO%TYPE );
 
  PROCEDURE set_hjdp_deleted_yn ( 
    p_hjdp_id         IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_ID%TYPE /*PK*/, 
    p_hjdp_deleted_yn IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_DELETED_YN%TYPE );
 
  PROCEDURE set_hjdp_hfat_fk ( 
    p_hjdp_id      IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_ID%TYPE /*PK*/, 
    p_hjdp_hfat_fk IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_HFAT_FK%TYPE );
 
  PROCEDURE set_hjdp_prop_fk ( 
    p_hjdp_id      IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_ID%TYPE /*PK*/, 
    p_hjdp_prop_fk IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_PROP_FK%TYPE );
 
  FUNCTION get_default_row 
  RETURN SFB_HELP_JSON_DATA_TYPE_PROPERTIES%ROWTYPE; 
  /* 
  Helper to get a prepopulated row with the table defaults from the dictionary. 
  */
 
END SFB_HELP_JSON_DATA_TYPE_PROPERTIES_PKG;
/

create or replace PACKAGE BODY       SFB_HELP_JSON_DATA_TYPE_PROPERTIES_PKG IS 
  /* 
  This is the API for the table SFB_HELP_JSON_DATA_TYPE_PROPERTIES. 
  - generator: OM_TAPIGEN 
  - generator_version: 0.6.3 
  - generator_action: COMPILE_API 
  - generated_at: 2024-07-12 14:58:39 
  - generated_by: SAJJAD 
  */
 
  g_bulk_limit     PLS_INTEGER := 1000; 
  g_bulk_completed BOOLEAN     := FALSE;
 
  FUNCTION bulk_is_complete 
  RETURN BOOLEAN 
  IS 
  BEGIN 
    RETURN g_bulk_completed; 
  END bulk_is_complete;
 
  PROCEDURE set_bulk_limit ( 
    p_bulk_limit IN PLS_INTEGER ) 
  IS 
  BEGIN 
    g_bulk_limit := p_bulk_limit; 
  END set_bulk_limit;
 
  FUNCTION get_bulk_limit 
  RETURN PLS_INTEGER 
  IS 
  BEGIN 
    RETURN g_bulk_limit; 
  END get_bulk_limit;
 
  FUNCTION row_exists ( 
    p_hjdp_id IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_ID%TYPE /*PK*/ ) 
  RETURN BOOLEAN 
  IS 
    v_return BOOLEAN := FALSE; 
    v_dummy  PLS_INTEGER; 
    CURSOR   cur_bool IS 
      SELECT 1 FROM SFB_HELP_JSON_DATA_TYPE_PROPERTIES 
      WHERE 
        HJDP_ID = p_hjdp_id; 
  BEGIN 
    OPEN cur_bool; 
    FETCH cur_bool INTO v_dummy; 
    IF cur_bool%FOUND THEN 
      v_return := TRUE; 
    END IF; 
    CLOSE cur_bool; 
    RETURN v_return; 
  END;
 
  FUNCTION row_exists_yn ( 
    p_hjdp_id IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_ID%TYPE /*PK*/ ) 
  RETURN VARCHAR2 
  IS 
  BEGIN 
    RETURN 
      CASE 
        WHEN row_exists( 
          p_hjdp_id => p_hjdp_id ) 
        THEN 'Y' 
        ELSE 'N' 
      END; 
  END;
 
  FUNCTION create_row ( 
    p_hjdp_id         IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_ID%TYPE           DEFAULT "SFB_HJDP_SEQ"."NEXTVAL" /*PK*/,
    p_hjdp_name       IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_NAME%TYPE         DEFAULT NULL,
    p_hjdp_remark     IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_REMARK%TYPE       DEFAULT NULL,
    p_hjdp_valid_from IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_VALID_FROM%TYPE   DEFAULT sysdate ,
    p_hjdp_valid_to   IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_VALID_TO%TYPE     DEFAULT TO_DATE('31.12.2999', 'DD.MM.YYYY') ,
    p_hjdp_deleted_yn IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_DELETED_YN%TYPE   DEFAULT 'NO' ,
    p_hjdp_hfat_fk    IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_HFAT_FK%TYPE       /*FK*/,
    p_hjdp_prop_fk    IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_PROP_FK%TYPE       /*FK*/ ) 
  RETURN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_ID%TYPE 
  IS 
    v_return SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_ID%TYPE;  
  BEGIN 
    INSERT INTO SFB_HELP_JSON_DATA_TYPE_PROPERTIES ( 
      HJDP_ID /*PK*/,
      HJDP_NAME,
      HJDP_REMARK,
      HJDP_CREATED,
      HJDP_CREATED_BY,
      HJDP_UPDATED,
      HJDP_UPDATED_BY,
      HJDP_VALID_FROM,
      HJDP_VALID_TO,
      HJDP_DELETED_YN,
      HJDP_HFAT_FK /*FK*/,
      HJDP_PROP_FK /*FK*/ ) 
    VALUES ( 
      p_hjdp_id,
      p_hjdp_name,
      p_hjdp_remark,
      systimestamp,
      coalesce(sys_context('apex$session','app_user'), sys_context('userenv','os_user'), sys_context('userenv','session_user')),
      systimestamp,
      coalesce(sys_context('apex$session','app_user'), sys_context('userenv','os_user'), sys_context('userenv','session_user')),
      p_hjdp_valid_from,
      p_hjdp_valid_to,
      p_hjdp_deleted_yn,
      p_hjdp_hfat_fk,
      p_hjdp_prop_fk ) 
    RETURN  
      HJDP_ID 
    INTO 
      v_return; 
    RETURN v_return; 
  END create_row;
 
  PROCEDURE create_row ( 
    p_hjdp_id         IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_ID%TYPE           DEFAULT "SFB_HJDP_SEQ"."NEXTVAL" /*PK*/,
    p_hjdp_name       IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_NAME%TYPE         DEFAULT NULL,
    p_hjdp_remark     IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_REMARK%TYPE       DEFAULT NULL,
    p_hjdp_valid_from IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_VALID_FROM%TYPE   DEFAULT sysdate ,
    p_hjdp_valid_to   IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_VALID_TO%TYPE     DEFAULT TO_DATE('31.12.2999', 'DD.MM.YYYY') ,
    p_hjdp_deleted_yn IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_DELETED_YN%TYPE   DEFAULT 'NO' ,
    p_hjdp_hfat_fk    IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_HFAT_FK%TYPE       /*FK*/,
    p_hjdp_prop_fk    IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_PROP_FK%TYPE       /*FK*/ ) 
  IS 
  BEGIN 
    INSERT INTO SFB_HELP_JSON_DATA_TYPE_PROPERTIES ( 
      HJDP_ID /*PK*/,
      HJDP_NAME,
      HJDP_REMARK,
      HJDP_CREATED,
      HJDP_CREATED_BY,
      HJDP_UPDATED,
      HJDP_UPDATED_BY,
      HJDP_VALID_FROM,
      HJDP_VALID_TO,
      HJDP_DELETED_YN,
      HJDP_HFAT_FK /*FK*/,
      HJDP_PROP_FK /*FK*/ ) 
    VALUES ( 
      p_hjdp_id,
      p_hjdp_name,
      p_hjdp_remark,
      systimestamp,
      coalesce(sys_context('apex$session','app_user'), sys_context('userenv','os_user'), sys_context('userenv','session_user')),
      systimestamp,
      coalesce(sys_context('apex$session','app_user'), sys_context('userenv','os_user'), sys_context('userenv','session_user')),
      p_hjdp_valid_from,
      p_hjdp_valid_to,
      p_hjdp_deleted_yn,
      p_hjdp_hfat_fk,
      p_hjdp_prop_fk ); 
  END create_row;
 
  FUNCTION create_row ( 
    p_row IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES%ROWTYPE ) 
  RETURN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_ID%TYPE 
  IS 
  BEGIN 
    RETURN create_row ( 
      p_hjdp_id         => p_row.HJDP_ID /*PK*/,
      p_hjdp_name       => p_row.HJDP_NAME,
      p_hjdp_remark     => p_row.HJDP_REMARK,
      p_hjdp_valid_from => p_row.HJDP_VALID_FROM,
      p_hjdp_valid_to   => p_row.HJDP_VALID_TO,
      p_hjdp_deleted_yn => p_row.HJDP_DELETED_YN,
      p_hjdp_hfat_fk    => p_row.HJDP_HFAT_FK /*FK*/,
      p_hjdp_prop_fk    => p_row.HJDP_PROP_FK /*FK*/ ); 
  END create_row;
 
  PROCEDURE create_row ( 
    p_row IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES%ROWTYPE ) 
  IS 
  BEGIN 
    create_row ( 
      p_hjdp_id         => p_row.HJDP_ID /*PK*/,
      p_hjdp_name       => p_row.HJDP_NAME,
      p_hjdp_remark     => p_row.HJDP_REMARK,
      p_hjdp_valid_from => p_row.HJDP_VALID_FROM,
      p_hjdp_valid_to   => p_row.HJDP_VALID_TO,
      p_hjdp_deleted_yn => p_row.HJDP_DELETED_YN,
      p_hjdp_hfat_fk    => p_row.HJDP_HFAT_FK /*FK*/,
      p_hjdp_prop_fk    => p_row.HJDP_PROP_FK /*FK*/ ); 
  END create_row;
 
  
 
 
  FUNCTION read_row ( 
    p_hjdp_id IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_ID%TYPE /*PK*/ ) 
  RETURN SFB_HELP_JSON_DATA_TYPE_PROPERTIES%ROWTYPE 
  IS 
    v_row SFB_HELP_JSON_DATA_TYPE_PROPERTIES%ROWTYPE; 
    CURSOR cur_row IS 
      SELECT * FROM SFB_HELP_JSON_DATA_TYPE_PROPERTIES 
      WHERE 
        HJDP_ID = p_hjdp_id; 
  BEGIN 
    OPEN cur_row; 
    FETCH cur_row INTO v_row; 
    CLOSE cur_row; 
    RETURN v_row; 
  END read_row;
 
  PROCEDURE read_row ( 
    p_hjdp_id         IN            SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_ID%TYPE /*PK*/,
    p_hjdp_name          OUT NOCOPY SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_NAME%TYPE,
    p_hjdp_remark        OUT NOCOPY SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_REMARK%TYPE,
    p_hjdp_created       OUT NOCOPY SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_CREATED%TYPE,
    p_hjdp_created_by    OUT NOCOPY SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_CREATED_BY%TYPE,
    p_hjdp_updated       OUT NOCOPY SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_UPDATED%TYPE,
    p_hjdp_updated_by    OUT NOCOPY SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_UPDATED_BY%TYPE,
    p_hjdp_valid_from    OUT NOCOPY SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_VALID_FROM%TYPE,
    p_hjdp_valid_to      OUT NOCOPY SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_VALID_TO%TYPE,
    p_hjdp_deleted_yn    OUT NOCOPY SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_DELETED_YN%TYPE,
    p_hjdp_hfat_fk       OUT NOCOPY SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_HFAT_FK%TYPE /*FK*/,
    p_hjdp_prop_fk       OUT NOCOPY SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_PROP_FK%TYPE /*FK*/ ) 
  IS 
    v_row SFB_HELP_JSON_DATA_TYPE_PROPERTIES%ROWTYPE; 
  BEGIN 
    v_row := read_row ( 
      p_hjdp_id => p_hjdp_id ); 
    p_hjdp_name       := v_row.HJDP_NAME; 
    p_hjdp_remark     := v_row.HJDP_REMARK; 
    p_hjdp_created    := v_row.HJDP_CREATED; 
    p_hjdp_created_by := v_row.HJDP_CREATED_BY; 
    p_hjdp_updated    := v_row.HJDP_UPDATED; 
    p_hjdp_updated_by := v_row.HJDP_UPDATED_BY; 
    p_hjdp_valid_from := v_row.HJDP_VALID_FROM; 
    p_hjdp_valid_to   := v_row.HJDP_VALID_TO; 
    p_hjdp_deleted_yn := v_row.HJDP_DELETED_YN; 
    p_hjdp_hfat_fk    := v_row.HJDP_HFAT_FK; 
    p_hjdp_prop_fk    := v_row.HJDP_PROP_FK;  
  END read_row;
 
  
 
  FUNCTION update_row ( 
    p_hjdp_id         IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_ID%TYPE /*PK*/,
    p_hjdp_name       IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_NAME%TYPE,
    p_hjdp_remark     IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_REMARK%TYPE,
    p_hjdp_valid_from IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_VALID_FROM%TYPE,
    p_hjdp_valid_to   IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_VALID_TO%TYPE,
    p_hjdp_deleted_yn IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_DELETED_YN%TYPE,
    p_hjdp_hfat_fk    IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_HFAT_FK%TYPE /*FK*/,
    p_hjdp_prop_fk    IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_PROP_FK%TYPE /*FK*/ ) 
  RETURN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_ID%TYPE 
  IS 
    v_return SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_ID%TYPE;  
  BEGIN 
    UPDATE 
      SFB_HELP_JSON_DATA_TYPE_PROPERTIES 
    SET 
      HJDP_NAME       = p_hjdp_name,
      HJDP_REMARK     = p_hjdp_remark,
      HJDP_UPDATED    = systimestamp,
      HJDP_UPDATED_BY = coalesce(sys_context('apex$session','app_user'), sys_context('userenv','os_user'), sys_context('userenv','session_user')),
      HJDP_VALID_FROM = p_hjdp_valid_from,
      HJDP_VALID_TO   = p_hjdp_valid_to,
      HJDP_DELETED_YN = p_hjdp_deleted_yn,
      HJDP_HFAT_FK    = p_hjdp_hfat_fk /*FK*/,
      HJDP_PROP_FK    = p_hjdp_prop_fk /*FK*/ 
    WHERE 
      HJDP_ID = p_hjdp_id 
    RETURN  
      HJDP_ID 
    INTO 
      v_return; 
    RETURN v_return; 
  END update_row;
 
  PROCEDURE update_row ( 
    p_hjdp_id         IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_ID%TYPE /*PK*/,
    p_hjdp_name       IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_NAME%TYPE,
    p_hjdp_remark     IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_REMARK%TYPE,
    p_hjdp_valid_from IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_VALID_FROM%TYPE,
    p_hjdp_valid_to   IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_VALID_TO%TYPE,
    p_hjdp_deleted_yn IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_DELETED_YN%TYPE,
    p_hjdp_hfat_fk    IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_HFAT_FK%TYPE /*FK*/,
    p_hjdp_prop_fk    IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_PROP_FK%TYPE /*FK*/ ) 
  IS 
  BEGIN 
    UPDATE 
      SFB_HELP_JSON_DATA_TYPE_PROPERTIES 
    SET 
      HJDP_NAME       = p_hjdp_name,
      HJDP_REMARK     = p_hjdp_remark,
      HJDP_UPDATED    = systimestamp,
      HJDP_UPDATED_BY = coalesce(sys_context('apex$session','app_user'), sys_context('userenv','os_user'), sys_context('userenv','session_user')),
      HJDP_VALID_FROM = p_hjdp_valid_from,
      HJDP_VALID_TO   = p_hjdp_valid_to,
      HJDP_DELETED_YN = p_hjdp_deleted_yn,
      HJDP_HFAT_FK    = p_hjdp_hfat_fk /*FK*/,
      HJDP_PROP_FK    = p_hjdp_prop_fk /*FK*/ 
    WHERE 
      HJDP_ID = p_hjdp_id; 
  END update_row;
 
  FUNCTION update_row ( 
    p_row IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES%ROWTYPE ) 
  RETURN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_ID%TYPE 
  IS 
  BEGIN 
    RETURN update_row ( 
      p_hjdp_id         => p_row.HJDP_ID /*PK*/,
      p_hjdp_name       => p_row.HJDP_NAME,
      p_hjdp_remark     => p_row.HJDP_REMARK,
      p_hjdp_valid_from => p_row.HJDP_VALID_FROM,
      p_hjdp_valid_to   => p_row.HJDP_VALID_TO,
      p_hjdp_deleted_yn => p_row.HJDP_DELETED_YN,
      p_hjdp_hfat_fk    => p_row.HJDP_HFAT_FK /*FK*/,
      p_hjdp_prop_fk    => p_row.HJDP_PROP_FK /*FK*/ ); 
  END update_row;
 
  PROCEDURE update_row ( 
    p_row IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES%ROWTYPE ) 
  IS 
  BEGIN 
    update_row ( 
      p_hjdp_id         => p_row.HJDP_ID /*PK*/,
      p_hjdp_name       => p_row.HJDP_NAME,
      p_hjdp_remark     => p_row.HJDP_REMARK,
      p_hjdp_valid_from => p_row.HJDP_VALID_FROM,
      p_hjdp_valid_to   => p_row.HJDP_VALID_TO,
      p_hjdp_deleted_yn => p_row.HJDP_DELETED_YN,
      p_hjdp_hfat_fk    => p_row.HJDP_HFAT_FK /*FK*/,
      p_hjdp_prop_fk    => p_row.HJDP_PROP_FK /*FK*/ ); 
  END update_row;
 
  
 
  PROCEDURE delete_row ( 
    p_hjdp_id IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_ID%TYPE /*PK*/ ) 
  IS 
  BEGIN 
    DELETE FROM SFB_HELP_JSON_DATA_TYPE_PROPERTIES 
    WHERE 
      HJDP_ID = p_hjdp_id; 
  END delete_row;
 
  
 
  FUNCTION create_or_update_row ( 
    p_hjdp_id         IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_ID%TYPE /*PK*/,
    p_hjdp_name       IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_NAME%TYPE,
    p_hjdp_remark     IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_REMARK%TYPE,
    p_hjdp_valid_from IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_VALID_FROM%TYPE,
    p_hjdp_valid_to   IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_VALID_TO%TYPE,
    p_hjdp_deleted_yn IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_DELETED_YN%TYPE,
    p_hjdp_hfat_fk    IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_HFAT_FK%TYPE /*FK*/,
    p_hjdp_prop_fk    IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_PROP_FK%TYPE /*FK*/ ) 
  RETURN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_ID%TYPE 
  IS 
  BEGIN 
    IF row_exists( 
      p_hjdp_id => p_hjdp_id 
    ) 
    THEN 
      RETURN update_row ( 
        p_hjdp_id         => p_hjdp_id /*PK*/,
        p_hjdp_name       => p_hjdp_name,
        p_hjdp_remark     => p_hjdp_remark,
        p_hjdp_valid_from => p_hjdp_valid_from,
        p_hjdp_valid_to   => p_hjdp_valid_to,
        p_hjdp_deleted_yn => p_hjdp_deleted_yn,
        p_hjdp_hfat_fk    => p_hjdp_hfat_fk /*FK*/,
        p_hjdp_prop_fk    => p_hjdp_prop_fk /*FK*/ ); 
    ELSE 
      RETURN create_row ( 
        p_hjdp_id         => p_hjdp_id /*PK*/,
        p_hjdp_name       => p_hjdp_name,
        p_hjdp_remark     => p_hjdp_remark,
        p_hjdp_valid_from => p_hjdp_valid_from,
        p_hjdp_valid_to   => p_hjdp_valid_to,
        p_hjdp_deleted_yn => p_hjdp_deleted_yn,
        p_hjdp_hfat_fk    => p_hjdp_hfat_fk /*FK*/,
        p_hjdp_prop_fk    => p_hjdp_prop_fk /*FK*/ ); 
    END IF; 
  END create_or_update_row;
 
  PROCEDURE create_or_update_row ( 
    p_hjdp_id         IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_ID%TYPE /*PK*/,
    p_hjdp_name       IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_NAME%TYPE,
    p_hjdp_remark     IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_REMARK%TYPE,
    p_hjdp_valid_from IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_VALID_FROM%TYPE,
    p_hjdp_valid_to   IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_VALID_TO%TYPE,
    p_hjdp_deleted_yn IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_DELETED_YN%TYPE,
    p_hjdp_hfat_fk    IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_HFAT_FK%TYPE /*FK*/,
    p_hjdp_prop_fk    IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_PROP_FK%TYPE /*FK*/ ) 
  IS 
  BEGIN 
    IF row_exists( 
      p_hjdp_id => p_hjdp_id 
    ) 
    THEN 
      update_row ( 
        p_hjdp_id         => p_hjdp_id /*PK*/,
        p_hjdp_name       => p_hjdp_name,
        p_hjdp_remark     => p_hjdp_remark,
        p_hjdp_valid_from => p_hjdp_valid_from,
        p_hjdp_valid_to   => p_hjdp_valid_to,
        p_hjdp_deleted_yn => p_hjdp_deleted_yn,
        p_hjdp_hfat_fk    => p_hjdp_hfat_fk /*FK*/,
        p_hjdp_prop_fk    => p_hjdp_prop_fk /*FK*/ ); 
    ELSE 
      create_row ( 
        p_hjdp_id         => p_hjdp_id /*PK*/,
        p_hjdp_name       => p_hjdp_name,
        p_hjdp_remark     => p_hjdp_remark,
        p_hjdp_valid_from => p_hjdp_valid_from,
        p_hjdp_valid_to   => p_hjdp_valid_to,
        p_hjdp_deleted_yn => p_hjdp_deleted_yn,
        p_hjdp_hfat_fk    => p_hjdp_hfat_fk /*FK*/,
        p_hjdp_prop_fk    => p_hjdp_prop_fk /*FK*/ ); 
    END IF; 
  END create_or_update_row;
 
  FUNCTION create_or_update_row ( 
    p_row IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES%ROWTYPE ) 
  RETURN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_ID%TYPE 
  IS 
  BEGIN 
    IF row_exists( 
      p_hjdp_id => p_row.HJDP_ID 
    ) 
    THEN 
      RETURN update_row ( 
        p_hjdp_id         => p_row.HJDP_ID /*PK*/,
        p_hjdp_name       => p_row.HJDP_NAME,
        p_hjdp_remark     => p_row.HJDP_REMARK,
        p_hjdp_valid_from => p_row.HJDP_VALID_FROM,
        p_hjdp_valid_to   => p_row.HJDP_VALID_TO,
        p_hjdp_deleted_yn => p_row.HJDP_DELETED_YN,
        p_hjdp_hfat_fk    => p_row.HJDP_HFAT_FK /*FK*/,
        p_hjdp_prop_fk    => p_row.HJDP_PROP_FK /*FK*/ ); 
    ELSE 
      RETURN create_row ( 
        p_hjdp_id         => p_row.HJDP_ID /*PK*/,
        p_hjdp_name       => p_row.HJDP_NAME,
        p_hjdp_remark     => p_row.HJDP_REMARK,
        p_hjdp_valid_from => p_row.HJDP_VALID_FROM,
        p_hjdp_valid_to   => p_row.HJDP_VALID_TO,
        p_hjdp_deleted_yn => p_row.HJDP_DELETED_YN,
        p_hjdp_hfat_fk    => p_row.HJDP_HFAT_FK /*FK*/,
        p_hjdp_prop_fk    => p_row.HJDP_PROP_FK /*FK*/ ); 
    END IF; 
  END create_or_update_row;
 
  PROCEDURE create_or_update_row ( 
    p_row IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES%ROWTYPE ) 
  IS 
  BEGIN 
    IF row_exists( 
      p_hjdp_id => p_row.HJDP_ID 
    ) 
    THEN 
      update_row ( 
        p_hjdp_id         => p_row.HJDP_ID /*PK*/,
        p_hjdp_name       => p_row.HJDP_NAME,
        p_hjdp_remark     => p_row.HJDP_REMARK,
        p_hjdp_valid_from => p_row.HJDP_VALID_FROM,
        p_hjdp_valid_to   => p_row.HJDP_VALID_TO,
        p_hjdp_deleted_yn => p_row.HJDP_DELETED_YN,
        p_hjdp_hfat_fk    => p_row.HJDP_HFAT_FK /*FK*/,
        p_hjdp_prop_fk    => p_row.HJDP_PROP_FK /*FK*/ ); 
    ELSE 
      create_row ( 
        p_hjdp_id         => p_row.HJDP_ID /*PK*/,
        p_hjdp_name       => p_row.HJDP_NAME,
        p_hjdp_remark     => p_row.HJDP_REMARK,
        p_hjdp_valid_from => p_row.HJDP_VALID_FROM,
        p_hjdp_valid_to   => p_row.HJDP_VALID_TO,
        p_hjdp_deleted_yn => p_row.HJDP_DELETED_YN,
        p_hjdp_hfat_fk    => p_row.HJDP_HFAT_FK /*FK*/,
        p_hjdp_prop_fk    => p_row.HJDP_PROP_FK /*FK*/ ); 
    END IF; 
  END create_or_update_row;
 
  FUNCTION get_hjdp_name ( 
    p_hjdp_id IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_ID%TYPE /*PK*/ ) 
  RETURN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_NAME%TYPE 
  IS 
  BEGIN 
    RETURN read_row ( 
      p_hjdp_id => p_hjdp_id ).HJDP_NAME; 
  END get_hjdp_name;
 
  FUNCTION get_hjdp_remark ( 
    p_hjdp_id IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_ID%TYPE /*PK*/ ) 
  RETURN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_REMARK%TYPE 
  IS 
  BEGIN 
    RETURN read_row ( 
      p_hjdp_id => p_hjdp_id ).HJDP_REMARK; 
  END get_hjdp_remark;
 
  FUNCTION get_hjdp_created ( 
    p_hjdp_id IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_ID%TYPE /*PK*/ ) 
  RETURN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_CREATED%TYPE 
  IS 
  BEGIN 
    RETURN read_row ( 
      p_hjdp_id => p_hjdp_id ).HJDP_CREATED; 
  END get_hjdp_created;
 
  FUNCTION get_hjdp_created_by ( 
    p_hjdp_id IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_ID%TYPE /*PK*/ ) 
  RETURN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_CREATED_BY%TYPE 
  IS 
  BEGIN 
    RETURN read_row ( 
      p_hjdp_id => p_hjdp_id ).HJDP_CREATED_BY; 
  END get_hjdp_created_by;
 
  FUNCTION get_hjdp_updated ( 
    p_hjdp_id IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_ID%TYPE /*PK*/ ) 
  RETURN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_UPDATED%TYPE 
  IS 
  BEGIN 
    RETURN read_row ( 
      p_hjdp_id => p_hjdp_id ).HJDP_UPDATED; 
  END get_hjdp_updated;
 
  FUNCTION get_hjdp_updated_by ( 
    p_hjdp_id IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_ID%TYPE /*PK*/ ) 
  RETURN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_UPDATED_BY%TYPE 
  IS 
  BEGIN 
    RETURN read_row ( 
      p_hjdp_id => p_hjdp_id ).HJDP_UPDATED_BY; 
  END get_hjdp_updated_by;
 
  FUNCTION get_hjdp_valid_from ( 
    p_hjdp_id IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_ID%TYPE /*PK*/ ) 
  RETURN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_VALID_FROM%TYPE 
  IS 
  BEGIN 
    RETURN read_row ( 
      p_hjdp_id => p_hjdp_id ).HJDP_VALID_FROM; 
  END get_hjdp_valid_from;
 
  FUNCTION get_hjdp_valid_to ( 
    p_hjdp_id IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_ID%TYPE /*PK*/ ) 
  RETURN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_VALID_TO%TYPE 
  IS 
  BEGIN 
    RETURN read_row ( 
      p_hjdp_id => p_hjdp_id ).HJDP_VALID_TO; 
  END get_hjdp_valid_to;
 
  FUNCTION get_hjdp_deleted_yn ( 
    p_hjdp_id IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_ID%TYPE /*PK*/ ) 
  RETURN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_DELETED_YN%TYPE 
  IS 
  BEGIN 
    RETURN read_row ( 
      p_hjdp_id => p_hjdp_id ).HJDP_DELETED_YN; 
  END get_hjdp_deleted_yn;
 
  FUNCTION get_hjdp_hfat_fk ( 
    p_hjdp_id IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_ID%TYPE /*PK*/ ) 
  RETURN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_HFAT_FK%TYPE 
  IS 
  BEGIN 
    RETURN read_row ( 
      p_hjdp_id => p_hjdp_id ).HJDP_HFAT_FK; 
  END get_hjdp_hfat_fk;
 
  FUNCTION get_hjdp_prop_fk ( 
    p_hjdp_id IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_ID%TYPE /*PK*/ ) 
  RETURN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_PROP_FK%TYPE 
  IS 
  BEGIN 
    RETURN read_row ( 
      p_hjdp_id => p_hjdp_id ).HJDP_PROP_FK; 
  END get_hjdp_prop_fk;
 
  PROCEDURE set_hjdp_name ( 
    p_hjdp_id   IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_ID%TYPE /*PK*/, 
    p_hjdp_name IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_NAME%TYPE ) 
  IS 
  BEGIN 
    UPDATE 
      SFB_HELP_JSON_DATA_TYPE_PROPERTIES 
    SET 
      HJDP_NAME       = p_hjdp_name,
      HJDP_UPDATED    = systimestamp,
      HJDP_UPDATED_BY = coalesce(sys_context('apex$session','app_user'), sys_context('userenv','os_user'), sys_context('userenv','session_user')) 
    WHERE 
      HJDP_ID = p_hjdp_id; 
  END set_hjdp_name;
 
  PROCEDURE set_hjdp_remark ( 
    p_hjdp_id     IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_ID%TYPE /*PK*/, 
    p_hjdp_remark IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_REMARK%TYPE ) 
  IS 
  BEGIN 
    UPDATE 
      SFB_HELP_JSON_DATA_TYPE_PROPERTIES 
    SET 
      HJDP_REMARK     = p_hjdp_remark,
      HJDP_UPDATED    = systimestamp,
      HJDP_UPDATED_BY = coalesce(sys_context('apex$session','app_user'), sys_context('userenv','os_user'), sys_context('userenv','session_user')) 
    WHERE 
      HJDP_ID = p_hjdp_id; 
  END set_hjdp_remark;
 
  PROCEDURE set_hjdp_valid_from ( 
    p_hjdp_id         IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_ID%TYPE /*PK*/, 
    p_hjdp_valid_from IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_VALID_FROM%TYPE ) 
  IS 
  BEGIN 
    UPDATE 
      SFB_HELP_JSON_DATA_TYPE_PROPERTIES 
    SET 
      HJDP_UPDATED    = systimestamp,
      HJDP_UPDATED_BY = coalesce(sys_context('apex$session','app_user'), sys_context('userenv','os_user'), sys_context('userenv','session_user')),
      HJDP_VALID_FROM = p_hjdp_valid_from 
    WHERE 
      HJDP_ID = p_hjdp_id; 
  END set_hjdp_valid_from;
 
  PROCEDURE set_hjdp_valid_to ( 
    p_hjdp_id       IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_ID%TYPE /*PK*/, 
    p_hjdp_valid_to IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_VALID_TO%TYPE ) 
  IS 
  BEGIN 
    UPDATE 
      SFB_HELP_JSON_DATA_TYPE_PROPERTIES 
    SET 
      HJDP_UPDATED    = systimestamp,
      HJDP_UPDATED_BY = coalesce(sys_context('apex$session','app_user'), sys_context('userenv','os_user'), sys_context('userenv','session_user')),
      HJDP_VALID_TO   = p_hjdp_valid_to 
    WHERE 
      HJDP_ID = p_hjdp_id; 
  END set_hjdp_valid_to;
 
  PROCEDURE set_hjdp_deleted_yn ( 
    p_hjdp_id         IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_ID%TYPE /*PK*/, 
    p_hjdp_deleted_yn IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_DELETED_YN%TYPE ) 
  IS 
  BEGIN 
    UPDATE 
      SFB_HELP_JSON_DATA_TYPE_PROPERTIES 
    SET 
      HJDP_UPDATED    = systimestamp,
      HJDP_UPDATED_BY = coalesce(sys_context('apex$session','app_user'), sys_context('userenv','os_user'), sys_context('userenv','session_user')),
      HJDP_DELETED_YN = p_hjdp_deleted_yn 
    WHERE 
      HJDP_ID = p_hjdp_id; 
  END set_hjdp_deleted_yn;
 
  PROCEDURE set_hjdp_hfat_fk ( 
    p_hjdp_id      IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_ID%TYPE /*PK*/, 
    p_hjdp_hfat_fk IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_HFAT_FK%TYPE ) 
  IS 
  BEGIN 
    UPDATE 
      SFB_HELP_JSON_DATA_TYPE_PROPERTIES 
    SET 
      HJDP_UPDATED    = systimestamp,
      HJDP_UPDATED_BY = coalesce(sys_context('apex$session','app_user'), sys_context('userenv','os_user'), sys_context('userenv','session_user')),
      HJDP_HFAT_FK    = p_hjdp_hfat_fk /*FK*/ 
    WHERE 
      HJDP_ID = p_hjdp_id; 
  END set_hjdp_hfat_fk;
 
  PROCEDURE set_hjdp_prop_fk ( 
    p_hjdp_id      IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_ID%TYPE /*PK*/, 
    p_hjdp_prop_fk IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_PROP_FK%TYPE ) 
  IS 
  BEGIN 
    UPDATE 
      SFB_HELP_JSON_DATA_TYPE_PROPERTIES 
    SET 
      HJDP_UPDATED    = systimestamp,
      HJDP_UPDATED_BY = coalesce(sys_context('apex$session','app_user'), sys_context('userenv','os_user'), sys_context('userenv','session_user')),
      HJDP_PROP_FK    = p_hjdp_prop_fk /*FK*/ 
    WHERE 
      HJDP_ID = p_hjdp_id; 
  END set_hjdp_prop_fk;
 
  FUNCTION get_default_row 
  RETURN SFB_HELP_JSON_DATA_TYPE_PROPERTIES%ROWTYPE 
  IS 
    v_row SFB_HELP_JSON_DATA_TYPE_PROPERTIES%ROWTYPE; 
  BEGIN 
    v_row.HJDP_ID         := "SFB_HJDP_SEQ"."NEXTVAL" /*PK*/;
    v_row.HJDP_CREATED    := sysdate ;
    v_row.HJDP_CREATED_BY := ( coalesce(sys_context('apex$session', 'app_user'),  
                                                           sys_context('userenv', 'os_user'),  
                                                           sys_context('userenv', 'session_user')) ) ;
    v_row.HJDP_UPDATED    := sysdate ;
    v_row.HJDP_UPDATED_BY := ( coalesce(sys_context('apex$session', 'app_user'),  
                                                           sys_context('userenv', 'os_user'),  
                                                           sys_context('userenv', 'session_user')) ) ;
    v_row.HJDP_VALID_FROM := sysdate ;
    v_row.HJDP_VALID_TO   := TO_DATE('31.12.2999', 'DD.MM.YYYY') ;
    v_row.HJDP_DELETED_YN := 'NO' ; 
    RETURN v_row; 
  END get_default_row;
 
END SFB_HELP_JSON_DATA_TYPE_PROPERTIES_PKG;
/