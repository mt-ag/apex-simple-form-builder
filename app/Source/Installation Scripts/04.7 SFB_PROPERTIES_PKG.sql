create or replace PACKAGE       SFB_PROPERTIES_PKG IS 
  /* 
  This is the API for the table SFB_PROPERTIES. 
 
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
    p_table_name="SFB_PROPERTIES" 
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
    p_dml_view_name="SFB_PROPERTIES_DML_V" 
    p_dml_view_trigger_name="SFB_PROPERTIES_IOIUD" 
    p_enable_one_to_one_view="FALSE" 
    p_one_to_one_view_name="SFB_PROPERTIES_V" 
    p_api_name="SFB_PROPERTIES_PKG" 
    p_sequence_name="" 
    p_exclude_column_list="" 
    p_audit_column_mappings="created=#PREFIX#_CREATED, created_by=#PREFIX#_CREATED_BY, updated=#PREFIX#_UPDATED, updated_by=#PREFIX#_UPDATED_BY" 
    p_audit_user_expression="coalesce(sys_context('apex$session','app_user'), sys_context('userenv','os_user'), sys_context('userenv','session_user'))" 
    p_row_version_column_mapping="" 
    p_tenant_column_mapping="" 
    p_enable_custom_defaults="FALSE" 
    p_custom_default_values=""/> 
  */
 
  TYPE t_strong_ref_cursor IS REF CURSOR RETURN SFB_PROPERTIES%ROWTYPE;
 
  FUNCTION bulk_is_complete 
  RETURN BOOLEAN;
 
  PROCEDURE set_bulk_limit ( 
    p_bulk_limit IN PLS_INTEGER );
 
  FUNCTION get_bulk_limit 
  RETURN PLS_INTEGER;
 
  FUNCTION row_exists ( 
    p_prop_id IN SFB_PROPERTIES.PROP_ID%TYPE /*PK*/ ) 
  RETURN BOOLEAN;
 
  FUNCTION row_exists_yn ( 
    p_prop_id IN SFB_PROPERTIES.PROP_ID%TYPE /*PK*/ ) 
  RETURN VARCHAR2;
 
  FUNCTION get_pk_by_unique_cols ( 
    p_prop_name IN SFB_PROPERTIES.PROP_NAME%TYPE /*UK*/,
    p_prop_type IN SFB_PROPERTIES.PROP_TYPE%TYPE /*UK*/ ) 
  RETURN SFB_PROPERTIES.PROP_ID%TYPE;
 
  FUNCTION create_row ( 
    p_prop_id           IN SFB_PROPERTIES.PROP_ID%TYPE             DEFAULT "SFB_PROP_SEQ"."NEXTVAL" /*PK*/,
    p_prop_name         IN SFB_PROPERTIES.PROP_NAME%TYPE            /*UK*/,
    p_prop_return_value IN SFB_PROPERTIES.PROP_RETURN_VALUE%TYPE   ,
    p_prop_type         IN SFB_PROPERTIES.PROP_TYPE%TYPE            /*UK*/,
    p_prop_remark       IN SFB_PROPERTIES.PROP_REMARK%TYPE         DEFAULT NULL,
    p_prop_valid_from   IN SFB_PROPERTIES.PROP_VALID_FROM%TYPE     DEFAULT sysdate ,
    p_prop_valid_to     IN SFB_PROPERTIES.PROP_VALID_TO%TYPE       DEFAULT TO_DATE('31.12.2999', 'DD.MM.YYYY') ,
    p_prop_deleted_yn   IN SFB_PROPERTIES.PROP_DELETED_YN%TYPE     DEFAULT 'NO'  ,
    p_PROP_HELP_TEXT    IN SFB_PROPERTIES.PROP_HELP_TEXT%TYPE     DEFAULT 'No help text is available at' ) 
  RETURN SFB_PROPERTIES.PROP_ID%TYPE;
 
  PROCEDURE create_row ( 
    p_prop_id           IN SFB_PROPERTIES.PROP_ID%TYPE             DEFAULT "SFB_PROP_SEQ"."NEXTVAL" /*PK*/,
    p_prop_name         IN SFB_PROPERTIES.PROP_NAME%TYPE            /*UK*/,
    p_prop_return_value IN SFB_PROPERTIES.PROP_RETURN_VALUE%TYPE   ,
    p_prop_type         IN SFB_PROPERTIES.PROP_TYPE%TYPE            /*UK*/,
    p_prop_remark       IN SFB_PROPERTIES.PROP_REMARK%TYPE         DEFAULT NULL,
    p_prop_valid_from   IN SFB_PROPERTIES.PROP_VALID_FROM%TYPE     DEFAULT sysdate ,
    p_prop_valid_to     IN SFB_PROPERTIES.PROP_VALID_TO%TYPE       DEFAULT TO_DATE('31.12.2999', 'DD.MM.YYYY') ,
    p_prop_deleted_yn   IN SFB_PROPERTIES.PROP_DELETED_YN%TYPE     DEFAULT 'NO'  );
 
  FUNCTION create_row ( 
    p_row IN SFB_PROPERTIES%ROWTYPE ) 
  RETURN SFB_PROPERTIES.PROP_ID%TYPE;
 
  PROCEDURE create_row ( 
    p_row IN SFB_PROPERTIES%ROWTYPE );
 

 
  FUNCTION read_row ( 
    p_prop_id IN SFB_PROPERTIES.PROP_ID%TYPE /*PK*/ ) 
  RETURN SFB_PROPERTIES%ROWTYPE;
 
  FUNCTION read_row ( 
    p_prop_name IN SFB_PROPERTIES.PROP_NAME%TYPE /*UK*/,
    p_prop_type IN SFB_PROPERTIES.PROP_TYPE%TYPE /*UK*/ ) 
  RETURN SFB_PROPERTIES%ROWTYPE;
 
  PROCEDURE read_row ( 
    p_prop_id           IN            SFB_PROPERTIES.PROP_ID%TYPE /*PK*/,
    p_prop_name            OUT NOCOPY SFB_PROPERTIES.PROP_NAME%TYPE /*UK*/,
    p_prop_return_value    OUT NOCOPY SFB_PROPERTIES.PROP_RETURN_VALUE%TYPE,
    p_prop_type            OUT NOCOPY SFB_PROPERTIES.PROP_TYPE%TYPE /*UK*/,
    p_prop_remark          OUT NOCOPY SFB_PROPERTIES.PROP_REMARK%TYPE,
    p_prop_created         OUT NOCOPY SFB_PROPERTIES.PROP_CREATED%TYPE,
    p_prop_created_by      OUT NOCOPY SFB_PROPERTIES.PROP_CREATED_BY%TYPE,
    p_prop_updated         OUT NOCOPY SFB_PROPERTIES.PROP_UPDATED%TYPE,
    p_prop_updated_by      OUT NOCOPY SFB_PROPERTIES.PROP_UPDATED_BY%TYPE,
    p_prop_valid_from      OUT NOCOPY SFB_PROPERTIES.PROP_VALID_FROM%TYPE,
    p_prop_valid_to        OUT NOCOPY SFB_PROPERTIES.PROP_VALID_TO%TYPE,
    p_prop_deleted_yn      OUT NOCOPY SFB_PROPERTIES.PROP_DELETED_YN%TYPE ,
    p_PROP_HELP_TEXT       OUT NOCOPY SFB_PROPERTIES.PROP_HELP_TEXT%TYPE 
    );
 
 
  FUNCTION update_row ( 
    p_prop_id           IN SFB_PROPERTIES.PROP_ID%TYPE /*PK*/,
    p_prop_name         IN SFB_PROPERTIES.PROP_NAME%TYPE /*UK*/,
    p_prop_return_value IN SFB_PROPERTIES.PROP_RETURN_VALUE%TYPE,
    p_prop_type         IN SFB_PROPERTIES.PROP_TYPE%TYPE /*UK*/,
    p_prop_remark       IN SFB_PROPERTIES.PROP_REMARK%TYPE,
    p_prop_valid_from   IN SFB_PROPERTIES.PROP_VALID_FROM%TYPE,
    p_prop_valid_to     IN SFB_PROPERTIES.PROP_VALID_TO%TYPE,
    p_prop_deleted_yn   IN SFB_PROPERTIES.PROP_DELETED_YN%TYPE ) 
  RETURN SFB_PROPERTIES.PROP_ID%TYPE;
 
  PROCEDURE update_row ( 
    p_prop_id           IN SFB_PROPERTIES.PROP_ID%TYPE /*PK*/,
    p_prop_name         IN SFB_PROPERTIES.PROP_NAME%TYPE /*UK*/,
    p_prop_return_value IN SFB_PROPERTIES.PROP_RETURN_VALUE%TYPE,
    p_prop_type         IN SFB_PROPERTIES.PROP_TYPE%TYPE /*UK*/,
    p_prop_remark       IN SFB_PROPERTIES.PROP_REMARK%TYPE,
    p_prop_valid_from   IN SFB_PROPERTIES.PROP_VALID_FROM%TYPE,
    p_prop_valid_to     IN SFB_PROPERTIES.PROP_VALID_TO%TYPE,
    p_prop_deleted_yn   IN SFB_PROPERTIES.PROP_DELETED_YN%TYPE );
 
  FUNCTION update_row ( 
    p_row IN SFB_PROPERTIES%ROWTYPE ) 
  RETURN SFB_PROPERTIES.PROP_ID%TYPE;
 
  PROCEDURE update_row ( 
    p_row IN SFB_PROPERTIES%ROWTYPE );
 

 
  PROCEDURE delete_row ( 
    p_prop_id IN SFB_PROPERTIES.PROP_ID%TYPE /*PK*/ );
 

 
  FUNCTION create_or_update_row ( 
    p_prop_id           IN SFB_PROPERTIES.PROP_ID%TYPE /*PK*/,
    p_prop_name         IN SFB_PROPERTIES.PROP_NAME%TYPE /*UK*/,
    p_prop_return_value IN SFB_PROPERTIES.PROP_RETURN_VALUE%TYPE,
    p_prop_type         IN SFB_PROPERTIES.PROP_TYPE%TYPE /*UK*/,
    p_prop_remark       IN SFB_PROPERTIES.PROP_REMARK%TYPE,
    p_prop_valid_from   IN SFB_PROPERTIES.PROP_VALID_FROM%TYPE,
    p_prop_valid_to     IN SFB_PROPERTIES.PROP_VALID_TO%TYPE,
    p_prop_deleted_yn   IN SFB_PROPERTIES.PROP_DELETED_YN%TYPE ) 
  RETURN SFB_PROPERTIES.PROP_ID%TYPE;
 
  PROCEDURE create_or_update_row ( 
    p_prop_id           IN SFB_PROPERTIES.PROP_ID%TYPE /*PK*/,
    p_prop_name         IN SFB_PROPERTIES.PROP_NAME%TYPE /*UK*/,
    p_prop_return_value IN SFB_PROPERTIES.PROP_RETURN_VALUE%TYPE,
    p_prop_type         IN SFB_PROPERTIES.PROP_TYPE%TYPE /*UK*/,
    p_prop_remark       IN SFB_PROPERTIES.PROP_REMARK%TYPE,
    p_prop_valid_from   IN SFB_PROPERTIES.PROP_VALID_FROM%TYPE,
    p_prop_valid_to     IN SFB_PROPERTIES.PROP_VALID_TO%TYPE,
    p_prop_deleted_yn   IN SFB_PROPERTIES.PROP_DELETED_YN%TYPE );
 
  FUNCTION create_or_update_row ( 
    p_row IN SFB_PROPERTIES%ROWTYPE ) 
  RETURN SFB_PROPERTIES.PROP_ID%TYPE;
 
  PROCEDURE create_or_update_row ( 
    p_row IN SFB_PROPERTIES%ROWTYPE );
 
  FUNCTION get_prop_name ( 
    p_prop_id IN SFB_PROPERTIES.PROP_ID%TYPE /*PK*/ ) 
  RETURN SFB_PROPERTIES.PROP_NAME%TYPE;

    FUNCTION get_PROP_HELP_TEXT ( 
    p_prop_id IN SFB_PROPERTIES.PROP_ID%TYPE /*PK*/ ) 
  RETURN SFB_PROPERTIES.PROP_HELP_TEXT%TYPE;
 
  FUNCTION get_prop_return_value ( 
    p_prop_id IN SFB_PROPERTIES.PROP_ID%TYPE /*PK*/ ) 
  RETURN SFB_PROPERTIES.PROP_RETURN_VALUE%TYPE;
 
  FUNCTION get_prop_type ( 
    p_prop_id IN SFB_PROPERTIES.PROP_ID%TYPE /*PK*/ ) 
  RETURN SFB_PROPERTIES.PROP_TYPE%TYPE;
 
  FUNCTION get_prop_remark ( 
    p_prop_id IN SFB_PROPERTIES.PROP_ID%TYPE /*PK*/ ) 
  RETURN SFB_PROPERTIES.PROP_REMARK%TYPE;
 
  FUNCTION get_prop_created ( 
    p_prop_id IN SFB_PROPERTIES.PROP_ID%TYPE /*PK*/ ) 
  RETURN SFB_PROPERTIES.PROP_CREATED%TYPE;
 
  FUNCTION get_prop_created_by ( 
    p_prop_id IN SFB_PROPERTIES.PROP_ID%TYPE /*PK*/ ) 
  RETURN SFB_PROPERTIES.PROP_CREATED_BY%TYPE;
 
  FUNCTION get_prop_updated ( 
    p_prop_id IN SFB_PROPERTIES.PROP_ID%TYPE /*PK*/ ) 
  RETURN SFB_PROPERTIES.PROP_UPDATED%TYPE;
 
  FUNCTION get_prop_updated_by ( 
    p_prop_id IN SFB_PROPERTIES.PROP_ID%TYPE /*PK*/ ) 
  RETURN SFB_PROPERTIES.PROP_UPDATED_BY%TYPE;
 
  FUNCTION get_prop_valid_from ( 
    p_prop_id IN SFB_PROPERTIES.PROP_ID%TYPE /*PK*/ ) 
  RETURN SFB_PROPERTIES.PROP_VALID_FROM%TYPE;
 
  FUNCTION get_prop_valid_to ( 
    p_prop_id IN SFB_PROPERTIES.PROP_ID%TYPE /*PK*/ ) 
  RETURN SFB_PROPERTIES.PROP_VALID_TO%TYPE;
 
  FUNCTION get_prop_deleted_yn ( 
    p_prop_id IN SFB_PROPERTIES.PROP_ID%TYPE /*PK*/ ) 
  RETURN SFB_PROPERTIES.PROP_DELETED_YN%TYPE;
 
  PROCEDURE set_prop_name ( 
    p_prop_id   IN SFB_PROPERTIES.PROP_ID%TYPE /*PK*/, 
    p_prop_name IN SFB_PROPERTIES.PROP_NAME%TYPE );
 
  PROCEDURE set_prop_return_value ( 
    p_prop_id           IN SFB_PROPERTIES.PROP_ID%TYPE /*PK*/, 
    p_prop_return_value IN SFB_PROPERTIES.PROP_RETURN_VALUE%TYPE );
 
  PROCEDURE set_prop_type ( 
    p_prop_id   IN SFB_PROPERTIES.PROP_ID%TYPE /*PK*/, 
    p_prop_type IN SFB_PROPERTIES.PROP_TYPE%TYPE );
 
  PROCEDURE set_prop_remark ( 
    p_prop_id     IN SFB_PROPERTIES.PROP_ID%TYPE /*PK*/, 
    p_prop_remark IN SFB_PROPERTIES.PROP_REMARK%TYPE );
 
  PROCEDURE set_prop_valid_from ( 
    p_prop_id         IN SFB_PROPERTIES.PROP_ID%TYPE /*PK*/, 
    p_prop_valid_from IN SFB_PROPERTIES.PROP_VALID_FROM%TYPE );
 
  PROCEDURE set_prop_valid_to ( 
    p_prop_id       IN SFB_PROPERTIES.PROP_ID%TYPE /*PK*/, 
    p_prop_valid_to IN SFB_PROPERTIES.PROP_VALID_TO%TYPE );
 
  PROCEDURE set_prop_deleted_yn ( 
    p_prop_id         IN SFB_PROPERTIES.PROP_ID%TYPE /*PK*/, 
    p_prop_deleted_yn IN SFB_PROPERTIES.PROP_DELETED_YN%TYPE );
 
  FUNCTION get_default_row 
  RETURN SFB_PROPERTIES%ROWTYPE; 
  /* 
  Helper to get a prepopulated row with the table defaults from the dictionary. 
  */
 
END SFB_PROPERTIES_PKG;
/

create or replace PACKAGE BODY       SFB_PROPERTIES_PKG IS 
  /* 
  This is the API for the table SFB_PROPERTIES. 
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
    p_prop_id IN SFB_PROPERTIES.PROP_ID%TYPE /*PK*/ ) 
  RETURN BOOLEAN 
  IS 
    v_return BOOLEAN := FALSE; 
    v_dummy  PLS_INTEGER; 
    CURSOR   cur_bool IS 
      SELECT 1 FROM SFB_PROPERTIES 
      WHERE 
        PROP_ID = p_prop_id; 
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
    p_prop_id IN SFB_PROPERTIES.PROP_ID%TYPE /*PK*/ ) 
  RETURN VARCHAR2 
  IS 
  BEGIN 
    RETURN 
      CASE 
        WHEN row_exists( 
          p_prop_id => p_prop_id ) 
        THEN 'Y' 
        ELSE 'N' 
      END; 
  END;
 
  FUNCTION get_pk_by_unique_cols ( 
    p_prop_name IN SFB_PROPERTIES.PROP_NAME%TYPE /*UK*/,
    p_prop_type IN SFB_PROPERTIES.PROP_TYPE%TYPE /*UK*/ ) 
  RETURN SFB_PROPERTIES.PROP_ID%TYPE 
  IS 
    v_return SFB_PROPERTIES.PROP_ID%TYPE; 
  BEGIN 
    v_return := read_row ( p_prop_name => p_prop_name,
    p_prop_type => p_prop_type ).PROP_ID; 
    RETURN v_return; 
  END get_pk_by_unique_cols;
 
  FUNCTION create_row ( 
    p_prop_id           IN SFB_PROPERTIES.PROP_ID%TYPE             DEFAULT "SFB_PROP_SEQ"."NEXTVAL" /*PK*/,
    p_prop_name         IN SFB_PROPERTIES.PROP_NAME%TYPE            /*UK*/,
    p_prop_return_value IN SFB_PROPERTIES.PROP_RETURN_VALUE%TYPE   ,
    p_prop_type         IN SFB_PROPERTIES.PROP_TYPE%TYPE            /*UK*/,
    p_prop_remark       IN SFB_PROPERTIES.PROP_REMARK%TYPE         DEFAULT NULL,
    p_prop_valid_from   IN SFB_PROPERTIES.PROP_VALID_FROM%TYPE     DEFAULT sysdate ,
    p_prop_valid_to     IN SFB_PROPERTIES.PROP_VALID_TO%TYPE       DEFAULT TO_DATE('31.12.2999', 'DD.MM.YYYY') ,
    p_prop_deleted_yn   IN SFB_PROPERTIES.PROP_DELETED_YN%TYPE     DEFAULT 'NO'   ,
    p_PROP_HELP_TEXT    IN SFB_PROPERTIES.PROP_HELP_TEXT%TYPE     DEFAULT 'No help text is available at' ) 
  RETURN SFB_PROPERTIES.PROP_ID%TYPE 
  IS 
    v_return SFB_PROPERTIES.PROP_ID%TYPE;  
  BEGIN 
    INSERT INTO SFB_PROPERTIES ( 
      PROP_ID /*PK*/,
      PROP_NAME /*UK*/,
      PROP_RETURN_VALUE,
      PROP_TYPE /*UK*/,
      PROP_REMARK,
      PROP_CREATED,
      PROP_CREATED_BY,
      PROP_UPDATED,
      PROP_UPDATED_BY,
      PROP_VALID_FROM,
      PROP_VALID_TO,
      PROP_DELETED_YN,
      PROP_HELP_TEXT ) 
    VALUES ( 
      p_prop_id,
      p_prop_name,
      p_prop_return_value,
      p_prop_type,
      p_prop_remark,
      systimestamp,
      coalesce(sys_context('apex$session','app_user'), sys_context('userenv','os_user'), sys_context('userenv','session_user')),
      systimestamp,
      coalesce(sys_context('apex$session','app_user'), sys_context('userenv','os_user'), sys_context('userenv','session_user')),
      p_prop_valid_from,
      p_prop_valid_to,
      p_prop_deleted_yn,
      p_PROP_HELP_TEXT ) 
    RETURN  
      PROP_ID 
    INTO 
      v_return; 
    RETURN v_return; 
  END create_row;
 
  PROCEDURE create_row ( 
    p_prop_id           IN SFB_PROPERTIES.PROP_ID%TYPE             DEFAULT "SFB_PROP_SEQ"."NEXTVAL" /*PK*/,
    p_prop_name         IN SFB_PROPERTIES.PROP_NAME%TYPE            /*UK*/,
    p_prop_return_value IN SFB_PROPERTIES.PROP_RETURN_VALUE%TYPE   ,
    p_prop_type         IN SFB_PROPERTIES.PROP_TYPE%TYPE            /*UK*/,
    p_prop_remark       IN SFB_PROPERTIES.PROP_REMARK%TYPE         DEFAULT NULL,
    p_prop_valid_from   IN SFB_PROPERTIES.PROP_VALID_FROM%TYPE     DEFAULT sysdate ,
    p_prop_valid_to     IN SFB_PROPERTIES.PROP_VALID_TO%TYPE       DEFAULT TO_DATE('31.12.2999', 'DD.MM.YYYY') ,
    p_prop_deleted_yn   IN SFB_PROPERTIES.PROP_DELETED_YN%TYPE     DEFAULT 'NO'  ) 
  IS 
  BEGIN 
    INSERT INTO SFB_PROPERTIES ( 
      PROP_ID /*PK*/,
      PROP_NAME /*UK*/,
      PROP_RETURN_VALUE,
      PROP_TYPE /*UK*/,
      PROP_REMARK,
      PROP_CREATED,
      PROP_CREATED_BY,
      PROP_UPDATED,
      PROP_UPDATED_BY,
      PROP_VALID_FROM,
      PROP_VALID_TO,
      PROP_DELETED_YN ) 
    VALUES ( 
      p_prop_id,
      p_prop_name,
      p_prop_return_value,
      p_prop_type,
      p_prop_remark,
      systimestamp,
      coalesce(sys_context('apex$session','app_user'), sys_context('userenv','os_user'), sys_context('userenv','session_user')),
      systimestamp,
      coalesce(sys_context('apex$session','app_user'), sys_context('userenv','os_user'), sys_context('userenv','session_user')),
      p_prop_valid_from,
      p_prop_valid_to,
      p_prop_deleted_yn ); 
  END create_row;
 
  FUNCTION create_row ( 
    p_row IN SFB_PROPERTIES%ROWTYPE ) 
  RETURN SFB_PROPERTIES.PROP_ID%TYPE 
  IS 
  BEGIN 
    RETURN create_row ( 
      p_prop_id           => p_row.PROP_ID /*PK*/,
      p_prop_name         => p_row.PROP_NAME /*UK*/,
      p_prop_return_value => p_row.PROP_RETURN_VALUE,
      p_prop_type         => p_row.PROP_TYPE /*UK*/,
      p_prop_remark       => p_row.PROP_REMARK,
      p_prop_valid_from   => p_row.PROP_VALID_FROM,
      p_prop_valid_to     => p_row.PROP_VALID_TO,
      p_prop_deleted_yn   => p_row.PROP_DELETED_YN ); 
  END create_row;
 
  PROCEDURE create_row ( 
    p_row IN SFB_PROPERTIES%ROWTYPE ) 
  IS 
  BEGIN 
    create_row ( 
      p_prop_id           => p_row.PROP_ID /*PK*/,
      p_prop_name         => p_row.PROP_NAME /*UK*/,
      p_prop_return_value => p_row.PROP_RETURN_VALUE,
      p_prop_type         => p_row.PROP_TYPE /*UK*/,
      p_prop_remark       => p_row.PROP_REMARK,
      p_prop_valid_from   => p_row.PROP_VALID_FROM,
      p_prop_valid_to     => p_row.PROP_VALID_TO,
      p_prop_deleted_yn   => p_row.PROP_DELETED_YN ); 
  END create_row;
 
  
 
 
 
  FUNCTION read_row ( 
    p_prop_id IN SFB_PROPERTIES.PROP_ID%TYPE /*PK*/ ) 
  RETURN SFB_PROPERTIES%ROWTYPE 
  IS 
    v_row SFB_PROPERTIES%ROWTYPE; 
    CURSOR cur_row IS 
      SELECT * FROM SFB_PROPERTIES 
      WHERE 
        PROP_ID = p_prop_id; 
  BEGIN 
    OPEN cur_row; 
    FETCH cur_row INTO v_row; 
    CLOSE cur_row; 
    RETURN v_row; 
  END read_row;
 
  FUNCTION read_row ( 
    p_prop_name IN SFB_PROPERTIES.PROP_NAME%TYPE /*UK*/,
    p_prop_type IN SFB_PROPERTIES.PROP_TYPE%TYPE /*UK*/ ) 
  RETURN SFB_PROPERTIES%ROWTYPE 
  IS 
    v_row SFB_PROPERTIES%ROWTYPE; 
    CURSOR cur_row IS 
      SELECT * 
        FROM SFB_PROPERTIES 
       WHERE PROP_NAME = p_prop_name
        AND PROP_TYPE = p_prop_type; 
  BEGIN 
    OPEN cur_row; 
    FETCH cur_row INTO v_row; 
    CLOSE cur_row; 
    RETURN v_row; 
  END;
 
  PROCEDURE read_row ( 
    p_prop_id           IN            SFB_PROPERTIES.PROP_ID%TYPE /*PK*/,
    p_prop_name            OUT NOCOPY SFB_PROPERTIES.PROP_NAME%TYPE /*UK*/,
    p_prop_return_value    OUT NOCOPY SFB_PROPERTIES.PROP_RETURN_VALUE%TYPE,
    p_prop_type            OUT NOCOPY SFB_PROPERTIES.PROP_TYPE%TYPE /*UK*/,
    p_prop_remark          OUT NOCOPY SFB_PROPERTIES.PROP_REMARK%TYPE,
    p_prop_created         OUT NOCOPY SFB_PROPERTIES.PROP_CREATED%TYPE,
    p_prop_created_by      OUT NOCOPY SFB_PROPERTIES.PROP_CREATED_BY%TYPE,
    p_prop_updated         OUT NOCOPY SFB_PROPERTIES.PROP_UPDATED%TYPE,
    p_prop_updated_by      OUT NOCOPY SFB_PROPERTIES.PROP_UPDATED_BY%TYPE,
    p_prop_valid_from      OUT NOCOPY SFB_PROPERTIES.PROP_VALID_FROM%TYPE,
    p_prop_valid_to        OUT NOCOPY SFB_PROPERTIES.PROP_VALID_TO%TYPE,
    p_prop_deleted_yn      OUT NOCOPY SFB_PROPERTIES.PROP_DELETED_YN%TYPE,
    p_PROP_HELP_TEXT       OUT NOCOPY SFB_PROPERTIES.PROP_HELP_TEXT%TYPE
    
     ) 
  IS 
    v_row SFB_PROPERTIES%ROWTYPE; 
  BEGIN 
    v_row := read_row ( 
      p_prop_id => p_prop_id ); 
    p_prop_name         := v_row.PROP_NAME; 
    p_prop_return_value := v_row.PROP_RETURN_VALUE; 
    p_prop_type         := v_row.PROP_TYPE; 
    p_prop_remark       := v_row.PROP_REMARK; 
    p_prop_created      := v_row.PROP_CREATED; 
    p_prop_created_by   := v_row.PROP_CREATED_BY; 
    p_prop_updated      := v_row.PROP_UPDATED; 
    p_prop_updated_by   := v_row.PROP_UPDATED_BY; 
    p_prop_valid_from   := v_row.PROP_VALID_FROM; 
    p_prop_valid_to     := v_row.PROP_VALID_TO; 
    p_prop_deleted_yn   := v_row.PROP_DELETED_YN;  
    p_PROP_HELP_TEXT    := v_row.PROP_HELP_TEXT;  
  END read_row;
 
 
 
  FUNCTION update_row ( 
    p_prop_id           IN SFB_PROPERTIES.PROP_ID%TYPE /*PK*/,
    p_prop_name         IN SFB_PROPERTIES.PROP_NAME%TYPE /*UK*/,
    p_prop_return_value IN SFB_PROPERTIES.PROP_RETURN_VALUE%TYPE,
    p_prop_type         IN SFB_PROPERTIES.PROP_TYPE%TYPE /*UK*/,
    p_prop_remark       IN SFB_PROPERTIES.PROP_REMARK%TYPE,
    p_prop_valid_from   IN SFB_PROPERTIES.PROP_VALID_FROM%TYPE,
    p_prop_valid_to     IN SFB_PROPERTIES.PROP_VALID_TO%TYPE,
    p_prop_deleted_yn   IN SFB_PROPERTIES.PROP_DELETED_YN%TYPE ) 
  RETURN SFB_PROPERTIES.PROP_ID%TYPE 
  IS 
    v_return SFB_PROPERTIES.PROP_ID%TYPE;  
  BEGIN 
    UPDATE 
      SFB_PROPERTIES 
    SET 
      PROP_NAME         = p_prop_name /*UK*/,
      PROP_RETURN_VALUE = p_prop_return_value,
      PROP_TYPE         = p_prop_type /*UK*/,
      PROP_REMARK       = p_prop_remark,
      PROP_UPDATED      = systimestamp,
      PROP_UPDATED_BY   = coalesce(sys_context('apex$session','app_user'), sys_context('userenv','os_user'), sys_context('userenv','session_user')),
      PROP_VALID_FROM   = p_prop_valid_from,
      PROP_VALID_TO     = p_prop_valid_to,
      PROP_DELETED_YN   = p_prop_deleted_yn 
    WHERE 
      PROP_ID = p_prop_id 
    RETURN  
      PROP_ID 
    INTO 
      v_return; 
    RETURN v_return; 
  END update_row;
 
  PROCEDURE update_row ( 
    p_prop_id           IN SFB_PROPERTIES.PROP_ID%TYPE /*PK*/,
    p_prop_name         IN SFB_PROPERTIES.PROP_NAME%TYPE /*UK*/,
    p_prop_return_value IN SFB_PROPERTIES.PROP_RETURN_VALUE%TYPE,
    p_prop_type         IN SFB_PROPERTIES.PROP_TYPE%TYPE /*UK*/,
    p_prop_remark       IN SFB_PROPERTIES.PROP_REMARK%TYPE,
    p_prop_valid_from   IN SFB_PROPERTIES.PROP_VALID_FROM%TYPE,
    p_prop_valid_to     IN SFB_PROPERTIES.PROP_VALID_TO%TYPE,
    p_prop_deleted_yn   IN SFB_PROPERTIES.PROP_DELETED_YN%TYPE ) 
  IS 
  BEGIN 
    UPDATE 
      SFB_PROPERTIES 
    SET 
      PROP_NAME         = p_prop_name /*UK*/,
      PROP_RETURN_VALUE = p_prop_return_value,
      PROP_TYPE         = p_prop_type /*UK*/,
      PROP_REMARK       = p_prop_remark,
      PROP_UPDATED      = systimestamp,
      PROP_UPDATED_BY   = coalesce(sys_context('apex$session','app_user'), sys_context('userenv','os_user'), sys_context('userenv','session_user')),
      PROP_VALID_FROM   = p_prop_valid_from,
      PROP_VALID_TO     = p_prop_valid_to,
      PROP_DELETED_YN   = p_prop_deleted_yn 
    WHERE 
      PROP_ID = p_prop_id; 
  END update_row;
 
  FUNCTION update_row ( 
    p_row IN SFB_PROPERTIES%ROWTYPE ) 
  RETURN SFB_PROPERTIES.PROP_ID%TYPE 
  IS 
  BEGIN 
    RETURN update_row ( 
      p_prop_id           => p_row.PROP_ID /*PK*/,
      p_prop_name         => p_row.PROP_NAME /*UK*/,
      p_prop_return_value => p_row.PROP_RETURN_VALUE,
      p_prop_type         => p_row.PROP_TYPE /*UK*/,
      p_prop_remark       => p_row.PROP_REMARK,
      p_prop_valid_from   => p_row.PROP_VALID_FROM,
      p_prop_valid_to     => p_row.PROP_VALID_TO,
      p_prop_deleted_yn   => p_row.PROP_DELETED_YN ); 
  END update_row;
 
  PROCEDURE update_row ( 
    p_row IN SFB_PROPERTIES%ROWTYPE ) 
  IS 
  BEGIN 
    update_row ( 
      p_prop_id           => p_row.PROP_ID /*PK*/,
      p_prop_name         => p_row.PROP_NAME /*UK*/,
      p_prop_return_value => p_row.PROP_RETURN_VALUE,
      p_prop_type         => p_row.PROP_TYPE /*UK*/,
      p_prop_remark       => p_row.PROP_REMARK,
      p_prop_valid_from   => p_row.PROP_VALID_FROM,
      p_prop_valid_to     => p_row.PROP_VALID_TO,
      p_prop_deleted_yn   => p_row.PROP_DELETED_YN ); 
  END update_row;
 
  
 
  PROCEDURE delete_row ( 
    p_prop_id IN SFB_PROPERTIES.PROP_ID%TYPE /*PK*/ ) 
  IS 
  BEGIN 
    DELETE FROM SFB_PROPERTIES 
    WHERE 
      PROP_ID = p_prop_id; 
  END delete_row;
 
  
 
  FUNCTION create_or_update_row ( 
    p_prop_id           IN SFB_PROPERTIES.PROP_ID%TYPE /*PK*/,
    p_prop_name         IN SFB_PROPERTIES.PROP_NAME%TYPE /*UK*/,
    p_prop_return_value IN SFB_PROPERTIES.PROP_RETURN_VALUE%TYPE,
    p_prop_type         IN SFB_PROPERTIES.PROP_TYPE%TYPE /*UK*/,
    p_prop_remark       IN SFB_PROPERTIES.PROP_REMARK%TYPE,
    p_prop_valid_from   IN SFB_PROPERTIES.PROP_VALID_FROM%TYPE,
    p_prop_valid_to     IN SFB_PROPERTIES.PROP_VALID_TO%TYPE,
    p_prop_deleted_yn   IN SFB_PROPERTIES.PROP_DELETED_YN%TYPE ) 
  RETURN SFB_PROPERTIES.PROP_ID%TYPE 
  IS 
  BEGIN 
    IF row_exists( 
      p_prop_id => p_prop_id 
    ) 
    THEN 
      RETURN update_row ( 
        p_prop_id           => p_prop_id /*PK*/,
        p_prop_name         => p_prop_name /*UK*/,
        p_prop_return_value => p_prop_return_value,
        p_prop_type         => p_prop_type /*UK*/,
        p_prop_remark       => p_prop_remark,
        p_prop_valid_from   => p_prop_valid_from,
        p_prop_valid_to     => p_prop_valid_to,
        p_prop_deleted_yn   => p_prop_deleted_yn ); 
    ELSE 
      RETURN create_row ( 
        p_prop_id           => p_prop_id /*PK*/,
        p_prop_name         => p_prop_name /*UK*/,
        p_prop_return_value => p_prop_return_value,
        p_prop_type         => p_prop_type /*UK*/,
        p_prop_remark       => p_prop_remark,
        p_prop_valid_from   => p_prop_valid_from,
        p_prop_valid_to     => p_prop_valid_to,
        p_prop_deleted_yn   => p_prop_deleted_yn ); 
    END IF; 
  END create_or_update_row;
 
  PROCEDURE create_or_update_row ( 
    p_prop_id           IN SFB_PROPERTIES.PROP_ID%TYPE /*PK*/,
    p_prop_name         IN SFB_PROPERTIES.PROP_NAME%TYPE /*UK*/,
    p_prop_return_value IN SFB_PROPERTIES.PROP_RETURN_VALUE%TYPE,
    p_prop_type         IN SFB_PROPERTIES.PROP_TYPE%TYPE /*UK*/,
    p_prop_remark       IN SFB_PROPERTIES.PROP_REMARK%TYPE,
    p_prop_valid_from   IN SFB_PROPERTIES.PROP_VALID_FROM%TYPE,
    p_prop_valid_to     IN SFB_PROPERTIES.PROP_VALID_TO%TYPE,
    p_prop_deleted_yn   IN SFB_PROPERTIES.PROP_DELETED_YN%TYPE ) 
  IS 
  BEGIN 
    IF row_exists( 
      p_prop_id => p_prop_id 
    ) 
    THEN 
      update_row ( 
        p_prop_id           => p_prop_id /*PK*/,
        p_prop_name         => p_prop_name /*UK*/,
        p_prop_return_value => p_prop_return_value,
        p_prop_type         => p_prop_type /*UK*/,
        p_prop_remark       => p_prop_remark,
        p_prop_valid_from   => p_prop_valid_from,
        p_prop_valid_to     => p_prop_valid_to,
        p_prop_deleted_yn   => p_prop_deleted_yn ); 
    ELSE 
      create_row ( 
        p_prop_id           => p_prop_id /*PK*/,
        p_prop_name         => p_prop_name /*UK*/,
        p_prop_return_value => p_prop_return_value,
        p_prop_type         => p_prop_type /*UK*/,
        p_prop_remark       => p_prop_remark,
        p_prop_valid_from   => p_prop_valid_from,
        p_prop_valid_to     => p_prop_valid_to,
        p_prop_deleted_yn   => p_prop_deleted_yn ); 
    END IF; 
  END create_or_update_row;
 
  FUNCTION create_or_update_row ( 
    p_row IN SFB_PROPERTIES%ROWTYPE ) 
  RETURN SFB_PROPERTIES.PROP_ID%TYPE 
  IS 
  BEGIN 
    IF row_exists( 
      p_prop_id => p_row.PROP_ID 
    ) 
    THEN 
      RETURN update_row ( 
        p_prop_id           => p_row.PROP_ID /*PK*/,
        p_prop_name         => p_row.PROP_NAME /*UK*/,
        p_prop_return_value => p_row.PROP_RETURN_VALUE,
        p_prop_type         => p_row.PROP_TYPE /*UK*/,
        p_prop_remark       => p_row.PROP_REMARK,
        p_prop_valid_from   => p_row.PROP_VALID_FROM,
        p_prop_valid_to     => p_row.PROP_VALID_TO,
        p_prop_deleted_yn   => p_row.PROP_DELETED_YN ); 
    ELSE 
      RETURN create_row ( 
        p_prop_id           => p_row.PROP_ID /*PK*/,
        p_prop_name         => p_row.PROP_NAME /*UK*/,
        p_prop_return_value => p_row.PROP_RETURN_VALUE,
        p_prop_type         => p_row.PROP_TYPE /*UK*/,
        p_prop_remark       => p_row.PROP_REMARK,
        p_prop_valid_from   => p_row.PROP_VALID_FROM,
        p_prop_valid_to     => p_row.PROP_VALID_TO,
        p_prop_deleted_yn   => p_row.PROP_DELETED_YN ); 
    END IF; 
  END create_or_update_row;
 
  PROCEDURE create_or_update_row ( 
    p_row IN SFB_PROPERTIES%ROWTYPE ) 
  IS 
  BEGIN 
    IF row_exists( 
      p_prop_id => p_row.PROP_ID 
    ) 
    THEN 
      update_row ( 
        p_prop_id           => p_row.PROP_ID /*PK*/,
        p_prop_name         => p_row.PROP_NAME /*UK*/,
        p_prop_return_value => p_row.PROP_RETURN_VALUE,
        p_prop_type         => p_row.PROP_TYPE /*UK*/,
        p_prop_remark       => p_row.PROP_REMARK,
        p_prop_valid_from   => p_row.PROP_VALID_FROM,
        p_prop_valid_to     => p_row.PROP_VALID_TO,
        p_prop_deleted_yn   => p_row.PROP_DELETED_YN ); 
    ELSE 
      create_row ( 
        p_prop_id           => p_row.PROP_ID /*PK*/,
        p_prop_name         => p_row.PROP_NAME /*UK*/,
        p_prop_return_value => p_row.PROP_RETURN_VALUE,
        p_prop_type         => p_row.PROP_TYPE /*UK*/,
        p_prop_remark       => p_row.PROP_REMARK,
        p_prop_valid_from   => p_row.PROP_VALID_FROM,
        p_prop_valid_to     => p_row.PROP_VALID_TO,
        p_prop_deleted_yn   => p_row.PROP_DELETED_YN ); 
    END IF; 
  END create_or_update_row;
 
  FUNCTION get_prop_name ( 
    p_prop_id IN SFB_PROPERTIES.PROP_ID%TYPE /*PK*/ ) 
  RETURN SFB_PROPERTIES.PROP_NAME%TYPE 
  IS 
  BEGIN 
    RETURN read_row ( 
      p_prop_id => p_prop_id ).PROP_NAME; 
  END get_prop_name;

  FUNCTION get_PROP_HELP_TEXT ( 
    p_prop_id IN SFB_PROPERTIES.PROP_ID%TYPE /*PK*/ ) 
  RETURN SFB_PROPERTIES.PROP_HELP_TEXT%TYPE 
  IS 
  BEGIN 
    RETURN read_row ( 
      p_prop_id => p_prop_id ).PROP_HELP_TEXT; 
  END get_PROP_HELP_TEXT;
 
  FUNCTION get_prop_return_value ( 
    p_prop_id IN SFB_PROPERTIES.PROP_ID%TYPE /*PK*/ ) 
  RETURN SFB_PROPERTIES.PROP_RETURN_VALUE%TYPE 
  IS 
  BEGIN 
    RETURN read_row ( 
      p_prop_id => p_prop_id ).PROP_RETURN_VALUE; 
  END get_prop_return_value;
 
  FUNCTION get_prop_type ( 
    p_prop_id IN SFB_PROPERTIES.PROP_ID%TYPE /*PK*/ ) 
  RETURN SFB_PROPERTIES.PROP_TYPE%TYPE 
  IS 
  BEGIN 
    RETURN read_row ( 
      p_prop_id => p_prop_id ).PROP_TYPE; 
  END get_prop_type;
 
  FUNCTION get_prop_remark ( 
    p_prop_id IN SFB_PROPERTIES.PROP_ID%TYPE /*PK*/ ) 
  RETURN SFB_PROPERTIES.PROP_REMARK%TYPE 
  IS 
  BEGIN 
    RETURN read_row ( 
      p_prop_id => p_prop_id ).PROP_REMARK; 
  END get_prop_remark;
 
  FUNCTION get_prop_created ( 
    p_prop_id IN SFB_PROPERTIES.PROP_ID%TYPE /*PK*/ ) 
  RETURN SFB_PROPERTIES.PROP_CREATED%TYPE 
  IS 
  BEGIN 
    RETURN read_row ( 
      p_prop_id => p_prop_id ).PROP_CREATED; 
  END get_prop_created;
 
  FUNCTION get_prop_created_by ( 
    p_prop_id IN SFB_PROPERTIES.PROP_ID%TYPE /*PK*/ ) 
  RETURN SFB_PROPERTIES.PROP_CREATED_BY%TYPE 
  IS 
  BEGIN 
    RETURN read_row ( 
      p_prop_id => p_prop_id ).PROP_CREATED_BY; 
  END get_prop_created_by;
 
  FUNCTION get_prop_updated ( 
    p_prop_id IN SFB_PROPERTIES.PROP_ID%TYPE /*PK*/ ) 
  RETURN SFB_PROPERTIES.PROP_UPDATED%TYPE 
  IS 
  BEGIN 
    RETURN read_row ( 
      p_prop_id => p_prop_id ).PROP_UPDATED; 
  END get_prop_updated;
 
  FUNCTION get_prop_updated_by ( 
    p_prop_id IN SFB_PROPERTIES.PROP_ID%TYPE /*PK*/ ) 
  RETURN SFB_PROPERTIES.PROP_UPDATED_BY%TYPE 
  IS 
  BEGIN 
    RETURN read_row ( 
      p_prop_id => p_prop_id ).PROP_UPDATED_BY; 
  END get_prop_updated_by;
 
  FUNCTION get_prop_valid_from ( 
    p_prop_id IN SFB_PROPERTIES.PROP_ID%TYPE /*PK*/ ) 
  RETURN SFB_PROPERTIES.PROP_VALID_FROM%TYPE 
  IS 
  BEGIN 
    RETURN read_row ( 
      p_prop_id => p_prop_id ).PROP_VALID_FROM; 
  END get_prop_valid_from;
 
  FUNCTION get_prop_valid_to ( 
    p_prop_id IN SFB_PROPERTIES.PROP_ID%TYPE /*PK*/ ) 
  RETURN SFB_PROPERTIES.PROP_VALID_TO%TYPE 
  IS 
  BEGIN 
    RETURN read_row ( 
      p_prop_id => p_prop_id ).PROP_VALID_TO; 
  END get_prop_valid_to;
 
  FUNCTION get_prop_deleted_yn ( 
    p_prop_id IN SFB_PROPERTIES.PROP_ID%TYPE /*PK*/ ) 
  RETURN SFB_PROPERTIES.PROP_DELETED_YN%TYPE 
  IS 
  BEGIN 
    RETURN read_row ( 
      p_prop_id => p_prop_id ).PROP_DELETED_YN; 
  END get_prop_deleted_yn;
 
  PROCEDURE set_prop_name ( 
    p_prop_id   IN SFB_PROPERTIES.PROP_ID%TYPE /*PK*/, 
    p_prop_name IN SFB_PROPERTIES.PROP_NAME%TYPE ) 
  IS 
  BEGIN 
    UPDATE 
      SFB_PROPERTIES 
    SET 
      PROP_NAME       = p_prop_name /*UK*/,
      PROP_UPDATED    = systimestamp,
      PROP_UPDATED_BY = coalesce(sys_context('apex$session','app_user'), sys_context('userenv','os_user'), sys_context('userenv','session_user')) 
    WHERE 
      PROP_ID = p_prop_id; 
  END set_prop_name;
 
  PROCEDURE set_prop_return_value ( 
    p_prop_id           IN SFB_PROPERTIES.PROP_ID%TYPE /*PK*/, 
    p_prop_return_value IN SFB_PROPERTIES.PROP_RETURN_VALUE%TYPE ) 
  IS 
  BEGIN 
    UPDATE 
      SFB_PROPERTIES 
    SET 
      PROP_RETURN_VALUE = p_prop_return_value,
      PROP_UPDATED      = systimestamp,
      PROP_UPDATED_BY   = coalesce(sys_context('apex$session','app_user'), sys_context('userenv','os_user'), sys_context('userenv','session_user')) 
    WHERE 
      PROP_ID = p_prop_id; 
  END set_prop_return_value;
 
  PROCEDURE set_prop_type ( 
    p_prop_id   IN SFB_PROPERTIES.PROP_ID%TYPE /*PK*/, 
    p_prop_type IN SFB_PROPERTIES.PROP_TYPE%TYPE ) 
  IS 
  BEGIN 
    UPDATE 
      SFB_PROPERTIES 
    SET 
      PROP_TYPE       = p_prop_type /*UK*/,
      PROP_UPDATED    = systimestamp,
      PROP_UPDATED_BY = coalesce(sys_context('apex$session','app_user'), sys_context('userenv','os_user'), sys_context('userenv','session_user')) 
    WHERE 
      PROP_ID = p_prop_id; 
  END set_prop_type;
 
  PROCEDURE set_prop_remark ( 
    p_prop_id     IN SFB_PROPERTIES.PROP_ID%TYPE /*PK*/, 
    p_prop_remark IN SFB_PROPERTIES.PROP_REMARK%TYPE ) 
  IS 
  BEGIN 
    UPDATE 
      SFB_PROPERTIES 
    SET 
      PROP_REMARK     = p_prop_remark,
      PROP_UPDATED    = systimestamp,
      PROP_UPDATED_BY = coalesce(sys_context('apex$session','app_user'), sys_context('userenv','os_user'), sys_context('userenv','session_user')) 
    WHERE 
      PROP_ID = p_prop_id; 
  END set_prop_remark;
 
  PROCEDURE set_prop_valid_from ( 
    p_prop_id         IN SFB_PROPERTIES.PROP_ID%TYPE /*PK*/, 
    p_prop_valid_from IN SFB_PROPERTIES.PROP_VALID_FROM%TYPE ) 
  IS 
  BEGIN 
    UPDATE 
      SFB_PROPERTIES 
    SET 
      PROP_UPDATED    = systimestamp,
      PROP_UPDATED_BY = coalesce(sys_context('apex$session','app_user'), sys_context('userenv','os_user'), sys_context('userenv','session_user')),
      PROP_VALID_FROM = p_prop_valid_from 
    WHERE 
      PROP_ID = p_prop_id; 
  END set_prop_valid_from;
 
  PROCEDURE set_prop_valid_to ( 
    p_prop_id       IN SFB_PROPERTIES.PROP_ID%TYPE /*PK*/, 
    p_prop_valid_to IN SFB_PROPERTIES.PROP_VALID_TO%TYPE ) 
  IS 
  BEGIN 
    UPDATE 
      SFB_PROPERTIES 
    SET 
      PROP_UPDATED    = systimestamp,
      PROP_UPDATED_BY = coalesce(sys_context('apex$session','app_user'), sys_context('userenv','os_user'), sys_context('userenv','session_user')),
      PROP_VALID_TO   = p_prop_valid_to 
    WHERE 
      PROP_ID = p_prop_id; 
  END set_prop_valid_to;
 
  PROCEDURE set_prop_deleted_yn ( 
    p_prop_id         IN SFB_PROPERTIES.PROP_ID%TYPE /*PK*/, 
    p_prop_deleted_yn IN SFB_PROPERTIES.PROP_DELETED_YN%TYPE ) 
  IS 
  BEGIN 
    UPDATE 
      SFB_PROPERTIES 
    SET 
      PROP_UPDATED    = systimestamp,
      PROP_UPDATED_BY = coalesce(sys_context('apex$session','app_user'), sys_context('userenv','os_user'), sys_context('userenv','session_user')),
      PROP_DELETED_YN = p_prop_deleted_yn 
    WHERE 
      PROP_ID = p_prop_id; 
  END set_prop_deleted_yn;
 
  FUNCTION get_default_row 
  RETURN SFB_PROPERTIES%ROWTYPE 
  IS 
    v_row SFB_PROPERTIES%ROWTYPE; 
  BEGIN 
    v_row.PROP_ID         := "SFB_PROP_SEQ"."NEXTVAL" /*PK*/;
    v_row.PROP_CREATED    := sysdate ;
    v_row.PROP_CREATED_BY := ( coalesce(sys_context('apex$session', 'app_user'),  
                                                           sys_context('userenv', 'os_user'),  
                                                           sys_context('userenv', 'session_user')) ) ;
    v_row.PROP_UPDATED    := sysdate ;
    v_row.PROP_UPDATED_BY := ( coalesce(sys_context('apex$session', 'app_user'),  
                                                           sys_context('userenv', 'os_user'),  
                                                           sys_context('userenv', 'session_user')) ) ;
    v_row.PROP_VALID_FROM := sysdate ;
    v_row.PROP_VALID_TO   := TO_DATE('31.12.2999', 'DD.MM.YYYY') ;
    v_row.PROP_DELETED_YN := 'NO' ; 
    RETURN v_row; 
  END get_default_row;
 
END SFB_PROPERTIES_PKG;
/