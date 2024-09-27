create or replace PACKAGE       SFB_JSON_FORM_PKG IS 
  /* 
  This is the API for the table SFB_JSON_FORM. 
 
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
    p_table_name="SFB_JSON_FORM" 
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
    p_dml_view_name="SFB_JSON_FORM_DML_V" 
    p_dml_view_trigger_name="SFB_JSON_FORM_IOIUD" 
    p_enable_one_to_one_view="FALSE" 
    p_one_to_one_view_name="SFB_JSON_FORM_V" 
    p_api_name="SFB_JSON_FORM_PKG" 
    p_sequence_name="" 
    p_exclude_column_list="" 
    p_audit_column_mappings="created=#PREFIX#_CREATED, created_by=#PREFIX#_CREATED_BY, updated=#PREFIX#_UPDATED, updated_by=#PREFIX#_UPDATED_BY" 
    p_audit_user_expression="coalesce(sys_context('apex$session','app_user'), sys_context('userenv','os_user'), sys_context('userenv','session_user'))" 
    p_row_version_column_mapping="" 
    p_tenant_column_mapping="" 
    p_enable_custom_defaults="FALSE" 
    p_custom_default_values=""/> 
  */
  
  TYPE t_strong_ref_cursor IS REF CURSOR RETURN SFB_JSON_FORM%ROWTYPE;
 
  FUNCTION bulk_is_complete 
  RETURN BOOLEAN;
 
  PROCEDURE set_bulk_limit ( 
    p_bulk_limit IN PLS_INTEGER );
 
  FUNCTION get_bulk_limit 
  RETURN PLS_INTEGER;
 
  FUNCTION row_exists ( 
    p_json_id IN SFB_JSON_FORM.JSON_ID%TYPE /*PK*/ ) 
  RETURN BOOLEAN;
 
  FUNCTION row_exists_yn ( 
    p_json_id IN SFB_JSON_FORM.JSON_ID%TYPE /*PK*/ ) 
  RETURN VARCHAR2;
 
  FUNCTION get_pk_by_unique_cols ( 
    p_json_name IN SFB_JSON_FORM.JSON_NAME%TYPE /*UK*/ ) 
  RETURN SFB_JSON_FORM.JSON_ID%TYPE;
 
  FUNCTION create_row ( 
    p_json_id         IN SFB_JSON_FORM.JSON_ID%TYPE           DEFAULT "SFB_JSON_SEQ"."NEXTVAL" /*PK*/,
    p_json_name       IN SFB_JSON_FORM.JSON_NAME%TYPE          /*UK*/,
    p_json_code       IN SFB_JSON_FORM.JSON_CODE%TYPE         DEFAULT NULL,
    p_json_remark     IN SFB_JSON_FORM.JSON_REMARK%TYPE       DEFAULT NULL,
    p_json_valid_from IN SFB_JSON_FORM.JSON_VALID_FROM%TYPE   DEFAULT sysdate ,
    p_json_valid_to   IN SFB_JSON_FORM.JSON_VALID_TO%TYPE     DEFAULT TO_DATE('31.12.2999', 'DD.MM.YYYY') ,
    p_json_deleted_yn IN SFB_JSON_FORM.JSON_DELETED_YN%TYPE   DEFAULT 'NO'  ) 
  RETURN SFB_JSON_FORM.JSON_ID%TYPE;
 
  PROCEDURE create_row ( 
    p_json_id         IN SFB_JSON_FORM.JSON_ID%TYPE           DEFAULT "SFB_JSON_SEQ"."NEXTVAL" /*PK*/,
    p_json_name       IN SFB_JSON_FORM.JSON_NAME%TYPE          /*UK*/,
    p_json_code       IN SFB_JSON_FORM.JSON_CODE%TYPE         DEFAULT NULL,
    p_json_remark     IN SFB_JSON_FORM.JSON_REMARK%TYPE       DEFAULT NULL,
    p_json_valid_from IN SFB_JSON_FORM.JSON_VALID_FROM%TYPE   DEFAULT sysdate ,
    p_json_valid_to   IN SFB_JSON_FORM.JSON_VALID_TO%TYPE     DEFAULT TO_DATE('31.12.2999', 'DD.MM.YYYY') ,
    p_json_deleted_yn IN SFB_JSON_FORM.JSON_DELETED_YN%TYPE   DEFAULT 'NO'  );
 
  FUNCTION create_row ( 
    p_row IN SFB_JSON_FORM%ROWTYPE ) 
  RETURN SFB_JSON_FORM.JSON_ID%TYPE;
 
  PROCEDURE create_row ( 
    p_row IN SFB_JSON_FORM%ROWTYPE );
   
 
  FUNCTION read_row ( 
    p_json_id IN SFB_JSON_FORM.JSON_ID%TYPE /*PK*/ ) 
  RETURN SFB_JSON_FORM%ROWTYPE;
 
  FUNCTION read_row ( 
    p_json_name IN SFB_JSON_FORM.JSON_NAME%TYPE /*UK*/ ) 
  RETURN SFB_JSON_FORM%ROWTYPE;
 
  PROCEDURE read_row ( 
    p_json_id         IN            SFB_JSON_FORM.JSON_ID%TYPE /*PK*/,
    p_json_name          OUT NOCOPY SFB_JSON_FORM.JSON_NAME%TYPE /*UK*/,
    p_json_code          OUT NOCOPY SFB_JSON_FORM.JSON_CODE%TYPE,
    p_json_remark        OUT NOCOPY SFB_JSON_FORM.JSON_REMARK%TYPE,
    p_json_created       OUT NOCOPY SFB_JSON_FORM.JSON_CREATED%TYPE,
    p_json_created_by    OUT NOCOPY SFB_JSON_FORM.JSON_CREATED_BY%TYPE,
    p_json_updated       OUT NOCOPY SFB_JSON_FORM.JSON_UPDATED%TYPE,
    p_json_updated_by    OUT NOCOPY SFB_JSON_FORM.JSON_UPDATED_BY%TYPE,
    p_json_valid_from    OUT NOCOPY SFB_JSON_FORM.JSON_VALID_FROM%TYPE,
    p_json_valid_to      OUT NOCOPY SFB_JSON_FORM.JSON_VALID_TO%TYPE,
    p_json_deleted_yn    OUT NOCOPY SFB_JSON_FORM.JSON_DELETED_YN%TYPE );
 
 
  FUNCTION update_row ( 
    p_json_id         IN SFB_JSON_FORM.JSON_ID%TYPE /*PK*/,
    p_json_name       IN SFB_JSON_FORM.JSON_NAME%TYPE /*UK*/,
    p_json_code       IN SFB_JSON_FORM.JSON_CODE%TYPE,
    p_json_remark     IN SFB_JSON_FORM.JSON_REMARK%TYPE,
    p_json_valid_from IN SFB_JSON_FORM.JSON_VALID_FROM%TYPE,
    p_json_valid_to   IN SFB_JSON_FORM.JSON_VALID_TO%TYPE,
    p_json_deleted_yn IN SFB_JSON_FORM.JSON_DELETED_YN%TYPE ) 
  RETURN SFB_JSON_FORM.JSON_ID%TYPE;
 
  PROCEDURE update_row ( 
    p_json_id         IN SFB_JSON_FORM.JSON_ID%TYPE /*PK*/,
    p_json_name       IN SFB_JSON_FORM.JSON_NAME%TYPE /*UK*/,
    p_json_code       IN SFB_JSON_FORM.JSON_CODE%TYPE,
    p_json_remark     IN SFB_JSON_FORM.JSON_REMARK%TYPE,
    p_json_valid_from IN SFB_JSON_FORM.JSON_VALID_FROM%TYPE,
    p_json_valid_to   IN SFB_JSON_FORM.JSON_VALID_TO%TYPE,
    p_json_deleted_yn IN SFB_JSON_FORM.JSON_DELETED_YN%TYPE );
 
  FUNCTION update_row ( 
    p_row IN SFB_JSON_FORM%ROWTYPE ) 
  RETURN SFB_JSON_FORM.JSON_ID%TYPE;
 
  PROCEDURE update_row ( 
    p_row IN SFB_JSON_FORM%ROWTYPE );
 
 
 
  PROCEDURE delete_row ( 
    p_json_id IN SFB_JSON_FORM.JSON_ID%TYPE /*PK*/ );
 
 
 
  FUNCTION create_or_update_row ( 
    p_json_id         IN SFB_JSON_FORM.JSON_ID%TYPE /*PK*/,
    p_json_name       IN SFB_JSON_FORM.JSON_NAME%TYPE /*UK*/,
    p_json_code       IN SFB_JSON_FORM.JSON_CODE%TYPE,
    p_json_remark     IN SFB_JSON_FORM.JSON_REMARK%TYPE,
    p_json_valid_from IN SFB_JSON_FORM.JSON_VALID_FROM%TYPE,
    p_json_valid_to   IN SFB_JSON_FORM.JSON_VALID_TO%TYPE,
    p_json_deleted_yn IN SFB_JSON_FORM.JSON_DELETED_YN%TYPE ) 
  RETURN SFB_JSON_FORM.JSON_ID%TYPE;
 
  PROCEDURE create_or_update_row ( 
    p_json_id         IN SFB_JSON_FORM.JSON_ID%TYPE /*PK*/,
    p_json_name       IN SFB_JSON_FORM.JSON_NAME%TYPE /*UK*/,
    p_json_code       IN SFB_JSON_FORM.JSON_CODE%TYPE,
    p_json_remark     IN SFB_JSON_FORM.JSON_REMARK%TYPE,
    p_json_valid_from IN SFB_JSON_FORM.JSON_VALID_FROM%TYPE,
    p_json_valid_to   IN SFB_JSON_FORM.JSON_VALID_TO%TYPE,
    p_json_deleted_yn IN SFB_JSON_FORM.JSON_DELETED_YN%TYPE );
 
  FUNCTION create_or_update_row ( 
    p_row IN SFB_JSON_FORM%ROWTYPE ) 
  RETURN SFB_JSON_FORM.JSON_ID%TYPE;
 
  PROCEDURE create_or_update_row ( 
    p_row IN SFB_JSON_FORM%ROWTYPE );
 
  FUNCTION get_json_name ( 
    p_json_id IN SFB_JSON_FORM.JSON_ID%TYPE /*PK*/ ) 
  RETURN SFB_JSON_FORM.JSON_NAME%TYPE;
 
  FUNCTION get_json_code ( 
    p_json_id IN SFB_JSON_FORM.JSON_ID%TYPE /*PK*/ ) 
  RETURN SFB_JSON_FORM.JSON_CODE%TYPE;
 
  FUNCTION get_json_remark ( 
    p_json_id IN SFB_JSON_FORM.JSON_ID%TYPE /*PK*/ ) 
  RETURN SFB_JSON_FORM.JSON_REMARK%TYPE;
 
  FUNCTION get_json_created ( 
    p_json_id IN SFB_JSON_FORM.JSON_ID%TYPE /*PK*/ ) 
  RETURN SFB_JSON_FORM.JSON_CREATED%TYPE;
 
  FUNCTION get_json_created_by ( 
    p_json_id IN SFB_JSON_FORM.JSON_ID%TYPE /*PK*/ ) 
  RETURN SFB_JSON_FORM.JSON_CREATED_BY%TYPE;
 
  FUNCTION get_json_updated ( 
    p_json_id IN SFB_JSON_FORM.JSON_ID%TYPE /*PK*/ ) 
  RETURN SFB_JSON_FORM.JSON_UPDATED%TYPE;
 
  FUNCTION get_json_updated_by ( 
    p_json_id IN SFB_JSON_FORM.JSON_ID%TYPE /*PK*/ ) 
  RETURN SFB_JSON_FORM.JSON_UPDATED_BY%TYPE;
 
  FUNCTION get_json_valid_from ( 
    p_json_id IN SFB_JSON_FORM.JSON_ID%TYPE /*PK*/ ) 
  RETURN SFB_JSON_FORM.JSON_VALID_FROM%TYPE;
 
  FUNCTION get_json_valid_to ( 
    p_json_id IN SFB_JSON_FORM.JSON_ID%TYPE /*PK*/ ) 
  RETURN SFB_JSON_FORM.JSON_VALID_TO%TYPE;
 
  FUNCTION get_json_deleted_yn ( 
    p_json_id IN SFB_JSON_FORM.JSON_ID%TYPE /*PK*/ ) 
  RETURN SFB_JSON_FORM.JSON_DELETED_YN%TYPE;
 
  PROCEDURE set_json_name ( 
    p_json_id   IN SFB_JSON_FORM.JSON_ID%TYPE /*PK*/, 
    p_json_name IN SFB_JSON_FORM.JSON_NAME%TYPE );
 
  PROCEDURE set_json_code ( 
    p_json_id   IN SFB_JSON_FORM.JSON_ID%TYPE /*PK*/, 
    p_json_code IN SFB_JSON_FORM.JSON_CODE%TYPE );
 
  PROCEDURE set_json_remark ( 
    p_json_id     IN SFB_JSON_FORM.JSON_ID%TYPE /*PK*/, 
    p_json_remark IN SFB_JSON_FORM.JSON_REMARK%TYPE );
 
  PROCEDURE set_json_valid_from ( 
    p_json_id         IN SFB_JSON_FORM.JSON_ID%TYPE /*PK*/, 
    p_json_valid_from IN SFB_JSON_FORM.JSON_VALID_FROM%TYPE );
 
  PROCEDURE set_json_valid_to ( 
    p_json_id       IN SFB_JSON_FORM.JSON_ID%TYPE /*PK*/, 
    p_json_valid_to IN SFB_JSON_FORM.JSON_VALID_TO%TYPE );
 
  PROCEDURE set_json_deleted_yn ( 
    p_json_id         IN SFB_JSON_FORM.JSON_ID%TYPE /*PK*/, 
    p_json_deleted_yn IN SFB_JSON_FORM.JSON_DELETED_YN%TYPE );
 
  FUNCTION get_default_row 
  RETURN SFB_JSON_FORM%ROWTYPE; 
  /* 
  Helper to get a prepopulated row with the table defaults from the dictionary. 
  */
 
END SFB_JSON_FORM_PKG;
/

create or replace PACKAGE BODY       SFB_JSON_FORM_PKG IS 
  /* 
  This is the API for the table SFB_JSON_FORM. 
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
    p_json_id IN SFB_JSON_FORM.JSON_ID%TYPE /*PK*/ ) 
  RETURN BOOLEAN 
  IS 
    v_return BOOLEAN := FALSE; 
    v_dummy  PLS_INTEGER; 
    CURSOR   cur_bool IS 
      SELECT 1 FROM SFB_JSON_FORM 
      WHERE 
        JSON_ID = p_json_id; 
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
    p_json_id IN SFB_JSON_FORM.JSON_ID%TYPE /*PK*/ ) 
  RETURN VARCHAR2 
  IS 
  BEGIN 
    RETURN 
      CASE 
        WHEN row_exists( 
          p_json_id => p_json_id ) 
        THEN 'Y' 
        ELSE 'N' 
      END; 
  END;
 
  FUNCTION get_pk_by_unique_cols ( 
    p_json_name IN SFB_JSON_FORM.JSON_NAME%TYPE /*UK*/ ) 
  RETURN SFB_JSON_FORM.JSON_ID%TYPE 
  IS 
    v_return SFB_JSON_FORM.JSON_ID%TYPE; 
  BEGIN 
    v_return := read_row ( p_json_name => p_json_name ).JSON_ID; 
    RETURN v_return; 
  END get_pk_by_unique_cols;
 
  FUNCTION create_row ( 
    p_json_id         IN SFB_JSON_FORM.JSON_ID%TYPE           DEFAULT "SFB_JSON_SEQ"."NEXTVAL" /*PK*/,
    p_json_name       IN SFB_JSON_FORM.JSON_NAME%TYPE          /*UK*/,
    p_json_code       IN SFB_JSON_FORM.JSON_CODE%TYPE         DEFAULT NULL,
    p_json_remark     IN SFB_JSON_FORM.JSON_REMARK%TYPE       DEFAULT NULL,
    p_json_valid_from IN SFB_JSON_FORM.JSON_VALID_FROM%TYPE   DEFAULT sysdate ,
    p_json_valid_to   IN SFB_JSON_FORM.JSON_VALID_TO%TYPE     DEFAULT TO_DATE('31.12.2999', 'DD.MM.YYYY') ,
    p_json_deleted_yn IN SFB_JSON_FORM.JSON_DELETED_YN%TYPE   DEFAULT 'NO'  ) 
  RETURN SFB_JSON_FORM.JSON_ID%TYPE 
  IS 
    v_return SFB_JSON_FORM.JSON_ID%TYPE;  
  BEGIN 
    INSERT INTO SFB_JSON_FORM ( 
      JSON_ID /*PK*/,
      JSON_NAME /*UK*/,
      JSON_CODE,
      JSON_REMARK,
      JSON_CREATED,
      JSON_CREATED_BY,
      JSON_UPDATED,
      JSON_UPDATED_BY,
      JSON_VALID_FROM,
      JSON_VALID_TO,
      JSON_DELETED_YN ) 
    VALUES ( 
      p_json_id,
      p_json_name,
      p_json_code,
      p_json_remark,
      systimestamp,
      coalesce(sys_context('apex$session','app_user'), sys_context('userenv','os_user'), sys_context('userenv','session_user')),
      systimestamp,
      coalesce(sys_context('apex$session','app_user'), sys_context('userenv','os_user'), sys_context('userenv','session_user')),
      p_json_valid_from,
      p_json_valid_to,
      p_json_deleted_yn ) 
    RETURN  
      JSON_ID 
    INTO 
      v_return; 
    RETURN v_return; 
  END create_row;
 
  PROCEDURE create_row ( 
    p_json_id         IN SFB_JSON_FORM.JSON_ID%TYPE           DEFAULT "SFB_JSON_SEQ"."NEXTVAL" /*PK*/,
    p_json_name       IN SFB_JSON_FORM.JSON_NAME%TYPE          /*UK*/,
    p_json_code       IN SFB_JSON_FORM.JSON_CODE%TYPE         DEFAULT NULL,
    p_json_remark     IN SFB_JSON_FORM.JSON_REMARK%TYPE       DEFAULT NULL,
    p_json_valid_from IN SFB_JSON_FORM.JSON_VALID_FROM%TYPE   DEFAULT sysdate ,
    p_json_valid_to   IN SFB_JSON_FORM.JSON_VALID_TO%TYPE     DEFAULT TO_DATE('31.12.2999', 'DD.MM.YYYY') ,
    p_json_deleted_yn IN SFB_JSON_FORM.JSON_DELETED_YN%TYPE   DEFAULT 'NO'  ) 
  IS 
  BEGIN 
    INSERT INTO SFB_JSON_FORM ( 
      JSON_ID /*PK*/,
      JSON_NAME /*UK*/,
      JSON_CODE,
      JSON_REMARK,
      JSON_CREATED,
      JSON_CREATED_BY,
      JSON_UPDATED,
      JSON_UPDATED_BY,
      JSON_VALID_FROM,
      JSON_VALID_TO,
      JSON_DELETED_YN ) 
    VALUES ( 
      p_json_id,
      p_json_name,
      p_json_code,
      p_json_remark,
      systimestamp,
      coalesce(sys_context('apex$session','app_user'), sys_context('userenv','os_user'), sys_context('userenv','session_user')),
      systimestamp,
      coalesce(sys_context('apex$session','app_user'), sys_context('userenv','os_user'), sys_context('userenv','session_user')),
      p_json_valid_from,
      p_json_valid_to,
      p_json_deleted_yn ); 
  END create_row;
 
  FUNCTION create_row ( 
    p_row IN SFB_JSON_FORM%ROWTYPE ) 
  RETURN SFB_JSON_FORM.JSON_ID%TYPE 
  IS 
  BEGIN 
    RETURN create_row ( 
      p_json_id         => p_row.JSON_ID /*PK*/,
      p_json_name       => p_row.JSON_NAME /*UK*/,
      p_json_code       => p_row.JSON_CODE,
      p_json_remark     => p_row.JSON_REMARK,
      p_json_valid_from => p_row.JSON_VALID_FROM,
      p_json_valid_to   => p_row.JSON_VALID_TO,
      p_json_deleted_yn => p_row.JSON_DELETED_YN ); 
  END create_row;
 
  PROCEDURE create_row ( 
    p_row IN SFB_JSON_FORM%ROWTYPE ) 
  IS 
  BEGIN 
    create_row ( 
      p_json_id         => p_row.JSON_ID /*PK*/,
      p_json_name       => p_row.JSON_NAME /*UK*/,
      p_json_code       => p_row.JSON_CODE,
      p_json_remark     => p_row.JSON_REMARK,
      p_json_valid_from => p_row.JSON_VALID_FROM,
      p_json_valid_to   => p_row.JSON_VALID_TO,
      p_json_deleted_yn => p_row.JSON_DELETED_YN ); 
  END create_row;
 
   
 
  
  FUNCTION read_row ( 
    p_json_id IN SFB_JSON_FORM.JSON_ID%TYPE /*PK*/ ) 
  RETURN SFB_JSON_FORM%ROWTYPE 
  IS 
    v_row SFB_JSON_FORM%ROWTYPE; 
    CURSOR cur_row IS 
      SELECT * FROM SFB_JSON_FORM 
      WHERE 
        JSON_ID = p_json_id; 
  BEGIN 
    OPEN cur_row; 
    FETCH cur_row INTO v_row; 
    CLOSE cur_row; 
    RETURN v_row; 
  END read_row;
 
  FUNCTION read_row ( 
    p_json_name IN SFB_JSON_FORM.JSON_NAME%TYPE /*UK*/ ) 
  RETURN SFB_JSON_FORM%ROWTYPE 
  IS 
    v_row SFB_JSON_FORM%ROWTYPE; 
    CURSOR cur_row IS 
      SELECT * 
        FROM SFB_JSON_FORM 
       WHERE JSON_NAME = p_json_name; 
  BEGIN 
    OPEN cur_row; 
    FETCH cur_row INTO v_row; 
    CLOSE cur_row; 
    RETURN v_row; 
  END;
 
  PROCEDURE read_row ( 
    p_json_id         IN            SFB_JSON_FORM.JSON_ID%TYPE /*PK*/,
    p_json_name          OUT NOCOPY SFB_JSON_FORM.JSON_NAME%TYPE /*UK*/,
    p_json_code          OUT NOCOPY SFB_JSON_FORM.JSON_CODE%TYPE,
    p_json_remark        OUT NOCOPY SFB_JSON_FORM.JSON_REMARK%TYPE,
    p_json_created       OUT NOCOPY SFB_JSON_FORM.JSON_CREATED%TYPE,
    p_json_created_by    OUT NOCOPY SFB_JSON_FORM.JSON_CREATED_BY%TYPE,
    p_json_updated       OUT NOCOPY SFB_JSON_FORM.JSON_UPDATED%TYPE,
    p_json_updated_by    OUT NOCOPY SFB_JSON_FORM.JSON_UPDATED_BY%TYPE,
    p_json_valid_from    OUT NOCOPY SFB_JSON_FORM.JSON_VALID_FROM%TYPE,
    p_json_valid_to      OUT NOCOPY SFB_JSON_FORM.JSON_VALID_TO%TYPE,
    p_json_deleted_yn    OUT NOCOPY SFB_JSON_FORM.JSON_DELETED_YN%TYPE ) 
  IS 
    v_row SFB_JSON_FORM%ROWTYPE; 
  BEGIN 
    v_row := read_row ( 
      p_json_id => p_json_id ); 
    p_json_name       := v_row.JSON_NAME; 
    p_json_code       := v_row.JSON_CODE; 
    p_json_remark     := v_row.JSON_REMARK; 
    p_json_created    := v_row.JSON_CREATED; 
    p_json_created_by := v_row.JSON_CREATED_BY; 
    p_json_updated    := v_row.JSON_UPDATED; 
    p_json_updated_by := v_row.JSON_UPDATED_BY; 
    p_json_valid_from := v_row.JSON_VALID_FROM; 
    p_json_valid_to   := v_row.JSON_VALID_TO; 
    p_json_deleted_yn := v_row.JSON_DELETED_YN;  
  END read_row;
 
   
 
  FUNCTION update_row ( 
    p_json_id         IN SFB_JSON_FORM.JSON_ID%TYPE /*PK*/,
    p_json_name       IN SFB_JSON_FORM.JSON_NAME%TYPE /*UK*/,
    p_json_code       IN SFB_JSON_FORM.JSON_CODE%TYPE,
    p_json_remark     IN SFB_JSON_FORM.JSON_REMARK%TYPE,
    p_json_valid_from IN SFB_JSON_FORM.JSON_VALID_FROM%TYPE,
    p_json_valid_to   IN SFB_JSON_FORM.JSON_VALID_TO%TYPE,
    p_json_deleted_yn IN SFB_JSON_FORM.JSON_DELETED_YN%TYPE ) 
  RETURN SFB_JSON_FORM.JSON_ID%TYPE 
  IS 
    v_return SFB_JSON_FORM.JSON_ID%TYPE;  
  BEGIN 
    UPDATE 
      SFB_JSON_FORM 
    SET 
      JSON_NAME       = p_json_name /*UK*/,
      JSON_CODE       = p_json_code,
      JSON_REMARK     = p_json_remark,
      JSON_UPDATED    = systimestamp,
      JSON_UPDATED_BY = coalesce(sys_context('apex$session','app_user'), sys_context('userenv','os_user'), sys_context('userenv','session_user')),
      JSON_VALID_FROM = p_json_valid_from,
      JSON_VALID_TO   = p_json_valid_to,
      JSON_DELETED_YN = p_json_deleted_yn 
    WHERE 
      JSON_ID = p_json_id 
    RETURN  
      JSON_ID 
    INTO 
      v_return; 
    RETURN v_return; 
  END update_row;
 
  PROCEDURE update_row ( 
    p_json_id         IN SFB_JSON_FORM.JSON_ID%TYPE /*PK*/,
    p_json_name       IN SFB_JSON_FORM.JSON_NAME%TYPE /*UK*/,
    p_json_code       IN SFB_JSON_FORM.JSON_CODE%TYPE,
    p_json_remark     IN SFB_JSON_FORM.JSON_REMARK%TYPE,
    p_json_valid_from IN SFB_JSON_FORM.JSON_VALID_FROM%TYPE,
    p_json_valid_to   IN SFB_JSON_FORM.JSON_VALID_TO%TYPE,
    p_json_deleted_yn IN SFB_JSON_FORM.JSON_DELETED_YN%TYPE ) 
  IS 
  BEGIN 
    UPDATE 
      SFB_JSON_FORM 
    SET 
      JSON_NAME       = p_json_name /*UK*/,
      JSON_CODE       = p_json_code,
      JSON_REMARK     = p_json_remark,
      JSON_UPDATED    = systimestamp,
      JSON_UPDATED_BY = coalesce(sys_context('apex$session','app_user'), sys_context('userenv','os_user'), sys_context('userenv','session_user')),
      JSON_VALID_FROM = p_json_valid_from,
      JSON_VALID_TO   = p_json_valid_to,
      JSON_DELETED_YN = p_json_deleted_yn 
    WHERE 
      JSON_ID = p_json_id; 
  END update_row;
 
  FUNCTION update_row ( 
    p_row IN SFB_JSON_FORM%ROWTYPE ) 
  RETURN SFB_JSON_FORM.JSON_ID%TYPE 
  IS 
  BEGIN 
    RETURN update_row ( 
      p_json_id         => p_row.JSON_ID /*PK*/,
      p_json_name       => p_row.JSON_NAME /*UK*/,
      p_json_code       => p_row.JSON_CODE,
      p_json_remark     => p_row.JSON_REMARK,
      p_json_valid_from => p_row.JSON_VALID_FROM,
      p_json_valid_to   => p_row.JSON_VALID_TO,
      p_json_deleted_yn => p_row.JSON_DELETED_YN ); 
  END update_row;
 
  PROCEDURE update_row ( 
    p_row IN SFB_JSON_FORM%ROWTYPE ) 
  IS 
  BEGIN 
    update_row ( 
      p_json_id         => p_row.JSON_ID /*PK*/,
      p_json_name       => p_row.JSON_NAME /*UK*/,
      p_json_code       => p_row.JSON_CODE,
      p_json_remark     => p_row.JSON_REMARK,
      p_json_valid_from => p_row.JSON_VALID_FROM,
      p_json_valid_to   => p_row.JSON_VALID_TO,
      p_json_deleted_yn => p_row.JSON_DELETED_YN ); 
  END update_row;
 
   
  PROCEDURE delete_row ( 
    p_json_id IN SFB_JSON_FORM.JSON_ID%TYPE /*PK*/ ) 
  IS 
  BEGIN 
    DELETE FROM SFB_JSON_FORM 
    WHERE 
      JSON_ID = p_json_id; 
  END delete_row;
 
   
 
  FUNCTION create_or_update_row ( 
    p_json_id         IN SFB_JSON_FORM.JSON_ID%TYPE /*PK*/,
    p_json_name       IN SFB_JSON_FORM.JSON_NAME%TYPE /*UK*/,
    p_json_code       IN SFB_JSON_FORM.JSON_CODE%TYPE,
    p_json_remark     IN SFB_JSON_FORM.JSON_REMARK%TYPE,
    p_json_valid_from IN SFB_JSON_FORM.JSON_VALID_FROM%TYPE,
    p_json_valid_to   IN SFB_JSON_FORM.JSON_VALID_TO%TYPE,
    p_json_deleted_yn IN SFB_JSON_FORM.JSON_DELETED_YN%TYPE ) 
  RETURN SFB_JSON_FORM.JSON_ID%TYPE 
  IS 
  BEGIN 
    IF row_exists( 
      p_json_id => p_json_id 
    ) 
    THEN 
      RETURN update_row ( 
        p_json_id         => p_json_id /*PK*/,
        p_json_name       => p_json_name /*UK*/,
        p_json_code       => p_json_code,
        p_json_remark     => p_json_remark,
        p_json_valid_from => p_json_valid_from,
        p_json_valid_to   => p_json_valid_to,
        p_json_deleted_yn => p_json_deleted_yn ); 
    ELSE 
      RETURN create_row ( 
        p_json_id         => p_json_id /*PK*/,
        p_json_name       => p_json_name /*UK*/,
        p_json_code       => p_json_code,
        p_json_remark     => p_json_remark,
        p_json_valid_from => p_json_valid_from,
        p_json_valid_to   => p_json_valid_to,
        p_json_deleted_yn => p_json_deleted_yn ); 
    END IF; 
  END create_or_update_row;
 
  PROCEDURE create_or_update_row ( 
    p_json_id         IN SFB_JSON_FORM.JSON_ID%TYPE /*PK*/,
    p_json_name       IN SFB_JSON_FORM.JSON_NAME%TYPE /*UK*/,
    p_json_code       IN SFB_JSON_FORM.JSON_CODE%TYPE,
    p_json_remark     IN SFB_JSON_FORM.JSON_REMARK%TYPE,
    p_json_valid_from IN SFB_JSON_FORM.JSON_VALID_FROM%TYPE,
    p_json_valid_to   IN SFB_JSON_FORM.JSON_VALID_TO%TYPE,
    p_json_deleted_yn IN SFB_JSON_FORM.JSON_DELETED_YN%TYPE ) 
  IS 
  BEGIN 
    IF row_exists( 
      p_json_id => p_json_id 
    ) 
    THEN 
      update_row ( 
        p_json_id         => p_json_id /*PK*/,
        p_json_name       => p_json_name /*UK*/,
        p_json_code       => p_json_code,
        p_json_remark     => p_json_remark,
        p_json_valid_from => p_json_valid_from,
        p_json_valid_to   => p_json_valid_to,
        p_json_deleted_yn => p_json_deleted_yn ); 
    ELSE 
      create_row ( 
        p_json_id         => p_json_id /*PK*/,
        p_json_name       => p_json_name /*UK*/,
        p_json_code       => p_json_code,
        p_json_remark     => p_json_remark,
        p_json_valid_from => p_json_valid_from,
        p_json_valid_to   => p_json_valid_to,
        p_json_deleted_yn => p_json_deleted_yn ); 
    END IF; 
  END create_or_update_row;
 
  FUNCTION create_or_update_row ( 
    p_row IN SFB_JSON_FORM%ROWTYPE ) 
  RETURN SFB_JSON_FORM.JSON_ID%TYPE 
  IS 
  BEGIN 
    IF row_exists( 
      p_json_id => p_row.JSON_ID 
    ) 
    THEN 
      RETURN update_row ( 
        p_json_id         => p_row.JSON_ID /*PK*/,
        p_json_name       => p_row.JSON_NAME /*UK*/,
        p_json_code       => p_row.JSON_CODE,
        p_json_remark     => p_row.JSON_REMARK,
        p_json_valid_from => p_row.JSON_VALID_FROM,
        p_json_valid_to   => p_row.JSON_VALID_TO,
        p_json_deleted_yn => p_row.JSON_DELETED_YN ); 
    ELSE 
      RETURN create_row ( 
        p_json_id         => p_row.JSON_ID /*PK*/,
        p_json_name       => p_row.JSON_NAME /*UK*/,
        p_json_code       => p_row.JSON_CODE,
        p_json_remark     => p_row.JSON_REMARK,
        p_json_valid_from => p_row.JSON_VALID_FROM,
        p_json_valid_to   => p_row.JSON_VALID_TO,
        p_json_deleted_yn => p_row.JSON_DELETED_YN ); 
    END IF; 
  END create_or_update_row;
 
  PROCEDURE create_or_update_row ( 
    p_row IN SFB_JSON_FORM%ROWTYPE ) 
  IS 
  BEGIN 
    IF row_exists( 
      p_json_id => p_row.JSON_ID 
    ) 
    THEN 
      update_row ( 
        p_json_id         => p_row.JSON_ID /*PK*/,
        p_json_name       => p_row.JSON_NAME /*UK*/,
        p_json_code       => p_row.JSON_CODE,
        p_json_remark     => p_row.JSON_REMARK,
        p_json_valid_from => p_row.JSON_VALID_FROM,
        p_json_valid_to   => p_row.JSON_VALID_TO,
        p_json_deleted_yn => p_row.JSON_DELETED_YN ); 
    ELSE 
      create_row ( 
        p_json_id         => p_row.JSON_ID /*PK*/,
        p_json_name       => p_row.JSON_NAME /*UK*/,
        p_json_code       => p_row.JSON_CODE,
        p_json_remark     => p_row.JSON_REMARK,
        p_json_valid_from => p_row.JSON_VALID_FROM,
        p_json_valid_to   => p_row.JSON_VALID_TO,
        p_json_deleted_yn => p_row.JSON_DELETED_YN ); 
    END IF; 
  END create_or_update_row;
 
  FUNCTION get_json_name ( 
    p_json_id IN SFB_JSON_FORM.JSON_ID%TYPE /*PK*/ ) 
  RETURN SFB_JSON_FORM.JSON_NAME%TYPE 
  IS 
  BEGIN 
    RETURN read_row ( 
      p_json_id => p_json_id ).JSON_NAME; 
  END get_json_name;
 
  FUNCTION get_json_code ( 
    p_json_id IN SFB_JSON_FORM.JSON_ID%TYPE /*PK*/ ) 
  RETURN SFB_JSON_FORM.JSON_CODE%TYPE 
  IS 
  BEGIN 
    RETURN read_row ( 
      p_json_id => p_json_id ).JSON_CODE; 
  END get_json_code;
 
  FUNCTION get_json_remark ( 
    p_json_id IN SFB_JSON_FORM.JSON_ID%TYPE /*PK*/ ) 
  RETURN SFB_JSON_FORM.JSON_REMARK%TYPE 
  IS 
  BEGIN 
    RETURN read_row ( 
      p_json_id => p_json_id ).JSON_REMARK; 
  END get_json_remark;
 
  FUNCTION get_json_created ( 
    p_json_id IN SFB_JSON_FORM.JSON_ID%TYPE /*PK*/ ) 
  RETURN SFB_JSON_FORM.JSON_CREATED%TYPE 
  IS 
  BEGIN 
    RETURN read_row ( 
      p_json_id => p_json_id ).JSON_CREATED; 
  END get_json_created;
 
  FUNCTION get_json_created_by ( 
    p_json_id IN SFB_JSON_FORM.JSON_ID%TYPE /*PK*/ ) 
  RETURN SFB_JSON_FORM.JSON_CREATED_BY%TYPE 
  IS 
  BEGIN 
    RETURN read_row ( 
      p_json_id => p_json_id ).JSON_CREATED_BY; 
  END get_json_created_by;
 
  FUNCTION get_json_updated ( 
    p_json_id IN SFB_JSON_FORM.JSON_ID%TYPE /*PK*/ ) 
  RETURN SFB_JSON_FORM.JSON_UPDATED%TYPE 
  IS 
  BEGIN 
    RETURN read_row ( 
      p_json_id => p_json_id ).JSON_UPDATED; 
  END get_json_updated;
 
  FUNCTION get_json_updated_by ( 
    p_json_id IN SFB_JSON_FORM.JSON_ID%TYPE /*PK*/ ) 
  RETURN SFB_JSON_FORM.JSON_UPDATED_BY%TYPE 
  IS 
  BEGIN 
    RETURN read_row ( 
      p_json_id => p_json_id ).JSON_UPDATED_BY; 
  END get_json_updated_by;
 
  FUNCTION get_json_valid_from ( 
    p_json_id IN SFB_JSON_FORM.JSON_ID%TYPE /*PK*/ ) 
  RETURN SFB_JSON_FORM.JSON_VALID_FROM%TYPE 
  IS 
  BEGIN 
    RETURN read_row ( 
      p_json_id => p_json_id ).JSON_VALID_FROM; 
  END get_json_valid_from;
 
  FUNCTION get_json_valid_to ( 
    p_json_id IN SFB_JSON_FORM.JSON_ID%TYPE /*PK*/ ) 
  RETURN SFB_JSON_FORM.JSON_VALID_TO%TYPE 
  IS 
  BEGIN 
    RETURN read_row ( 
      p_json_id => p_json_id ).JSON_VALID_TO; 
  END get_json_valid_to;
 
  FUNCTION get_json_deleted_yn ( 
    p_json_id IN SFB_JSON_FORM.JSON_ID%TYPE /*PK*/ ) 
  RETURN SFB_JSON_FORM.JSON_DELETED_YN%TYPE 
  IS 
  BEGIN 
    RETURN read_row ( 
      p_json_id => p_json_id ).JSON_DELETED_YN; 
  END get_json_deleted_yn;
 
  PROCEDURE set_json_name ( 
    p_json_id   IN SFB_JSON_FORM.JSON_ID%TYPE /*PK*/, 
    p_json_name IN SFB_JSON_FORM.JSON_NAME%TYPE ) 
  IS 
  BEGIN 
    UPDATE 
      SFB_JSON_FORM 
    SET 
      JSON_NAME       = p_json_name /*UK*/,
      JSON_UPDATED    = systimestamp,
      JSON_UPDATED_BY = coalesce(sys_context('apex$session','app_user'), sys_context('userenv','os_user'), sys_context('userenv','session_user')) 
    WHERE 
      JSON_ID = p_json_id; 
  END set_json_name;
 
  PROCEDURE set_json_code ( 
    p_json_id   IN SFB_JSON_FORM.JSON_ID%TYPE /*PK*/, 
    p_json_code IN SFB_JSON_FORM.JSON_CODE%TYPE ) 
  IS 
  BEGIN 
    UPDATE 
      SFB_JSON_FORM 
    SET 
      JSON_CODE       = p_json_code,
      JSON_UPDATED    = systimestamp,
      JSON_UPDATED_BY = coalesce(sys_context('apex$session','app_user'), sys_context('userenv','os_user'), sys_context('userenv','session_user')) 
    WHERE 
      JSON_ID = p_json_id; 
  END set_json_code;
 
  PROCEDURE set_json_remark ( 
    p_json_id     IN SFB_JSON_FORM.JSON_ID%TYPE /*PK*/, 
    p_json_remark IN SFB_JSON_FORM.JSON_REMARK%TYPE ) 
  IS 
  BEGIN 
    UPDATE 
      SFB_JSON_FORM 
    SET 
      JSON_REMARK     = p_json_remark,
      JSON_UPDATED    = systimestamp,
      JSON_UPDATED_BY = coalesce(sys_context('apex$session','app_user'), sys_context('userenv','os_user'), sys_context('userenv','session_user')) 
    WHERE 
      JSON_ID = p_json_id; 
  END set_json_remark;
 
  PROCEDURE set_json_valid_from ( 
    p_json_id         IN SFB_JSON_FORM.JSON_ID%TYPE /*PK*/, 
    p_json_valid_from IN SFB_JSON_FORM.JSON_VALID_FROM%TYPE ) 
  IS 
  BEGIN 
    UPDATE 
      SFB_JSON_FORM 
    SET 
      JSON_UPDATED    = systimestamp,
      JSON_UPDATED_BY = coalesce(sys_context('apex$session','app_user'), sys_context('userenv','os_user'), sys_context('userenv','session_user')),
      JSON_VALID_FROM = p_json_valid_from 
    WHERE 
      JSON_ID = p_json_id; 
  END set_json_valid_from;
 
  PROCEDURE set_json_valid_to ( 
    p_json_id       IN SFB_JSON_FORM.JSON_ID%TYPE /*PK*/, 
    p_json_valid_to IN SFB_JSON_FORM.JSON_VALID_TO%TYPE ) 
  IS 
  BEGIN 
    UPDATE 
      SFB_JSON_FORM 
    SET 
      JSON_UPDATED    = systimestamp,
      JSON_UPDATED_BY = coalesce(sys_context('apex$session','app_user'), sys_context('userenv','os_user'), sys_context('userenv','session_user')),
      JSON_VALID_TO   = p_json_valid_to 
    WHERE 
      JSON_ID = p_json_id; 
  END set_json_valid_to;
 
  PROCEDURE set_json_deleted_yn ( 
    p_json_id         IN SFB_JSON_FORM.JSON_ID%TYPE /*PK*/, 
    p_json_deleted_yn IN SFB_JSON_FORM.JSON_DELETED_YN%TYPE ) 
  IS 
  BEGIN 
    UPDATE 
      SFB_JSON_FORM 
    SET 
      JSON_UPDATED    = systimestamp,
      JSON_UPDATED_BY = coalesce(sys_context('apex$session','app_user'), sys_context('userenv','os_user'), sys_context('userenv','session_user')),
      JSON_DELETED_YN = p_json_deleted_yn 
    WHERE 
      JSON_ID = p_json_id; 
  END set_json_deleted_yn;
 
  FUNCTION get_default_row 
  RETURN SFB_JSON_FORM%ROWTYPE 
  IS 
    v_row SFB_JSON_FORM%ROWTYPE; 
  BEGIN 
    v_row.JSON_ID         := "SFB_JSON_SEQ"."NEXTVAL" /*PK*/;
    v_row.JSON_CREATED    := sysdate ;
    v_row.JSON_CREATED_BY := ( coalesce(sys_context('apex$session', 'app_user'),  
                                                           sys_context('userenv', 'os_user'),  
                                                           sys_context('userenv', 'session_user')) ) ;
    v_row.JSON_UPDATED    := sysdate ;
    v_row.JSON_UPDATED_BY := ( coalesce(sys_context('apex$session', 'app_user'),  
                                                           sys_context('userenv', 'os_user'),  
                                                           sys_context('userenv', 'session_user')) ) ;
    v_row.JSON_VALID_FROM := sysdate ;
    v_row.JSON_VALID_TO   := TO_DATE('31.12.2999', 'DD.MM.YYYY') ;
    v_row.JSON_DELETED_YN := 'NO' ; 
    RETURN v_row; 
  END get_default_row;
 
END SFB_JSON_FORM_PKG;
/