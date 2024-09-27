create or replace PACKAGE       SFB_HELP_REFRENZ_JSON_FORM_PKG IS 
  /* 
  This is the API for the table SFB_HELP_REFRENZ_JSON_FORM. 
 
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
    p_table_name="SFB_HELP_REFRENZ_JSON_FORM" 
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
    p_dml_view_name="SFB_HELP_REFRENZ_JSON_FORM_DML_V" 
    p_dml_view_trigger_name="SFB_HELP_REFRENZ_JSON_FORM_IOIUD" 
    p_enable_one_to_one_view="FALSE" 
    p_one_to_one_view_name="SFB_HELP_REFRENZ_JSON_FORM_V" 
    p_api_name="SFB_HELP_REFRENZ_JSON_FORM_PKG" 
    p_sequence_name="" 
    p_exclude_column_list="" 
    p_audit_column_mappings="created=#PREFIX#_CREATED, created_by=#PREFIX#_CREATED_BY, updated=#PREFIX#_UPDATED, updated_by=#PREFIX#_UPDATED_BY" 
    p_audit_user_expression="coalesce(sys_context('apex$session','app_user'), sys_context('userenv','os_user'), sys_context('userenv','session_user'))" 
    p_row_version_column_mapping="" 
    p_tenant_column_mapping="" 
    p_enable_custom_defaults="FALSE" 
    p_custom_default_values=""/> 
  */
 
  TYPE t_strong_ref_cursor IS REF CURSOR RETURN SFB_HELP_REFRENZ_JSON_FORM%ROWTYPE;
 
  FUNCTION bulk_is_complete 
  RETURN BOOLEAN;
 
  PROCEDURE set_bulk_limit ( 
    p_bulk_limit IN PLS_INTEGER );
 
  FUNCTION get_bulk_limit 
  RETURN PLS_INTEGER;
 
  FUNCTION row_exists ( 
    p_hrjf_id IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_ID%TYPE /*PK*/ ) 
  RETURN BOOLEAN;
 
  FUNCTION row_exists_yn ( 
    p_hrjf_id IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_ID%TYPE /*PK*/ ) 
  RETURN VARCHAR2;
 
  FUNCTION create_row ( 
    p_hrjf_id              IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_ID%TYPE                DEFAULT "SFB_HRJF_SEQ"."NEXTVAL" /*PK*/,
    p_hrjf_main_json_fk    IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_MAIN_JSON_FK%TYPE       /*FK*/,
    p_hrjf_refrenz_json_fk IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_REFRENZ_JSON_FK%TYPE    /*FK*/,
    p_hrjf_remark          IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_REMARK%TYPE            DEFAULT NULL,
    p_hrjf_valid_from      IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_VALID_FROM%TYPE        DEFAULT sysdate ,
    p_hrjf_valid_to        IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_VALID_TO%TYPE          DEFAULT TO_DATE('31.12.2999', 'DD.MM.YYYY') ,
    p_hrjf_deleted_yn      IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_DELETED_YN%TYPE        DEFAULT 'NO' ,
    p_hrjf_name            IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_NAME%TYPE               ) 
  RETURN SFB_HELP_REFRENZ_JSON_FORM.HRJF_ID%TYPE;
 
  PROCEDURE create_row ( 
    p_hrjf_id              IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_ID%TYPE                DEFAULT "SFB_HRJF_SEQ"."NEXTVAL" /*PK*/,
    p_hrjf_main_json_fk    IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_MAIN_JSON_FK%TYPE       /*FK*/,
    p_hrjf_refrenz_json_fk IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_REFRENZ_JSON_FK%TYPE    /*FK*/,
    p_hrjf_remark          IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_REMARK%TYPE            DEFAULT NULL,
    p_hrjf_valid_from      IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_VALID_FROM%TYPE        DEFAULT sysdate ,
    p_hrjf_valid_to        IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_VALID_TO%TYPE          DEFAULT TO_DATE('31.12.2999', 'DD.MM.YYYY') ,
    p_hrjf_deleted_yn      IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_DELETED_YN%TYPE        DEFAULT 'NO' ,
    p_HRJF_ARRAY_YN        IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_ARRAY_YN%TYPE        DEFAULT 'N' ,
    p_hrjf_name            IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_NAME%TYPE               );
 
  FUNCTION create_row ( 
    p_row IN SFB_HELP_REFRENZ_JSON_FORM%ROWTYPE ) 
  RETURN SFB_HELP_REFRENZ_JSON_FORM.HRJF_ID%TYPE;
 
  PROCEDURE create_row ( 
    p_row IN SFB_HELP_REFRENZ_JSON_FORM%ROWTYPE );
 

 

 
  FUNCTION read_row ( 
    p_hrjf_id IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_ID%TYPE /*PK*/ ) 
  RETURN SFB_HELP_REFRENZ_JSON_FORM%ROWTYPE;
 
  PROCEDURE read_row ( 
    p_hrjf_id              IN            SFB_HELP_REFRENZ_JSON_FORM.HRJF_ID%TYPE /*PK*/,
    p_hrjf_main_json_fk       OUT NOCOPY SFB_HELP_REFRENZ_JSON_FORM.HRJF_MAIN_JSON_FK%TYPE /*FK*/,
    p_hrjf_refrenz_json_fk    OUT NOCOPY SFB_HELP_REFRENZ_JSON_FORM.HRJF_REFRENZ_JSON_FK%TYPE /*FK*/,
    p_hrjf_remark             OUT NOCOPY SFB_HELP_REFRENZ_JSON_FORM.HRJF_REMARK%TYPE,
    p_hrjf_created            OUT NOCOPY SFB_HELP_REFRENZ_JSON_FORM.HRJF_CREATED%TYPE,
    p_hrjf_created_by         OUT NOCOPY SFB_HELP_REFRENZ_JSON_FORM.HRJF_CREATED_BY%TYPE,
    p_hrjf_updated            OUT NOCOPY SFB_HELP_REFRENZ_JSON_FORM.HRJF_UPDATED%TYPE,
    p_hrjf_updated_by         OUT NOCOPY SFB_HELP_REFRENZ_JSON_FORM.HRJF_UPDATED_BY%TYPE,
    p_hrjf_valid_from         OUT NOCOPY SFB_HELP_REFRENZ_JSON_FORM.HRJF_VALID_FROM%TYPE,
    p_hrjf_valid_to           OUT NOCOPY SFB_HELP_REFRENZ_JSON_FORM.HRJF_VALID_TO%TYPE,
    p_hrjf_deleted_yn         OUT NOCOPY SFB_HELP_REFRENZ_JSON_FORM.HRJF_DELETED_YN%TYPE,
    p_hrjf_name               OUT NOCOPY SFB_HELP_REFRENZ_JSON_FORM.HRJF_NAME%TYPE );
 

 
  FUNCTION update_row ( 
    p_hrjf_id              IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_ID%TYPE /*PK*/,
    p_hrjf_main_json_fk    IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_MAIN_JSON_FK%TYPE /*FK*/,
    p_hrjf_refrenz_json_fk IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_REFRENZ_JSON_FK%TYPE /*FK*/,
    p_hrjf_remark          IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_REMARK%TYPE,
    p_hrjf_valid_from      IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_VALID_FROM%TYPE,
    p_hrjf_valid_to        IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_VALID_TO%TYPE,
    p_hrjf_deleted_yn      IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_DELETED_YN%TYPE,
    p_hrjf_name            IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_NAME%TYPE ) 
  RETURN SFB_HELP_REFRENZ_JSON_FORM.HRJF_ID%TYPE;
 
  PROCEDURE update_row ( 
    p_hrjf_id              IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_ID%TYPE /*PK*/,
    p_hrjf_main_json_fk    IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_MAIN_JSON_FK%TYPE /*FK*/,
    p_hrjf_refrenz_json_fk IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_REFRENZ_JSON_FK%TYPE /*FK*/,
    p_hrjf_remark          IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_REMARK%TYPE,
    p_hrjf_valid_from      IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_VALID_FROM%TYPE,
    p_hrjf_valid_to        IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_VALID_TO%TYPE,
    p_hrjf_deleted_yn      IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_DELETED_YN%TYPE,
    p_hrjf_name            IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_NAME%TYPE );
 
  FUNCTION update_row ( 
    p_row IN SFB_HELP_REFRENZ_JSON_FORM%ROWTYPE ) 
  RETURN SFB_HELP_REFRENZ_JSON_FORM.HRJF_ID%TYPE;
 
  PROCEDURE update_row ( 
    p_row IN SFB_HELP_REFRENZ_JSON_FORM%ROWTYPE );
 

 
  PROCEDURE delete_row ( 
    p_hrjf_id IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_ID%TYPE /*PK*/ );
 

 
  FUNCTION create_or_update_row ( 
    p_hrjf_id              IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_ID%TYPE /*PK*/,
    p_hrjf_main_json_fk    IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_MAIN_JSON_FK%TYPE /*FK*/,
    p_hrjf_refrenz_json_fk IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_REFRENZ_JSON_FK%TYPE /*FK*/,
    p_hrjf_remark          IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_REMARK%TYPE,
    p_hrjf_valid_from      IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_VALID_FROM%TYPE,
    p_hrjf_valid_to        IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_VALID_TO%TYPE,
    p_hrjf_deleted_yn      IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_DELETED_YN%TYPE,
    p_hrjf_name            IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_NAME%TYPE ) 
  RETURN SFB_HELP_REFRENZ_JSON_FORM.HRJF_ID%TYPE;
 
  PROCEDURE create_or_update_row ( 
    p_hrjf_id              IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_ID%TYPE /*PK*/,
    p_hrjf_main_json_fk    IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_MAIN_JSON_FK%TYPE /*FK*/,
    p_hrjf_refrenz_json_fk IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_REFRENZ_JSON_FK%TYPE /*FK*/,
    p_hrjf_remark          IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_REMARK%TYPE,
    p_hrjf_valid_from      IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_VALID_FROM%TYPE,
    p_hrjf_valid_to        IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_VALID_TO%TYPE,
    p_hrjf_deleted_yn      IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_DELETED_YN%TYPE,
    p_hrjf_name            IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_NAME%TYPE );
 
  FUNCTION create_or_update_row ( 
    p_row IN SFB_HELP_REFRENZ_JSON_FORM%ROWTYPE ) 
  RETURN SFB_HELP_REFRENZ_JSON_FORM.HRJF_ID%TYPE;
 
  PROCEDURE create_or_update_row ( 
    p_row IN SFB_HELP_REFRENZ_JSON_FORM%ROWTYPE );
 
  FUNCTION get_hrjf_main_json_fk ( 
    p_hrjf_id IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_ID%TYPE /*PK*/ ) 
  RETURN SFB_HELP_REFRENZ_JSON_FORM.HRJF_MAIN_JSON_FK%TYPE;
 
  FUNCTION get_hrjf_refrenz_json_fk ( 
    p_hrjf_id IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_ID%TYPE /*PK*/ ) 
  RETURN SFB_HELP_REFRENZ_JSON_FORM.HRJF_REFRENZ_JSON_FK%TYPE;
 
  FUNCTION get_hrjf_remark ( 
    p_hrjf_id IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_ID%TYPE /*PK*/ ) 
  RETURN SFB_HELP_REFRENZ_JSON_FORM.HRJF_REMARK%TYPE;
 
  FUNCTION get_hrjf_created ( 
    p_hrjf_id IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_ID%TYPE /*PK*/ ) 
  RETURN SFB_HELP_REFRENZ_JSON_FORM.HRJF_CREATED%TYPE;
 
  FUNCTION get_hrjf_created_by ( 
    p_hrjf_id IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_ID%TYPE /*PK*/ ) 
  RETURN SFB_HELP_REFRENZ_JSON_FORM.HRJF_CREATED_BY%TYPE;
 
  FUNCTION get_hrjf_updated ( 
    p_hrjf_id IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_ID%TYPE /*PK*/ ) 
  RETURN SFB_HELP_REFRENZ_JSON_FORM.HRJF_UPDATED%TYPE;
 
  FUNCTION get_hrjf_updated_by ( 
    p_hrjf_id IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_ID%TYPE /*PK*/ ) 
  RETURN SFB_HELP_REFRENZ_JSON_FORM.HRJF_UPDATED_BY%TYPE;
 
  FUNCTION get_hrjf_valid_from ( 
    p_hrjf_id IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_ID%TYPE /*PK*/ ) 
  RETURN SFB_HELP_REFRENZ_JSON_FORM.HRJF_VALID_FROM%TYPE;
 
  FUNCTION get_hrjf_valid_to ( 
    p_hrjf_id IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_ID%TYPE /*PK*/ ) 
  RETURN SFB_HELP_REFRENZ_JSON_FORM.HRJF_VALID_TO%TYPE;
 
  FUNCTION get_hrjf_deleted_yn ( 
    p_hrjf_id IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_ID%TYPE /*PK*/ ) 
  RETURN SFB_HELP_REFRENZ_JSON_FORM.HRJF_DELETED_YN%TYPE;
 
  FUNCTION get_hrjf_name ( 
    p_hrjf_id IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_ID%TYPE /*PK*/ ) 
  RETURN SFB_HELP_REFRENZ_JSON_FORM.HRJF_NAME%TYPE;
 
  PROCEDURE set_hrjf_main_json_fk ( 
    p_hrjf_id           IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_ID%TYPE /*PK*/, 
    p_hrjf_main_json_fk IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_MAIN_JSON_FK%TYPE );
 
  PROCEDURE set_hrjf_refrenz_json_fk ( 
    p_hrjf_id              IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_ID%TYPE /*PK*/, 
    p_hrjf_refrenz_json_fk IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_REFRENZ_JSON_FK%TYPE );
 
  PROCEDURE set_hrjf_remark ( 
    p_hrjf_id     IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_ID%TYPE /*PK*/, 
    p_hrjf_remark IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_REMARK%TYPE );
 
  PROCEDURE set_hrjf_valid_from ( 
    p_hrjf_id         IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_ID%TYPE /*PK*/, 
    p_hrjf_valid_from IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_VALID_FROM%TYPE );
 
  PROCEDURE set_hrjf_valid_to ( 
    p_hrjf_id       IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_ID%TYPE /*PK*/, 
    p_hrjf_valid_to IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_VALID_TO%TYPE );
 
  PROCEDURE set_hrjf_deleted_yn ( 
    p_hrjf_id         IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_ID%TYPE /*PK*/, 
    p_hrjf_deleted_yn IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_DELETED_YN%TYPE );
 
  PROCEDURE set_hrjf_name ( 
    p_hrjf_id   IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_ID%TYPE /*PK*/, 
    p_hrjf_name IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_NAME%TYPE );
 
  FUNCTION get_default_row 
  RETURN SFB_HELP_REFRENZ_JSON_FORM%ROWTYPE; 
  /* 
  Helper to get a prepopulated row with the table defaults from the dictionary. 
  */
 
END SFB_HELP_REFRENZ_JSON_FORM_PKG;
/

create or replace PACKAGE BODY       SFB_HELP_REFRENZ_JSON_FORM_PKG IS 
  /* 
  This is the API for the table SFB_HELP_REFRENZ_JSON_FORM. 
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
    p_hrjf_id IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_ID%TYPE /*PK*/ ) 
  RETURN BOOLEAN 
  IS 
    v_return BOOLEAN := FALSE; 
    v_dummy  PLS_INTEGER; 
    CURSOR   cur_bool IS 
      SELECT 1 FROM SFB_HELP_REFRENZ_JSON_FORM 
      WHERE 
        HRJF_ID = p_hrjf_id; 
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
    p_hrjf_id IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_ID%TYPE /*PK*/ ) 
  RETURN VARCHAR2 
  IS 
  BEGIN 
    RETURN 
      CASE 
        WHEN row_exists( 
          p_hrjf_id => p_hrjf_id ) 
        THEN 'Y' 
        ELSE 'N' 
      END; 
  END;
 
  FUNCTION create_row ( 
    p_hrjf_id              IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_ID%TYPE                DEFAULT "SFB_HRJF_SEQ"."NEXTVAL" /*PK*/,
    p_hrjf_main_json_fk    IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_MAIN_JSON_FK%TYPE       /*FK*/,
    p_hrjf_refrenz_json_fk IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_REFRENZ_JSON_FK%TYPE    /*FK*/,
    p_hrjf_remark          IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_REMARK%TYPE            DEFAULT NULL,
    p_hrjf_valid_from      IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_VALID_FROM%TYPE        DEFAULT sysdate ,
    p_hrjf_valid_to        IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_VALID_TO%TYPE          DEFAULT TO_DATE('31.12.2999', 'DD.MM.YYYY') ,
    p_hrjf_deleted_yn      IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_DELETED_YN%TYPE        DEFAULT 'NO' ,
    p_hrjf_name            IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_NAME%TYPE               ) 
  RETURN SFB_HELP_REFRENZ_JSON_FORM.HRJF_ID%TYPE 
  IS 
    v_return SFB_HELP_REFRENZ_JSON_FORM.HRJF_ID%TYPE;  
  BEGIN 
    INSERT INTO SFB_HELP_REFRENZ_JSON_FORM ( 
      HRJF_ID /*PK*/,
      HRJF_MAIN_JSON_FK /*FK*/,
      HRJF_REFRENZ_JSON_FK /*FK*/,
      HRJF_REMARK,
      HRJF_CREATED,
      HRJF_CREATED_BY,
      HRJF_UPDATED,
      HRJF_UPDATED_BY,
      HRJF_VALID_FROM,
      HRJF_VALID_TO,
      HRJF_DELETED_YN,
      HRJF_NAME ) 
    VALUES ( 
      p_hrjf_id,
      p_hrjf_main_json_fk,
      p_hrjf_refrenz_json_fk,
      p_hrjf_remark,
      systimestamp,
      coalesce(sys_context('apex$session','app_user'), sys_context('userenv','os_user'), sys_context('userenv','session_user')),
      systimestamp,
      coalesce(sys_context('apex$session','app_user'), sys_context('userenv','os_user'), sys_context('userenv','session_user')),
      p_hrjf_valid_from,
      p_hrjf_valid_to,
      p_hrjf_deleted_yn,
      p_hrjf_name ) 
    RETURN  
      HRJF_ID 
    INTO 
      v_return; 
    RETURN v_return; 
  END create_row;
 
  PROCEDURE create_row ( 
    p_hrjf_id              IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_ID%TYPE                DEFAULT "SFB_HRJF_SEQ"."NEXTVAL" /*PK*/,
    p_hrjf_main_json_fk    IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_MAIN_JSON_FK%TYPE       /*FK*/,
    p_hrjf_refrenz_json_fk IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_REFRENZ_JSON_FK%TYPE    /*FK*/,
    p_hrjf_remark          IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_REMARK%TYPE            DEFAULT NULL,
    p_hrjf_valid_from      IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_VALID_FROM%TYPE        DEFAULT sysdate ,
    p_hrjf_valid_to        IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_VALID_TO%TYPE          DEFAULT TO_DATE('31.12.2999', 'DD.MM.YYYY') ,
    p_hrjf_deleted_yn      IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_DELETED_YN%TYPE        DEFAULT 'NO' ,
    p_HRJF_ARRAY_YN        IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_ARRAY_YN%TYPE        DEFAULT 'N' ,
    p_hrjf_name            IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_NAME%TYPE               ) 
  IS 
  BEGIN 
    INSERT INTO SFB_HELP_REFRENZ_JSON_FORM ( 
      HRJF_ID /*PK*/,
      HRJF_MAIN_JSON_FK /*FK*/,
      HRJF_REFRENZ_JSON_FK /*FK*/,
      HRJF_REMARK,
      HRJF_CREATED,
      HRJF_CREATED_BY,
      HRJF_UPDATED,
      HRJF_UPDATED_BY,
      HRJF_VALID_FROM,
      HRJF_VALID_TO,
      HRJF_DELETED_YN,
      HRJF_ARRAY_YN,
      HRJF_NAME ) 
    VALUES ( 
      p_hrjf_id,
      p_hrjf_main_json_fk,
      p_hrjf_refrenz_json_fk,
      p_hrjf_remark,
      systimestamp,
      coalesce(sys_context('apex$session','app_user'), sys_context('userenv','os_user'), sys_context('userenv','session_user')),
      systimestamp,
      coalesce(sys_context('apex$session','app_user'), sys_context('userenv','os_user'), sys_context('userenv','session_user')),
      p_hrjf_valid_from,
      p_hrjf_valid_to,
      p_hrjf_deleted_yn,
      p_HRJF_ARRAY_YN,
      p_hrjf_name ); 
  END create_row;
 
  FUNCTION create_row ( 
    p_row IN SFB_HELP_REFRENZ_JSON_FORM%ROWTYPE ) 
  RETURN SFB_HELP_REFRENZ_JSON_FORM.HRJF_ID%TYPE 
  IS 
  BEGIN 
    RETURN create_row ( 
      p_hrjf_id              => p_row.HRJF_ID /*PK*/,
      p_hrjf_main_json_fk    => p_row.HRJF_MAIN_JSON_FK /*FK*/,
      p_hrjf_refrenz_json_fk => p_row.HRJF_REFRENZ_JSON_FK /*FK*/,
      p_hrjf_remark          => p_row.HRJF_REMARK,
      p_hrjf_valid_from      => p_row.HRJF_VALID_FROM,
      p_hrjf_valid_to        => p_row.HRJF_VALID_TO,
      p_hrjf_deleted_yn      => p_row.HRJF_DELETED_YN,
      p_hrjf_name            => p_row.HRJF_NAME ); 
  END create_row;
 
  PROCEDURE create_row ( 
    p_row IN SFB_HELP_REFRENZ_JSON_FORM%ROWTYPE ) 
  IS 
  BEGIN 
    create_row ( 
      p_hrjf_id              => p_row.HRJF_ID /*PK*/,
      p_hrjf_main_json_fk    => p_row.HRJF_MAIN_JSON_FK /*FK*/,
      p_hrjf_refrenz_json_fk => p_row.HRJF_REFRENZ_JSON_FK /*FK*/,
      p_hrjf_remark          => p_row.HRJF_REMARK,
      p_hrjf_valid_from      => p_row.HRJF_VALID_FROM,
      p_hrjf_valid_to        => p_row.HRJF_VALID_TO,
      p_hrjf_deleted_yn      => p_row.HRJF_DELETED_YN,
      p_hrjf_name            => p_row.HRJF_NAME ); 
  END create_row;
 
 
 
 
  FUNCTION read_row ( 
    p_hrjf_id IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_ID%TYPE /*PK*/ ) 
  RETURN SFB_HELP_REFRENZ_JSON_FORM%ROWTYPE 
  IS 
    v_row SFB_HELP_REFRENZ_JSON_FORM%ROWTYPE; 
    CURSOR cur_row IS 
      SELECT * FROM SFB_HELP_REFRENZ_JSON_FORM 
      WHERE 
        HRJF_ID = p_hrjf_id; 
  BEGIN 
    OPEN cur_row; 
    FETCH cur_row INTO v_row; 
    CLOSE cur_row; 
    RETURN v_row; 
  END read_row;
 
  PROCEDURE read_row ( 
    p_hrjf_id              IN            SFB_HELP_REFRENZ_JSON_FORM.HRJF_ID%TYPE /*PK*/,
    p_hrjf_main_json_fk       OUT NOCOPY SFB_HELP_REFRENZ_JSON_FORM.HRJF_MAIN_JSON_FK%TYPE /*FK*/,
    p_hrjf_refrenz_json_fk    OUT NOCOPY SFB_HELP_REFRENZ_JSON_FORM.HRJF_REFRENZ_JSON_FK%TYPE /*FK*/,
    p_hrjf_remark             OUT NOCOPY SFB_HELP_REFRENZ_JSON_FORM.HRJF_REMARK%TYPE,
    p_hrjf_created            OUT NOCOPY SFB_HELP_REFRENZ_JSON_FORM.HRJF_CREATED%TYPE,
    p_hrjf_created_by         OUT NOCOPY SFB_HELP_REFRENZ_JSON_FORM.HRJF_CREATED_BY%TYPE,
    p_hrjf_updated            OUT NOCOPY SFB_HELP_REFRENZ_JSON_FORM.HRJF_UPDATED%TYPE,
    p_hrjf_updated_by         OUT NOCOPY SFB_HELP_REFRENZ_JSON_FORM.HRJF_UPDATED_BY%TYPE,
    p_hrjf_valid_from         OUT NOCOPY SFB_HELP_REFRENZ_JSON_FORM.HRJF_VALID_FROM%TYPE,
    p_hrjf_valid_to           OUT NOCOPY SFB_HELP_REFRENZ_JSON_FORM.HRJF_VALID_TO%TYPE,
    p_hrjf_deleted_yn         OUT NOCOPY SFB_HELP_REFRENZ_JSON_FORM.HRJF_DELETED_YN%TYPE,
    p_hrjf_name               OUT NOCOPY SFB_HELP_REFRENZ_JSON_FORM.HRJF_NAME%TYPE ) 
  IS 
    v_row SFB_HELP_REFRENZ_JSON_FORM%ROWTYPE; 
  BEGIN 
    v_row := read_row ( 
      p_hrjf_id => p_hrjf_id ); 
    p_hrjf_main_json_fk    := v_row.HRJF_MAIN_JSON_FK; 
    p_hrjf_refrenz_json_fk := v_row.HRJF_REFRENZ_JSON_FK; 
    p_hrjf_remark          := v_row.HRJF_REMARK; 
    p_hrjf_created         := v_row.HRJF_CREATED; 
    p_hrjf_created_by      := v_row.HRJF_CREATED_BY; 
    p_hrjf_updated         := v_row.HRJF_UPDATED; 
    p_hrjf_updated_by      := v_row.HRJF_UPDATED_BY; 
    p_hrjf_valid_from      := v_row.HRJF_VALID_FROM; 
    p_hrjf_valid_to        := v_row.HRJF_VALID_TO; 
    p_hrjf_deleted_yn      := v_row.HRJF_DELETED_YN; 
    p_hrjf_name            := v_row.HRJF_NAME;  
  END read_row;
 
  
  FUNCTION update_row ( 
    p_hrjf_id              IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_ID%TYPE /*PK*/,
    p_hrjf_main_json_fk    IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_MAIN_JSON_FK%TYPE /*FK*/,
    p_hrjf_refrenz_json_fk IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_REFRENZ_JSON_FK%TYPE /*FK*/,
    p_hrjf_remark          IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_REMARK%TYPE,
    p_hrjf_valid_from      IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_VALID_FROM%TYPE,
    p_hrjf_valid_to        IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_VALID_TO%TYPE,
    p_hrjf_deleted_yn      IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_DELETED_YN%TYPE,
    p_hrjf_name            IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_NAME%TYPE ) 
  RETURN SFB_HELP_REFRENZ_JSON_FORM.HRJF_ID%TYPE 
  IS 
    v_return SFB_HELP_REFRENZ_JSON_FORM.HRJF_ID%TYPE;  
  BEGIN 
    UPDATE 
      SFB_HELP_REFRENZ_JSON_FORM 
    SET 
      HRJF_MAIN_JSON_FK    = p_hrjf_main_json_fk /*FK*/,
      HRJF_REFRENZ_JSON_FK = p_hrjf_refrenz_json_fk /*FK*/,
      HRJF_REMARK          = p_hrjf_remark,
      HRJF_UPDATED         = systimestamp,
      HRJF_UPDATED_BY      = coalesce(sys_context('apex$session','app_user'), sys_context('userenv','os_user'), sys_context('userenv','session_user')),
      HRJF_VALID_FROM      = p_hrjf_valid_from,
      HRJF_VALID_TO        = p_hrjf_valid_to,
      HRJF_DELETED_YN      = p_hrjf_deleted_yn,
      HRJF_NAME            = p_hrjf_name 
    WHERE 
      HRJF_ID = p_hrjf_id 
    RETURN  
      HRJF_ID 
    INTO 
      v_return; 
    RETURN v_return; 
  END update_row;
 
  PROCEDURE update_row ( 
    p_hrjf_id              IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_ID%TYPE /*PK*/,
    p_hrjf_main_json_fk    IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_MAIN_JSON_FK%TYPE /*FK*/,
    p_hrjf_refrenz_json_fk IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_REFRENZ_JSON_FK%TYPE /*FK*/,
    p_hrjf_remark          IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_REMARK%TYPE,
    p_hrjf_valid_from      IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_VALID_FROM%TYPE,
    p_hrjf_valid_to        IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_VALID_TO%TYPE,
    p_hrjf_deleted_yn      IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_DELETED_YN%TYPE,
    p_hrjf_name            IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_NAME%TYPE ) 
  IS 
  BEGIN 
    UPDATE 
      SFB_HELP_REFRENZ_JSON_FORM 
    SET 
      HRJF_MAIN_JSON_FK    = p_hrjf_main_json_fk /*FK*/,
      HRJF_REFRENZ_JSON_FK = p_hrjf_refrenz_json_fk /*FK*/,
      HRJF_REMARK          = p_hrjf_remark,
      HRJF_UPDATED         = systimestamp,
      HRJF_UPDATED_BY      = coalesce(sys_context('apex$session','app_user'), sys_context('userenv','os_user'), sys_context('userenv','session_user')),
      HRJF_VALID_FROM      = p_hrjf_valid_from,
      HRJF_VALID_TO        = p_hrjf_valid_to,
      HRJF_DELETED_YN      = p_hrjf_deleted_yn,
      HRJF_NAME            = p_hrjf_name 
    WHERE 
      HRJF_ID = p_hrjf_id; 
  END update_row;
 
  FUNCTION update_row ( 
    p_row IN SFB_HELP_REFRENZ_JSON_FORM%ROWTYPE ) 
  RETURN SFB_HELP_REFRENZ_JSON_FORM.HRJF_ID%TYPE 
  IS 
  BEGIN 
    RETURN update_row ( 
      p_hrjf_id              => p_row.HRJF_ID /*PK*/,
      p_hrjf_main_json_fk    => p_row.HRJF_MAIN_JSON_FK /*FK*/,
      p_hrjf_refrenz_json_fk => p_row.HRJF_REFRENZ_JSON_FK /*FK*/,
      p_hrjf_remark          => p_row.HRJF_REMARK,
      p_hrjf_valid_from      => p_row.HRJF_VALID_FROM,
      p_hrjf_valid_to        => p_row.HRJF_VALID_TO,
      p_hrjf_deleted_yn      => p_row.HRJF_DELETED_YN,
      p_hrjf_name            => p_row.HRJF_NAME ); 
  END update_row;
 
  PROCEDURE update_row ( 
    p_row IN SFB_HELP_REFRENZ_JSON_FORM%ROWTYPE ) 
  IS 
  BEGIN 
    update_row ( 
      p_hrjf_id              => p_row.HRJF_ID /*PK*/,
      p_hrjf_main_json_fk    => p_row.HRJF_MAIN_JSON_FK /*FK*/,
      p_hrjf_refrenz_json_fk => p_row.HRJF_REFRENZ_JSON_FK /*FK*/,
      p_hrjf_remark          => p_row.HRJF_REMARK,
      p_hrjf_valid_from      => p_row.HRJF_VALID_FROM,
      p_hrjf_valid_to        => p_row.HRJF_VALID_TO,
      p_hrjf_deleted_yn      => p_row.HRJF_DELETED_YN,
      p_hrjf_name            => p_row.HRJF_NAME ); 
  END update_row;
 
 
 
  PROCEDURE delete_row ( 
    p_hrjf_id IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_ID%TYPE /*PK*/ ) 
  IS 
  BEGIN 
    DELETE FROM SFB_HELP_REFRENZ_JSON_FORM 
    WHERE 
      HRJF_ID = p_hrjf_id; 
  END delete_row;
 
  
 
  FUNCTION create_or_update_row ( 
    p_hrjf_id              IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_ID%TYPE /*PK*/,
    p_hrjf_main_json_fk    IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_MAIN_JSON_FK%TYPE /*FK*/,
    p_hrjf_refrenz_json_fk IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_REFRENZ_JSON_FK%TYPE /*FK*/,
    p_hrjf_remark          IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_REMARK%TYPE,
    p_hrjf_valid_from      IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_VALID_FROM%TYPE,
    p_hrjf_valid_to        IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_VALID_TO%TYPE,
    p_hrjf_deleted_yn      IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_DELETED_YN%TYPE,
    p_hrjf_name            IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_NAME%TYPE ) 
  RETURN SFB_HELP_REFRENZ_JSON_FORM.HRJF_ID%TYPE 
  IS 
  BEGIN 
    IF row_exists( 
      p_hrjf_id => p_hrjf_id 
    ) 
    THEN 
      RETURN update_row ( 
        p_hrjf_id              => p_hrjf_id /*PK*/,
        p_hrjf_main_json_fk    => p_hrjf_main_json_fk /*FK*/,
        p_hrjf_refrenz_json_fk => p_hrjf_refrenz_json_fk /*FK*/,
        p_hrjf_remark          => p_hrjf_remark,
        p_hrjf_valid_from      => p_hrjf_valid_from,
        p_hrjf_valid_to        => p_hrjf_valid_to,
        p_hrjf_deleted_yn      => p_hrjf_deleted_yn,
        p_hrjf_name            => p_hrjf_name ); 
    ELSE 
      RETURN create_row ( 
        p_hrjf_id              => p_hrjf_id /*PK*/,
        p_hrjf_main_json_fk    => p_hrjf_main_json_fk /*FK*/,
        p_hrjf_refrenz_json_fk => p_hrjf_refrenz_json_fk /*FK*/,
        p_hrjf_remark          => p_hrjf_remark,
        p_hrjf_valid_from      => p_hrjf_valid_from,
        p_hrjf_valid_to        => p_hrjf_valid_to,
        p_hrjf_deleted_yn      => p_hrjf_deleted_yn,
        p_hrjf_name            => p_hrjf_name ); 
    END IF; 
  END create_or_update_row;
 
  PROCEDURE create_or_update_row ( 
    p_hrjf_id              IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_ID%TYPE /*PK*/,
    p_hrjf_main_json_fk    IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_MAIN_JSON_FK%TYPE /*FK*/,
    p_hrjf_refrenz_json_fk IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_REFRENZ_JSON_FK%TYPE /*FK*/,
    p_hrjf_remark          IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_REMARK%TYPE,
    p_hrjf_valid_from      IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_VALID_FROM%TYPE,
    p_hrjf_valid_to        IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_VALID_TO%TYPE,
    p_hrjf_deleted_yn      IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_DELETED_YN%TYPE,
    p_hrjf_name            IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_NAME%TYPE ) 
  IS 
  BEGIN 
    IF row_exists( 
      p_hrjf_id => p_hrjf_id 
    ) 
    THEN 
      update_row ( 
        p_hrjf_id              => p_hrjf_id /*PK*/,
        p_hrjf_main_json_fk    => p_hrjf_main_json_fk /*FK*/,
        p_hrjf_refrenz_json_fk => p_hrjf_refrenz_json_fk /*FK*/,
        p_hrjf_remark          => p_hrjf_remark,
        p_hrjf_valid_from      => p_hrjf_valid_from,
        p_hrjf_valid_to        => p_hrjf_valid_to,
        p_hrjf_deleted_yn      => p_hrjf_deleted_yn,
        p_hrjf_name            => p_hrjf_name ); 
    ELSE 
      create_row ( 
        p_hrjf_id              => p_hrjf_id /*PK*/,
        p_hrjf_main_json_fk    => p_hrjf_main_json_fk /*FK*/,
        p_hrjf_refrenz_json_fk => p_hrjf_refrenz_json_fk /*FK*/,
        p_hrjf_remark          => p_hrjf_remark,
        p_hrjf_valid_from      => p_hrjf_valid_from,
        p_hrjf_valid_to        => p_hrjf_valid_to,
        p_hrjf_deleted_yn      => p_hrjf_deleted_yn,
        p_hrjf_name            => p_hrjf_name ); 
    END IF; 
  END create_or_update_row;
 
  FUNCTION create_or_update_row ( 
    p_row IN SFB_HELP_REFRENZ_JSON_FORM%ROWTYPE ) 
  RETURN SFB_HELP_REFRENZ_JSON_FORM.HRJF_ID%TYPE 
  IS 
  BEGIN 
    IF row_exists( 
      p_hrjf_id => p_row.HRJF_ID 
    ) 
    THEN 
      RETURN update_row ( 
        p_hrjf_id              => p_row.HRJF_ID /*PK*/,
        p_hrjf_main_json_fk    => p_row.HRJF_MAIN_JSON_FK /*FK*/,
        p_hrjf_refrenz_json_fk => p_row.HRJF_REFRENZ_JSON_FK /*FK*/,
        p_hrjf_remark          => p_row.HRJF_REMARK,
        p_hrjf_valid_from      => p_row.HRJF_VALID_FROM,
        p_hrjf_valid_to        => p_row.HRJF_VALID_TO,
        p_hrjf_deleted_yn      => p_row.HRJF_DELETED_YN,
        p_hrjf_name            => p_row.HRJF_NAME ); 
    ELSE 
      RETURN create_row ( 
        p_hrjf_id              => p_row.HRJF_ID /*PK*/,
        p_hrjf_main_json_fk    => p_row.HRJF_MAIN_JSON_FK /*FK*/,
        p_hrjf_refrenz_json_fk => p_row.HRJF_REFRENZ_JSON_FK /*FK*/,
        p_hrjf_remark          => p_row.HRJF_REMARK,
        p_hrjf_valid_from      => p_row.HRJF_VALID_FROM,
        p_hrjf_valid_to        => p_row.HRJF_VALID_TO,
        p_hrjf_deleted_yn      => p_row.HRJF_DELETED_YN,
        p_hrjf_name            => p_row.HRJF_NAME ); 
    END IF; 
  END create_or_update_row;
 
  PROCEDURE create_or_update_row ( 
    p_row IN SFB_HELP_REFRENZ_JSON_FORM%ROWTYPE ) 
  IS 
  BEGIN 
    IF row_exists( 
      p_hrjf_id => p_row.HRJF_ID 
    ) 
    THEN 
      update_row ( 
        p_hrjf_id              => p_row.HRJF_ID /*PK*/,
        p_hrjf_main_json_fk    => p_row.HRJF_MAIN_JSON_FK /*FK*/,
        p_hrjf_refrenz_json_fk => p_row.HRJF_REFRENZ_JSON_FK /*FK*/,
        p_hrjf_remark          => p_row.HRJF_REMARK,
        p_hrjf_valid_from      => p_row.HRJF_VALID_FROM,
        p_hrjf_valid_to        => p_row.HRJF_VALID_TO,
        p_hrjf_deleted_yn      => p_row.HRJF_DELETED_YN,
        p_hrjf_name            => p_row.HRJF_NAME ); 
    ELSE 
      create_row ( 
        p_hrjf_id              => p_row.HRJF_ID /*PK*/,
        p_hrjf_main_json_fk    => p_row.HRJF_MAIN_JSON_FK /*FK*/,
        p_hrjf_refrenz_json_fk => p_row.HRJF_REFRENZ_JSON_FK /*FK*/,
        p_hrjf_remark          => p_row.HRJF_REMARK,
        p_hrjf_valid_from      => p_row.HRJF_VALID_FROM,
        p_hrjf_valid_to        => p_row.HRJF_VALID_TO,
        p_hrjf_deleted_yn      => p_row.HRJF_DELETED_YN,
        p_hrjf_name            => p_row.HRJF_NAME ); 
    END IF; 
  END create_or_update_row;
 
  FUNCTION get_hrjf_main_json_fk ( 
    p_hrjf_id IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_ID%TYPE /*PK*/ ) 
  RETURN SFB_HELP_REFRENZ_JSON_FORM.HRJF_MAIN_JSON_FK%TYPE 
  IS 
  BEGIN 
    RETURN read_row ( 
      p_hrjf_id => p_hrjf_id ).HRJF_MAIN_JSON_FK; 
  END get_hrjf_main_json_fk;
 
  FUNCTION get_hrjf_refrenz_json_fk ( 
    p_hrjf_id IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_ID%TYPE /*PK*/ ) 
  RETURN SFB_HELP_REFRENZ_JSON_FORM.HRJF_REFRENZ_JSON_FK%TYPE 
  IS 
  BEGIN 
    RETURN read_row ( 
      p_hrjf_id => p_hrjf_id ).HRJF_REFRENZ_JSON_FK; 
  END get_hrjf_refrenz_json_fk;
 
  FUNCTION get_hrjf_remark ( 
    p_hrjf_id IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_ID%TYPE /*PK*/ ) 
  RETURN SFB_HELP_REFRENZ_JSON_FORM.HRJF_REMARK%TYPE 
  IS 
  BEGIN 
    RETURN read_row ( 
      p_hrjf_id => p_hrjf_id ).HRJF_REMARK; 
  END get_hrjf_remark;
 
  FUNCTION get_hrjf_created ( 
    p_hrjf_id IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_ID%TYPE /*PK*/ ) 
  RETURN SFB_HELP_REFRENZ_JSON_FORM.HRJF_CREATED%TYPE 
  IS 
  BEGIN 
    RETURN read_row ( 
      p_hrjf_id => p_hrjf_id ).HRJF_CREATED; 
  END get_hrjf_created;
 
  FUNCTION get_hrjf_created_by ( 
    p_hrjf_id IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_ID%TYPE /*PK*/ ) 
  RETURN SFB_HELP_REFRENZ_JSON_FORM.HRJF_CREATED_BY%TYPE 
  IS 
  BEGIN 
    RETURN read_row ( 
      p_hrjf_id => p_hrjf_id ).HRJF_CREATED_BY; 
  END get_hrjf_created_by;
 
  FUNCTION get_hrjf_updated ( 
    p_hrjf_id IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_ID%TYPE /*PK*/ ) 
  RETURN SFB_HELP_REFRENZ_JSON_FORM.HRJF_UPDATED%TYPE 
  IS 
  BEGIN 
    RETURN read_row ( 
      p_hrjf_id => p_hrjf_id ).HRJF_UPDATED; 
  END get_hrjf_updated;
 
  FUNCTION get_hrjf_updated_by ( 
    p_hrjf_id IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_ID%TYPE /*PK*/ ) 
  RETURN SFB_HELP_REFRENZ_JSON_FORM.HRJF_UPDATED_BY%TYPE 
  IS 
  BEGIN 
    RETURN read_row ( 
      p_hrjf_id => p_hrjf_id ).HRJF_UPDATED_BY; 
  END get_hrjf_updated_by;
 
  FUNCTION get_hrjf_valid_from ( 
    p_hrjf_id IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_ID%TYPE /*PK*/ ) 
  RETURN SFB_HELP_REFRENZ_JSON_FORM.HRJF_VALID_FROM%TYPE 
  IS 
  BEGIN 
    RETURN read_row ( 
      p_hrjf_id => p_hrjf_id ).HRJF_VALID_FROM; 
  END get_hrjf_valid_from;
 
  FUNCTION get_hrjf_valid_to ( 
    p_hrjf_id IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_ID%TYPE /*PK*/ ) 
  RETURN SFB_HELP_REFRENZ_JSON_FORM.HRJF_VALID_TO%TYPE 
  IS 
  BEGIN 
    RETURN read_row ( 
      p_hrjf_id => p_hrjf_id ).HRJF_VALID_TO; 
  END get_hrjf_valid_to;
 
  FUNCTION get_hrjf_deleted_yn ( 
    p_hrjf_id IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_ID%TYPE /*PK*/ ) 
  RETURN SFB_HELP_REFRENZ_JSON_FORM.HRJF_DELETED_YN%TYPE 
  IS 
  BEGIN 
    RETURN read_row ( 
      p_hrjf_id => p_hrjf_id ).HRJF_DELETED_YN; 
  END get_hrjf_deleted_yn;
 
  FUNCTION get_hrjf_name ( 
    p_hrjf_id IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_ID%TYPE /*PK*/ ) 
  RETURN SFB_HELP_REFRENZ_JSON_FORM.HRJF_NAME%TYPE 
  IS 
  BEGIN 
    RETURN read_row ( 
      p_hrjf_id => p_hrjf_id ).HRJF_NAME; 
  END get_hrjf_name;
 
  PROCEDURE set_hrjf_main_json_fk ( 
    p_hrjf_id           IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_ID%TYPE /*PK*/, 
    p_hrjf_main_json_fk IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_MAIN_JSON_FK%TYPE ) 
  IS 
  BEGIN 
    UPDATE 
      SFB_HELP_REFRENZ_JSON_FORM 
    SET 
      HRJF_MAIN_JSON_FK = p_hrjf_main_json_fk /*FK*/,
      HRJF_UPDATED      = systimestamp,
      HRJF_UPDATED_BY   = coalesce(sys_context('apex$session','app_user'), sys_context('userenv','os_user'), sys_context('userenv','session_user')) 
    WHERE 
      HRJF_ID = p_hrjf_id; 
  END set_hrjf_main_json_fk;
 
  PROCEDURE set_hrjf_refrenz_json_fk ( 
    p_hrjf_id              IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_ID%TYPE /*PK*/, 
    p_hrjf_refrenz_json_fk IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_REFRENZ_JSON_FK%TYPE ) 
  IS 
  BEGIN 
    UPDATE 
      SFB_HELP_REFRENZ_JSON_FORM 
    SET 
      HRJF_REFRENZ_JSON_FK = p_hrjf_refrenz_json_fk /*FK*/,
      HRJF_UPDATED         = systimestamp,
      HRJF_UPDATED_BY      = coalesce(sys_context('apex$session','app_user'), sys_context('userenv','os_user'), sys_context('userenv','session_user')) 
    WHERE 
      HRJF_ID = p_hrjf_id; 
  END set_hrjf_refrenz_json_fk;
 
  PROCEDURE set_hrjf_remark ( 
    p_hrjf_id     IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_ID%TYPE /*PK*/, 
    p_hrjf_remark IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_REMARK%TYPE ) 
  IS 
  BEGIN 
    UPDATE 
      SFB_HELP_REFRENZ_JSON_FORM 
    SET 
      HRJF_REMARK     = p_hrjf_remark,
      HRJF_UPDATED    = systimestamp,
      HRJF_UPDATED_BY = coalesce(sys_context('apex$session','app_user'), sys_context('userenv','os_user'), sys_context('userenv','session_user')) 
    WHERE 
      HRJF_ID = p_hrjf_id; 
  END set_hrjf_remark;
 
  PROCEDURE set_hrjf_valid_from ( 
    p_hrjf_id         IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_ID%TYPE /*PK*/, 
    p_hrjf_valid_from IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_VALID_FROM%TYPE ) 
  IS 
  BEGIN 
    UPDATE 
      SFB_HELP_REFRENZ_JSON_FORM 
    SET 
      HRJF_UPDATED    = systimestamp,
      HRJF_UPDATED_BY = coalesce(sys_context('apex$session','app_user'), sys_context('userenv','os_user'), sys_context('userenv','session_user')),
      HRJF_VALID_FROM = p_hrjf_valid_from 
    WHERE 
      HRJF_ID = p_hrjf_id; 
  END set_hrjf_valid_from;
 
  PROCEDURE set_hrjf_valid_to ( 
    p_hrjf_id       IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_ID%TYPE /*PK*/, 
    p_hrjf_valid_to IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_VALID_TO%TYPE ) 
  IS 
  BEGIN 
    UPDATE 
      SFB_HELP_REFRENZ_JSON_FORM 
    SET 
      HRJF_UPDATED    = systimestamp,
      HRJF_UPDATED_BY = coalesce(sys_context('apex$session','app_user'), sys_context('userenv','os_user'), sys_context('userenv','session_user')),
      HRJF_VALID_TO   = p_hrjf_valid_to 
    WHERE 
      HRJF_ID = p_hrjf_id; 
  END set_hrjf_valid_to;
 
  PROCEDURE set_hrjf_deleted_yn ( 
    p_hrjf_id         IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_ID%TYPE /*PK*/, 
    p_hrjf_deleted_yn IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_DELETED_YN%TYPE ) 
  IS 
  BEGIN 
    UPDATE 
      SFB_HELP_REFRENZ_JSON_FORM 
    SET 
      HRJF_UPDATED    = systimestamp,
      HRJF_UPDATED_BY = coalesce(sys_context('apex$session','app_user'), sys_context('userenv','os_user'), sys_context('userenv','session_user')),
      HRJF_DELETED_YN = p_hrjf_deleted_yn 
    WHERE 
      HRJF_ID = p_hrjf_id; 
  END set_hrjf_deleted_yn;
 
  PROCEDURE set_hrjf_name ( 
    p_hrjf_id   IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_ID%TYPE /*PK*/, 
    p_hrjf_name IN SFB_HELP_REFRENZ_JSON_FORM.HRJF_NAME%TYPE ) 
  IS 
  BEGIN 
    UPDATE 
      SFB_HELP_REFRENZ_JSON_FORM 
    SET 
      HRJF_UPDATED    = systimestamp,
      HRJF_UPDATED_BY = coalesce(sys_context('apex$session','app_user'), sys_context('userenv','os_user'), sys_context('userenv','session_user')),
      HRJF_NAME       = p_hrjf_name 
    WHERE 
      HRJF_ID = p_hrjf_id; 
  END set_hrjf_name;
 
  FUNCTION get_default_row 
  RETURN SFB_HELP_REFRENZ_JSON_FORM%ROWTYPE 
  IS 
    v_row SFB_HELP_REFRENZ_JSON_FORM%ROWTYPE; 
  BEGIN 
    v_row.HRJF_ID         := "SFB_HRJF_SEQ"."NEXTVAL" /*PK*/;
    v_row.HRJF_CREATED    := sysdate ;
    v_row.HRJF_CREATED_BY := ( coalesce(sys_context('apex$session', 'app_user'),  
                                                           sys_context('userenv', 'os_user'),  
                                                           sys_context('userenv', 'session_user')) ) ;
    v_row.HRJF_UPDATED    := sysdate ;
    v_row.HRJF_UPDATED_BY := ( coalesce(sys_context('apex$session', 'app_user'),  
                                                           sys_context('userenv', 'os_user'),  
                                                           sys_context('userenv', 'session_user')) ) ;
    v_row.HRJF_VALID_FROM := sysdate ;
    v_row.HRJF_VALID_TO   := TO_DATE('31.12.2999', 'DD.MM.YYYY') ;
    v_row.HRJF_DELETED_YN := 'NO' ; 
    RETURN v_row; 
  END get_default_row;
 
END SFB_HELP_REFRENZ_JSON_FORM_PKG;
/