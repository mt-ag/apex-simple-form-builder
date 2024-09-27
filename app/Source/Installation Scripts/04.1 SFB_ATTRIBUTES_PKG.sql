create or replace PACKAGE       SFB_ATTRIBUTES_PKG IS 
  /* 
  This is the API for the table SFB_ATTRIBUTES. 
 
  GENERATION OPTIONS 
  - Must be in the lines 5-42 to be reusable by the generator 
  - DO NOT TOUCH THIS until you know what you do 
  - Read the docs under github.com/OraMUC/table-api-generator ;-) 
  <options 
    generator="OM_TAPIGEN" 
    generator_version="0.6.3" 
    generator_action="COMPILE_API" 
    generated_at="2024-07-12 14:58:38" 
    generated_by="SAJJAD" 
    p_table_name="SFB_ATTRIBUTES" 
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
    p_dml_view_name="SFB_ATTRIBUTES_DML_V" 
    p_dml_view_trigger_name="SFB_ATTRIBUTES_IOIUD" 
    p_enable_one_to_one_view="FALSE" 
    p_one_to_one_view_name="SFB_ATTRIBUTES_V" 
    p_api_name="SFB_ATTRIBUTES_PKG" 
    p_sequence_name="" 
    p_exclude_column_list="" 
    p_audit_column_mappings="created=#PREFIX#_CREATED, created_by=#PREFIX#_CREATED_BY, updated=#PREFIX#_UPDATED, updated_by=#PREFIX#_UPDATED_BY" 
    p_audit_user_expression="coalesce(sys_context('apex$session','app_user'), sys_context('userenv','os_user'), sys_context('userenv','session_user'))" 
    p_row_version_column_mapping="" 
    p_tenant_column_mapping="" 
    p_enable_custom_defaults="FALSE" 
    p_custom_default_values=""/> 
  */
 
  TYPE t_strong_ref_cursor IS REF CURSOR RETURN SFB_ATTRIBUTES%ROWTYPE;
 
  FUNCTION bulk_is_complete 
  RETURN BOOLEAN;
 
  PROCEDURE set_bulk_limit ( 
    p_bulk_limit IN PLS_INTEGER );
 
  FUNCTION get_bulk_limit 
  RETURN PLS_INTEGER;
 
  FUNCTION row_exists ( 
    p_attr_id IN SFB_ATTRIBUTES.ATTR_ID%TYPE /*PK*/ ) 
  RETURN BOOLEAN;
 
  FUNCTION row_exists_yn ( 
    p_attr_id IN SFB_ATTRIBUTES.ATTR_ID%TYPE /*PK*/ ) 
  RETURN VARCHAR2;
 
  FUNCTION get_pk_by_unique_cols ( 
    p_attr_name IN SFB_ATTRIBUTES.ATTR_NAME%TYPE /*UK*/ ) 
  RETURN SFB_ATTRIBUTES.ATTR_ID%TYPE;
 
  FUNCTION create_row ( 
    p_attr_id           IN SFB_ATTRIBUTES.ATTR_ID%TYPE             DEFAULT "SFB_ATTR_SEQ"."NEXTVAL" /*PK*/,
    p_attr_name         IN SFB_ATTRIBUTES.ATTR_NAME%TYPE            /*UK*/,
    p_attr_return_value IN SFB_ATTRIBUTES.ATTR_RETURN_VALUE%TYPE   ,
    p_attr_type         IN SFB_ATTRIBUTES.ATTR_TYPE%TYPE           DEFAULT 'type',
    p_attr_remark       IN SFB_ATTRIBUTES.ATTR_REMARK%TYPE         DEFAULT NULL,
    p_attr_valid_from   IN SFB_ATTRIBUTES.ATTR_VALID_FROM%TYPE     DEFAULT sysdate ,
    p_attr_valid_to     IN SFB_ATTRIBUTES.ATTR_VALID_TO%TYPE       DEFAULT TO_DATE('31.12.2999', 'DD.MM.YYYY') ,
    p_attr_deleted_yn   IN SFB_ATTRIBUTES.ATTR_DELETED_YN%TYPE     DEFAULT 'NO'  ) 
  RETURN SFB_ATTRIBUTES.ATTR_ID%TYPE;
 
  PROCEDURE create_row ( 
    p_attr_id           IN SFB_ATTRIBUTES.ATTR_ID%TYPE             DEFAULT "SFB_ATTR_SEQ"."NEXTVAL" /*PK*/,
    p_attr_name         IN SFB_ATTRIBUTES.ATTR_NAME%TYPE            /*UK*/,
    p_attr_return_value IN SFB_ATTRIBUTES.ATTR_RETURN_VALUE%TYPE   ,
    p_attr_type         IN SFB_ATTRIBUTES.ATTR_TYPE%TYPE           DEFAULT 'type',
    p_attr_remark       IN SFB_ATTRIBUTES.ATTR_REMARK%TYPE         DEFAULT NULL,
    p_attr_valid_from   IN SFB_ATTRIBUTES.ATTR_VALID_FROM%TYPE     DEFAULT sysdate ,
    p_attr_valid_to     IN SFB_ATTRIBUTES.ATTR_VALID_TO%TYPE       DEFAULT TO_DATE('31.12.2999', 'DD.MM.YYYY') ,
    p_attr_deleted_yn   IN SFB_ATTRIBUTES.ATTR_DELETED_YN%TYPE     DEFAULT 'NO'  );
 
  FUNCTION create_row ( 
    p_row IN SFB_ATTRIBUTES%ROWTYPE ) 
  RETURN SFB_ATTRIBUTES.ATTR_ID%TYPE;
 
  PROCEDURE create_row ( 
    p_row IN SFB_ATTRIBUTES%ROWTYPE );
 

 
  FUNCTION read_row ( 
    p_attr_id IN SFB_ATTRIBUTES.ATTR_ID%TYPE /*PK*/ ) 
  RETURN SFB_ATTRIBUTES%ROWTYPE;
 
  FUNCTION read_row ( 
    p_attr_name IN SFB_ATTRIBUTES.ATTR_NAME%TYPE /*UK*/ ) 
  RETURN SFB_ATTRIBUTES%ROWTYPE;
 
  PROCEDURE read_row ( 
    p_attr_id           IN            SFB_ATTRIBUTES.ATTR_ID%TYPE /*PK*/,
    p_attr_name            OUT NOCOPY SFB_ATTRIBUTES.ATTR_NAME%TYPE /*UK*/,
    p_attr_return_value    OUT NOCOPY SFB_ATTRIBUTES.ATTR_RETURN_VALUE%TYPE,
    p_attr_type            OUT NOCOPY SFB_ATTRIBUTES.ATTR_TYPE%TYPE,
    p_attr_remark          OUT NOCOPY SFB_ATTRIBUTES.ATTR_REMARK%TYPE,
    p_attr_created         OUT NOCOPY SFB_ATTRIBUTES.ATTR_CREATED%TYPE,
    p_attr_created_by      OUT NOCOPY SFB_ATTRIBUTES.ATTR_CREATED_BY%TYPE,
    p_attr_updated         OUT NOCOPY SFB_ATTRIBUTES.ATTR_UPDATED%TYPE,
    p_attr_updated_by      OUT NOCOPY SFB_ATTRIBUTES.ATTR_UPDATED_BY%TYPE,
    p_attr_valid_from      OUT NOCOPY SFB_ATTRIBUTES.ATTR_VALID_FROM%TYPE,
    p_attr_valid_to        OUT NOCOPY SFB_ATTRIBUTES.ATTR_VALID_TO%TYPE,
    p_attr_deleted_yn      OUT NOCOPY SFB_ATTRIBUTES.ATTR_DELETED_YN%TYPE );
 

 
  FUNCTION update_row ( 
    p_attr_id           IN SFB_ATTRIBUTES.ATTR_ID%TYPE /*PK*/,
    p_attr_name         IN SFB_ATTRIBUTES.ATTR_NAME%TYPE /*UK*/,
    p_attr_return_value IN SFB_ATTRIBUTES.ATTR_RETURN_VALUE%TYPE,
    p_attr_type         IN SFB_ATTRIBUTES.ATTR_TYPE%TYPE,
    p_attr_remark       IN SFB_ATTRIBUTES.ATTR_REMARK%TYPE,
    p_attr_valid_from   IN SFB_ATTRIBUTES.ATTR_VALID_FROM%TYPE,
    p_attr_valid_to     IN SFB_ATTRIBUTES.ATTR_VALID_TO%TYPE,
    p_attr_deleted_yn   IN SFB_ATTRIBUTES.ATTR_DELETED_YN%TYPE ) 
  RETURN SFB_ATTRIBUTES.ATTR_ID%TYPE;
 
  PROCEDURE update_row ( 
    p_attr_id           IN SFB_ATTRIBUTES.ATTR_ID%TYPE /*PK*/,
    p_attr_name         IN SFB_ATTRIBUTES.ATTR_NAME%TYPE /*UK*/,
    p_attr_return_value IN SFB_ATTRIBUTES.ATTR_RETURN_VALUE%TYPE,
    p_attr_type         IN SFB_ATTRIBUTES.ATTR_TYPE%TYPE,
    p_attr_remark       IN SFB_ATTRIBUTES.ATTR_REMARK%TYPE,
    p_attr_valid_from   IN SFB_ATTRIBUTES.ATTR_VALID_FROM%TYPE,
    p_attr_valid_to     IN SFB_ATTRIBUTES.ATTR_VALID_TO%TYPE,
    p_attr_deleted_yn   IN SFB_ATTRIBUTES.ATTR_DELETED_YN%TYPE );
 
  FUNCTION update_row ( 
    p_row IN SFB_ATTRIBUTES%ROWTYPE ) 
  RETURN SFB_ATTRIBUTES.ATTR_ID%TYPE;
 
  PROCEDURE update_row ( 
    p_row IN SFB_ATTRIBUTES%ROWTYPE );
 

 
  PROCEDURE delete_row ( 
    p_attr_id IN SFB_ATTRIBUTES.ATTR_ID%TYPE /*PK*/ );
 

 
  FUNCTION create_or_update_row ( 
    p_attr_id           IN SFB_ATTRIBUTES.ATTR_ID%TYPE /*PK*/,
    p_attr_name         IN SFB_ATTRIBUTES.ATTR_NAME%TYPE /*UK*/,
    p_attr_return_value IN SFB_ATTRIBUTES.ATTR_RETURN_VALUE%TYPE,
    p_attr_type         IN SFB_ATTRIBUTES.ATTR_TYPE%TYPE,
    p_attr_remark       IN SFB_ATTRIBUTES.ATTR_REMARK%TYPE,
    p_attr_valid_from   IN SFB_ATTRIBUTES.ATTR_VALID_FROM%TYPE,
    p_attr_valid_to     IN SFB_ATTRIBUTES.ATTR_VALID_TO%TYPE,
    p_attr_deleted_yn   IN SFB_ATTRIBUTES.ATTR_DELETED_YN%TYPE ) 
  RETURN SFB_ATTRIBUTES.ATTR_ID%TYPE;
 
  PROCEDURE create_or_update_row ( 
    p_attr_id           IN SFB_ATTRIBUTES.ATTR_ID%TYPE /*PK*/,
    p_attr_name         IN SFB_ATTRIBUTES.ATTR_NAME%TYPE /*UK*/,
    p_attr_return_value IN SFB_ATTRIBUTES.ATTR_RETURN_VALUE%TYPE,
    p_attr_type         IN SFB_ATTRIBUTES.ATTR_TYPE%TYPE,
    p_attr_remark       IN SFB_ATTRIBUTES.ATTR_REMARK%TYPE,
    p_attr_valid_from   IN SFB_ATTRIBUTES.ATTR_VALID_FROM%TYPE,
    p_attr_valid_to     IN SFB_ATTRIBUTES.ATTR_VALID_TO%TYPE,
    p_attr_deleted_yn   IN SFB_ATTRIBUTES.ATTR_DELETED_YN%TYPE );
 
  FUNCTION create_or_update_row ( 
    p_row IN SFB_ATTRIBUTES%ROWTYPE ) 
  RETURN SFB_ATTRIBUTES.ATTR_ID%TYPE;
 
  PROCEDURE create_or_update_row ( 
    p_row IN SFB_ATTRIBUTES%ROWTYPE );
 
  FUNCTION get_attr_name ( 
    p_attr_id IN SFB_ATTRIBUTES.ATTR_ID%TYPE /*PK*/ ) 
  RETURN SFB_ATTRIBUTES.ATTR_NAME%TYPE;
 
  FUNCTION get_attr_return_value ( 
    p_attr_id IN SFB_ATTRIBUTES.ATTR_ID%TYPE /*PK*/ ) 
  RETURN SFB_ATTRIBUTES.ATTR_RETURN_VALUE%TYPE;
 
  FUNCTION get_attr_type ( 
    p_attr_id IN SFB_ATTRIBUTES.ATTR_ID%TYPE /*PK*/ ) 
  RETURN SFB_ATTRIBUTES.ATTR_TYPE%TYPE;
 
  FUNCTION get_attr_remark ( 
    p_attr_id IN SFB_ATTRIBUTES.ATTR_ID%TYPE /*PK*/ ) 
  RETURN SFB_ATTRIBUTES.ATTR_REMARK%TYPE;
 
  FUNCTION get_attr_created ( 
    p_attr_id IN SFB_ATTRIBUTES.ATTR_ID%TYPE /*PK*/ ) 
  RETURN SFB_ATTRIBUTES.ATTR_CREATED%TYPE;
 
  FUNCTION get_attr_created_by ( 
    p_attr_id IN SFB_ATTRIBUTES.ATTR_ID%TYPE /*PK*/ ) 
  RETURN SFB_ATTRIBUTES.ATTR_CREATED_BY%TYPE;
 
  FUNCTION get_attr_updated ( 
    p_attr_id IN SFB_ATTRIBUTES.ATTR_ID%TYPE /*PK*/ ) 
  RETURN SFB_ATTRIBUTES.ATTR_UPDATED%TYPE;
 
  FUNCTION get_attr_updated_by ( 
    p_attr_id IN SFB_ATTRIBUTES.ATTR_ID%TYPE /*PK*/ ) 
  RETURN SFB_ATTRIBUTES.ATTR_UPDATED_BY%TYPE;
 
  FUNCTION get_attr_valid_from ( 
    p_attr_id IN SFB_ATTRIBUTES.ATTR_ID%TYPE /*PK*/ ) 
  RETURN SFB_ATTRIBUTES.ATTR_VALID_FROM%TYPE;
 
  FUNCTION get_attr_valid_to ( 
    p_attr_id IN SFB_ATTRIBUTES.ATTR_ID%TYPE /*PK*/ ) 
  RETURN SFB_ATTRIBUTES.ATTR_VALID_TO%TYPE;
 
  FUNCTION get_attr_deleted_yn ( 
    p_attr_id IN SFB_ATTRIBUTES.ATTR_ID%TYPE /*PK*/ ) 
  RETURN SFB_ATTRIBUTES.ATTR_DELETED_YN%TYPE;
 
  PROCEDURE set_attr_name ( 
    p_attr_id   IN SFB_ATTRIBUTES.ATTR_ID%TYPE /*PK*/, 
    p_attr_name IN SFB_ATTRIBUTES.ATTR_NAME%TYPE );
 
  PROCEDURE set_attr_return_value ( 
    p_attr_id           IN SFB_ATTRIBUTES.ATTR_ID%TYPE /*PK*/, 
    p_attr_return_value IN SFB_ATTRIBUTES.ATTR_RETURN_VALUE%TYPE );
 
  PROCEDURE set_attr_type ( 
    p_attr_id   IN SFB_ATTRIBUTES.ATTR_ID%TYPE /*PK*/, 
    p_attr_type IN SFB_ATTRIBUTES.ATTR_TYPE%TYPE );
 
  PROCEDURE set_attr_remark ( 
    p_attr_id     IN SFB_ATTRIBUTES.ATTR_ID%TYPE /*PK*/, 
    p_attr_remark IN SFB_ATTRIBUTES.ATTR_REMARK%TYPE );
 
  PROCEDURE set_attr_valid_from ( 
    p_attr_id         IN SFB_ATTRIBUTES.ATTR_ID%TYPE /*PK*/, 
    p_attr_valid_from IN SFB_ATTRIBUTES.ATTR_VALID_FROM%TYPE );
 
  PROCEDURE set_attr_valid_to ( 
    p_attr_id       IN SFB_ATTRIBUTES.ATTR_ID%TYPE /*PK*/, 
    p_attr_valid_to IN SFB_ATTRIBUTES.ATTR_VALID_TO%TYPE );
 
  PROCEDURE set_attr_deleted_yn ( 
    p_attr_id         IN SFB_ATTRIBUTES.ATTR_ID%TYPE /*PK*/, 
    p_attr_deleted_yn IN SFB_ATTRIBUTES.ATTR_DELETED_YN%TYPE );
 
  FUNCTION get_default_row 
  RETURN SFB_ATTRIBUTES%ROWTYPE; 
  /* 
  Helper to get a prepopulated row with the table defaults from the dictionary. 
  */
 
END SFB_ATTRIBUTES_PKG;
/

create or replace PACKAGE BODY       SFB_ATTRIBUTES_PKG IS 
  /* 
  This is the API for the table SFB_ATTRIBUTES. 
  - generator: OM_TAPIGEN 
  - generator_version: 0.6.3 
  - generator_action: COMPILE_API 
  - generated_at: 2024-07-12 14:58:38 
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
    p_attr_id IN SFB_ATTRIBUTES.ATTR_ID%TYPE /*PK*/ ) 
  RETURN BOOLEAN 
  IS 
    v_return BOOLEAN := FALSE; 
    v_dummy  PLS_INTEGER; 
    CURSOR   cur_bool IS 
      SELECT 1 FROM SFB_ATTRIBUTES 
      WHERE 
        ATTR_ID = p_attr_id; 
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
    p_attr_id IN SFB_ATTRIBUTES.ATTR_ID%TYPE /*PK*/ ) 
  RETURN VARCHAR2 
  IS 
  BEGIN 
    RETURN 
      CASE 
        WHEN row_exists( 
          p_attr_id => p_attr_id ) 
        THEN 'Y' 
        ELSE 'N' 
      END; 
  END;
 
  FUNCTION get_pk_by_unique_cols ( 
    p_attr_name IN SFB_ATTRIBUTES.ATTR_NAME%TYPE /*UK*/ ) 
  RETURN SFB_ATTRIBUTES.ATTR_ID%TYPE 
  IS 
    v_return SFB_ATTRIBUTES.ATTR_ID%TYPE; 
  BEGIN 
    v_return := read_row ( p_attr_name => p_attr_name ).ATTR_ID; 
    RETURN v_return; 
  END get_pk_by_unique_cols;
 
  FUNCTION create_row ( 
    p_attr_id           IN SFB_ATTRIBUTES.ATTR_ID%TYPE             DEFAULT "SFB_ATTR_SEQ"."NEXTVAL" /*PK*/,
    p_attr_name         IN SFB_ATTRIBUTES.ATTR_NAME%TYPE            /*UK*/,
    p_attr_return_value IN SFB_ATTRIBUTES.ATTR_RETURN_VALUE%TYPE   ,
    p_attr_type         IN SFB_ATTRIBUTES.ATTR_TYPE%TYPE           DEFAULT 'type',
    p_attr_remark       IN SFB_ATTRIBUTES.ATTR_REMARK%TYPE         DEFAULT NULL,
    p_attr_valid_from   IN SFB_ATTRIBUTES.ATTR_VALID_FROM%TYPE     DEFAULT sysdate ,
    p_attr_valid_to     IN SFB_ATTRIBUTES.ATTR_VALID_TO%TYPE       DEFAULT TO_DATE('31.12.2999', 'DD.MM.YYYY') ,
    p_attr_deleted_yn   IN SFB_ATTRIBUTES.ATTR_DELETED_YN%TYPE     DEFAULT 'NO'  ) 
  RETURN SFB_ATTRIBUTES.ATTR_ID%TYPE 
  IS 
    v_return SFB_ATTRIBUTES.ATTR_ID%TYPE;  
  BEGIN 
    INSERT INTO SFB_ATTRIBUTES ( 
      ATTR_ID /*PK*/,
      ATTR_NAME /*UK*/,
      ATTR_RETURN_VALUE,
      ATTR_TYPE,
      ATTR_REMARK,
      ATTR_CREATED,
      ATTR_CREATED_BY,
      ATTR_UPDATED,
      ATTR_UPDATED_BY,
      ATTR_VALID_FROM,
      ATTR_VALID_TO,
      ATTR_DELETED_YN ) 
    VALUES ( 
      p_attr_id,
      p_attr_name,
      p_attr_return_value,
      p_attr_type,
      p_attr_remark,
      systimestamp,
      coalesce(sys_context('apex$session','app_user'), sys_context('userenv','os_user'), sys_context('userenv','session_user')),
      systimestamp,
      coalesce(sys_context('apex$session','app_user'), sys_context('userenv','os_user'), sys_context('userenv','session_user')),
      p_attr_valid_from,
      p_attr_valid_to,
      p_attr_deleted_yn ) 
    RETURN  
      ATTR_ID 
    INTO 
      v_return; 
    RETURN v_return; 
  END create_row;
 
  PROCEDURE create_row ( 
    p_attr_id           IN SFB_ATTRIBUTES.ATTR_ID%TYPE             DEFAULT "SFB_ATTR_SEQ"."NEXTVAL" /*PK*/,
    p_attr_name         IN SFB_ATTRIBUTES.ATTR_NAME%TYPE            /*UK*/,
    p_attr_return_value IN SFB_ATTRIBUTES.ATTR_RETURN_VALUE%TYPE   ,
    p_attr_type         IN SFB_ATTRIBUTES.ATTR_TYPE%TYPE           DEFAULT 'type',
    p_attr_remark       IN SFB_ATTRIBUTES.ATTR_REMARK%TYPE         DEFAULT NULL,
    p_attr_valid_from   IN SFB_ATTRIBUTES.ATTR_VALID_FROM%TYPE     DEFAULT sysdate ,
    p_attr_valid_to     IN SFB_ATTRIBUTES.ATTR_VALID_TO%TYPE       DEFAULT TO_DATE('31.12.2999', 'DD.MM.YYYY') ,
    p_attr_deleted_yn   IN SFB_ATTRIBUTES.ATTR_DELETED_YN%TYPE     DEFAULT 'NO'  ) 
  IS 
  BEGIN 
    INSERT INTO SFB_ATTRIBUTES ( 
      ATTR_ID /*PK*/,
      ATTR_NAME /*UK*/,
      ATTR_RETURN_VALUE,
      ATTR_TYPE,
      ATTR_REMARK,
      ATTR_CREATED,
      ATTR_CREATED_BY,
      ATTR_UPDATED,
      ATTR_UPDATED_BY,
      ATTR_VALID_FROM,
      ATTR_VALID_TO,
      ATTR_DELETED_YN ) 
    VALUES ( 
      p_attr_id,
      p_attr_name,
      p_attr_return_value,
      p_attr_type,
      p_attr_remark,
      systimestamp,
      coalesce(sys_context('apex$session','app_user'), sys_context('userenv','os_user'), sys_context('userenv','session_user')),
      systimestamp,
      coalesce(sys_context('apex$session','app_user'), sys_context('userenv','os_user'), sys_context('userenv','session_user')),
      p_attr_valid_from,
      p_attr_valid_to,
      p_attr_deleted_yn ); 
  END create_row;
 
  FUNCTION create_row ( 
    p_row IN SFB_ATTRIBUTES%ROWTYPE ) 
  RETURN SFB_ATTRIBUTES.ATTR_ID%TYPE 
  IS 
  BEGIN 
    RETURN create_row ( 
      p_attr_id           => p_row.ATTR_ID /*PK*/,
      p_attr_name         => p_row.ATTR_NAME /*UK*/,
      p_attr_return_value => p_row.ATTR_RETURN_VALUE,
      p_attr_type         => p_row.ATTR_TYPE,
      p_attr_remark       => p_row.ATTR_REMARK,
      p_attr_valid_from   => p_row.ATTR_VALID_FROM,
      p_attr_valid_to     => p_row.ATTR_VALID_TO,
      p_attr_deleted_yn   => p_row.ATTR_DELETED_YN ); 
  END create_row;
 
  PROCEDURE create_row ( 
    p_row IN SFB_ATTRIBUTES%ROWTYPE ) 
  IS 
  BEGIN 
    create_row ( 
      p_attr_id           => p_row.ATTR_ID /*PK*/,
      p_attr_name         => p_row.ATTR_NAME /*UK*/,
      p_attr_return_value => p_row.ATTR_RETURN_VALUE,
      p_attr_type         => p_row.ATTR_TYPE,
      p_attr_remark       => p_row.ATTR_REMARK,
      p_attr_valid_from   => p_row.ATTR_VALID_FROM,
      p_attr_valid_to     => p_row.ATTR_VALID_TO,
      p_attr_deleted_yn   => p_row.ATTR_DELETED_YN ); 
  END create_row;
 

 
  
  FUNCTION read_row ( 
    p_attr_id IN SFB_ATTRIBUTES.ATTR_ID%TYPE /*PK*/ ) 
  RETURN SFB_ATTRIBUTES%ROWTYPE 
  IS 
    v_row SFB_ATTRIBUTES%ROWTYPE; 
    CURSOR cur_row IS 
      SELECT * FROM SFB_ATTRIBUTES 
      WHERE 
        ATTR_ID = p_attr_id; 
  BEGIN 
    OPEN cur_row; 
    FETCH cur_row INTO v_row; 
    CLOSE cur_row; 
    RETURN v_row; 
  END read_row;
 
  FUNCTION read_row ( 
    p_attr_name IN SFB_ATTRIBUTES.ATTR_NAME%TYPE /*UK*/ ) 
  RETURN SFB_ATTRIBUTES%ROWTYPE 
  IS 
    v_row SFB_ATTRIBUTES%ROWTYPE; 
    CURSOR cur_row IS 
      SELECT * 
        FROM SFB_ATTRIBUTES 
       WHERE ATTR_NAME = p_attr_name; 
  BEGIN 
    OPEN cur_row; 
    FETCH cur_row INTO v_row; 
    CLOSE cur_row; 
    RETURN v_row; 
  END;
 
  PROCEDURE read_row ( 
    p_attr_id           IN            SFB_ATTRIBUTES.ATTR_ID%TYPE /*PK*/,
    p_attr_name            OUT NOCOPY SFB_ATTRIBUTES.ATTR_NAME%TYPE /*UK*/,
    p_attr_return_value    OUT NOCOPY SFB_ATTRIBUTES.ATTR_RETURN_VALUE%TYPE,
    p_attr_type            OUT NOCOPY SFB_ATTRIBUTES.ATTR_TYPE%TYPE,
    p_attr_remark          OUT NOCOPY SFB_ATTRIBUTES.ATTR_REMARK%TYPE,
    p_attr_created         OUT NOCOPY SFB_ATTRIBUTES.ATTR_CREATED%TYPE,
    p_attr_created_by      OUT NOCOPY SFB_ATTRIBUTES.ATTR_CREATED_BY%TYPE,
    p_attr_updated         OUT NOCOPY SFB_ATTRIBUTES.ATTR_UPDATED%TYPE,
    p_attr_updated_by      OUT NOCOPY SFB_ATTRIBUTES.ATTR_UPDATED_BY%TYPE,
    p_attr_valid_from      OUT NOCOPY SFB_ATTRIBUTES.ATTR_VALID_FROM%TYPE,
    p_attr_valid_to        OUT NOCOPY SFB_ATTRIBUTES.ATTR_VALID_TO%TYPE,
    p_attr_deleted_yn      OUT NOCOPY SFB_ATTRIBUTES.ATTR_DELETED_YN%TYPE ) 
  IS 
    v_row SFB_ATTRIBUTES%ROWTYPE; 
  BEGIN 
    v_row := read_row ( 
      p_attr_id => p_attr_id ); 
    p_attr_name         := v_row.ATTR_NAME; 
    p_attr_return_value := v_row.ATTR_RETURN_VALUE; 
    p_attr_type         := v_row.ATTR_TYPE; 
    p_attr_remark       := v_row.ATTR_REMARK; 
    p_attr_created      := v_row.ATTR_CREATED; 
    p_attr_created_by   := v_row.ATTR_CREATED_BY; 
    p_attr_updated      := v_row.ATTR_UPDATED; 
    p_attr_updated_by   := v_row.ATTR_UPDATED_BY; 
    p_attr_valid_from   := v_row.ATTR_VALID_FROM; 
    p_attr_valid_to     := v_row.ATTR_VALID_TO; 
    p_attr_deleted_yn   := v_row.ATTR_DELETED_YN;  
  END read_row;
 
  
  FUNCTION update_row ( 
    p_attr_id           IN SFB_ATTRIBUTES.ATTR_ID%TYPE /*PK*/,
    p_attr_name         IN SFB_ATTRIBUTES.ATTR_NAME%TYPE /*UK*/,
    p_attr_return_value IN SFB_ATTRIBUTES.ATTR_RETURN_VALUE%TYPE,
    p_attr_type         IN SFB_ATTRIBUTES.ATTR_TYPE%TYPE,
    p_attr_remark       IN SFB_ATTRIBUTES.ATTR_REMARK%TYPE,
    p_attr_valid_from   IN SFB_ATTRIBUTES.ATTR_VALID_FROM%TYPE,
    p_attr_valid_to     IN SFB_ATTRIBUTES.ATTR_VALID_TO%TYPE,
    p_attr_deleted_yn   IN SFB_ATTRIBUTES.ATTR_DELETED_YN%TYPE ) 
  RETURN SFB_ATTRIBUTES.ATTR_ID%TYPE 
  IS 
    v_return SFB_ATTRIBUTES.ATTR_ID%TYPE;  
  BEGIN 
    UPDATE 
      SFB_ATTRIBUTES 
    SET 
      ATTR_NAME         = p_attr_name /*UK*/,
      ATTR_RETURN_VALUE = p_attr_return_value,
      ATTR_TYPE         = p_attr_type,
      ATTR_REMARK       = p_attr_remark,
      ATTR_UPDATED      = systimestamp,
      ATTR_UPDATED_BY   = coalesce(sys_context('apex$session','app_user'), sys_context('userenv','os_user'), sys_context('userenv','session_user')),
      ATTR_VALID_FROM   = p_attr_valid_from,
      ATTR_VALID_TO     = p_attr_valid_to,
      ATTR_DELETED_YN   = p_attr_deleted_yn 
    WHERE 
      ATTR_ID = p_attr_id 
    RETURN  
      ATTR_ID 
    INTO 
      v_return; 
    RETURN v_return; 
  END update_row;
 
  PROCEDURE update_row ( 
    p_attr_id           IN SFB_ATTRIBUTES.ATTR_ID%TYPE /*PK*/,
    p_attr_name         IN SFB_ATTRIBUTES.ATTR_NAME%TYPE /*UK*/,
    p_attr_return_value IN SFB_ATTRIBUTES.ATTR_RETURN_VALUE%TYPE,
    p_attr_type         IN SFB_ATTRIBUTES.ATTR_TYPE%TYPE,
    p_attr_remark       IN SFB_ATTRIBUTES.ATTR_REMARK%TYPE,
    p_attr_valid_from   IN SFB_ATTRIBUTES.ATTR_VALID_FROM%TYPE,
    p_attr_valid_to     IN SFB_ATTRIBUTES.ATTR_VALID_TO%TYPE,
    p_attr_deleted_yn   IN SFB_ATTRIBUTES.ATTR_DELETED_YN%TYPE ) 
  IS 
  BEGIN 
    UPDATE 
      SFB_ATTRIBUTES 
    SET 
      ATTR_NAME         = p_attr_name /*UK*/,
      ATTR_RETURN_VALUE = p_attr_return_value,
      ATTR_TYPE         = p_attr_type,
      ATTR_REMARK       = p_attr_remark,
      ATTR_UPDATED      = systimestamp,
      ATTR_UPDATED_BY   = coalesce(sys_context('apex$session','app_user'), sys_context('userenv','os_user'), sys_context('userenv','session_user')),
      ATTR_VALID_FROM   = p_attr_valid_from,
      ATTR_VALID_TO     = p_attr_valid_to,
      ATTR_DELETED_YN   = p_attr_deleted_yn 
    WHERE 
      ATTR_ID = p_attr_id; 
  END update_row;
 
  FUNCTION update_row ( 
    p_row IN SFB_ATTRIBUTES%ROWTYPE ) 
  RETURN SFB_ATTRIBUTES.ATTR_ID%TYPE 
  IS 
  BEGIN 
    RETURN update_row ( 
      p_attr_id           => p_row.ATTR_ID /*PK*/,
      p_attr_name         => p_row.ATTR_NAME /*UK*/,
      p_attr_return_value => p_row.ATTR_RETURN_VALUE,
      p_attr_type         => p_row.ATTR_TYPE,
      p_attr_remark       => p_row.ATTR_REMARK,
      p_attr_valid_from   => p_row.ATTR_VALID_FROM,
      p_attr_valid_to     => p_row.ATTR_VALID_TO,
      p_attr_deleted_yn   => p_row.ATTR_DELETED_YN ); 
  END update_row;
 
  PROCEDURE update_row ( 
    p_row IN SFB_ATTRIBUTES%ROWTYPE ) 
  IS 
  BEGIN 
    update_row ( 
      p_attr_id           => p_row.ATTR_ID /*PK*/,
      p_attr_name         => p_row.ATTR_NAME /*UK*/,
      p_attr_return_value => p_row.ATTR_RETURN_VALUE,
      p_attr_type         => p_row.ATTR_TYPE,
      p_attr_remark       => p_row.ATTR_REMARK,
      p_attr_valid_from   => p_row.ATTR_VALID_FROM,
      p_attr_valid_to     => p_row.ATTR_VALID_TO,
      p_attr_deleted_yn   => p_row.ATTR_DELETED_YN ); 
  END update_row;
 
 
 
  PROCEDURE delete_row ( 
    p_attr_id IN SFB_ATTRIBUTES.ATTR_ID%TYPE /*PK*/ ) 
  IS 
  BEGIN 
    DELETE FROM SFB_ATTRIBUTES 
    WHERE 
      ATTR_ID = p_attr_id; 
  END delete_row;
 
 
 
  FUNCTION create_or_update_row ( 
    p_attr_id           IN SFB_ATTRIBUTES.ATTR_ID%TYPE /*PK*/,
    p_attr_name         IN SFB_ATTRIBUTES.ATTR_NAME%TYPE /*UK*/,
    p_attr_return_value IN SFB_ATTRIBUTES.ATTR_RETURN_VALUE%TYPE,
    p_attr_type         IN SFB_ATTRIBUTES.ATTR_TYPE%TYPE,
    p_attr_remark       IN SFB_ATTRIBUTES.ATTR_REMARK%TYPE,
    p_attr_valid_from   IN SFB_ATTRIBUTES.ATTR_VALID_FROM%TYPE,
    p_attr_valid_to     IN SFB_ATTRIBUTES.ATTR_VALID_TO%TYPE,
    p_attr_deleted_yn   IN SFB_ATTRIBUTES.ATTR_DELETED_YN%TYPE ) 
  RETURN SFB_ATTRIBUTES.ATTR_ID%TYPE 
  IS 
  BEGIN 
    IF row_exists( 
      p_attr_id => p_attr_id 
    ) 
    THEN 
      RETURN update_row ( 
        p_attr_id           => p_attr_id /*PK*/,
        p_attr_name         => p_attr_name /*UK*/,
        p_attr_return_value => p_attr_return_value,
        p_attr_type         => p_attr_type,
        p_attr_remark       => p_attr_remark,
        p_attr_valid_from   => p_attr_valid_from,
        p_attr_valid_to     => p_attr_valid_to,
        p_attr_deleted_yn   => p_attr_deleted_yn ); 
    ELSE 
      RETURN create_row ( 
        p_attr_id           => p_attr_id /*PK*/,
        p_attr_name         => p_attr_name /*UK*/,
        p_attr_return_value => p_attr_return_value,
        p_attr_type         => p_attr_type,
        p_attr_remark       => p_attr_remark,
        p_attr_valid_from   => p_attr_valid_from,
        p_attr_valid_to     => p_attr_valid_to,
        p_attr_deleted_yn   => p_attr_deleted_yn ); 
    END IF; 
  END create_or_update_row;
 
  PROCEDURE create_or_update_row ( 
    p_attr_id           IN SFB_ATTRIBUTES.ATTR_ID%TYPE /*PK*/,
    p_attr_name         IN SFB_ATTRIBUTES.ATTR_NAME%TYPE /*UK*/,
    p_attr_return_value IN SFB_ATTRIBUTES.ATTR_RETURN_VALUE%TYPE,
    p_attr_type         IN SFB_ATTRIBUTES.ATTR_TYPE%TYPE,
    p_attr_remark       IN SFB_ATTRIBUTES.ATTR_REMARK%TYPE,
    p_attr_valid_from   IN SFB_ATTRIBUTES.ATTR_VALID_FROM%TYPE,
    p_attr_valid_to     IN SFB_ATTRIBUTES.ATTR_VALID_TO%TYPE,
    p_attr_deleted_yn   IN SFB_ATTRIBUTES.ATTR_DELETED_YN%TYPE ) 
  IS 
  BEGIN 
    IF row_exists( 
      p_attr_id => p_attr_id 
    ) 
    THEN 
      update_row ( 
        p_attr_id           => p_attr_id /*PK*/,
        p_attr_name         => p_attr_name /*UK*/,
        p_attr_return_value => p_attr_return_value,
        p_attr_type         => p_attr_type,
        p_attr_remark       => p_attr_remark,
        p_attr_valid_from   => p_attr_valid_from,
        p_attr_valid_to     => p_attr_valid_to,
        p_attr_deleted_yn   => p_attr_deleted_yn ); 
    ELSE 
      create_row ( 
        p_attr_id           => p_attr_id /*PK*/,
        p_attr_name         => p_attr_name /*UK*/,
        p_attr_return_value => p_attr_return_value,
        p_attr_type         => p_attr_type,
        p_attr_remark       => p_attr_remark,
        p_attr_valid_from   => p_attr_valid_from,
        p_attr_valid_to     => p_attr_valid_to,
        p_attr_deleted_yn   => p_attr_deleted_yn ); 
    END IF; 
  END create_or_update_row;
 
  FUNCTION create_or_update_row ( 
    p_row IN SFB_ATTRIBUTES%ROWTYPE ) 
  RETURN SFB_ATTRIBUTES.ATTR_ID%TYPE 
  IS 
  BEGIN 
    IF row_exists( 
      p_attr_id => p_row.ATTR_ID 
    ) 
    THEN 
      RETURN update_row ( 
        p_attr_id           => p_row.ATTR_ID /*PK*/,
        p_attr_name         => p_row.ATTR_NAME /*UK*/,
        p_attr_return_value => p_row.ATTR_RETURN_VALUE,
        p_attr_type         => p_row.ATTR_TYPE,
        p_attr_remark       => p_row.ATTR_REMARK,
        p_attr_valid_from   => p_row.ATTR_VALID_FROM,
        p_attr_valid_to     => p_row.ATTR_VALID_TO,
        p_attr_deleted_yn   => p_row.ATTR_DELETED_YN ); 
    ELSE 
      RETURN create_row ( 
        p_attr_id           => p_row.ATTR_ID /*PK*/,
        p_attr_name         => p_row.ATTR_NAME /*UK*/,
        p_attr_return_value => p_row.ATTR_RETURN_VALUE,
        p_attr_type         => p_row.ATTR_TYPE,
        p_attr_remark       => p_row.ATTR_REMARK,
        p_attr_valid_from   => p_row.ATTR_VALID_FROM,
        p_attr_valid_to     => p_row.ATTR_VALID_TO,
        p_attr_deleted_yn   => p_row.ATTR_DELETED_YN ); 
    END IF; 
  END create_or_update_row;
 
  PROCEDURE create_or_update_row ( 
    p_row IN SFB_ATTRIBUTES%ROWTYPE ) 
  IS 
  BEGIN 
    IF row_exists( 
      p_attr_id => p_row.ATTR_ID 
    ) 
    THEN 
      update_row ( 
        p_attr_id           => p_row.ATTR_ID /*PK*/,
        p_attr_name         => p_row.ATTR_NAME /*UK*/,
        p_attr_return_value => p_row.ATTR_RETURN_VALUE,
        p_attr_type         => p_row.ATTR_TYPE,
        p_attr_remark       => p_row.ATTR_REMARK,
        p_attr_valid_from   => p_row.ATTR_VALID_FROM,
        p_attr_valid_to     => p_row.ATTR_VALID_TO,
        p_attr_deleted_yn   => p_row.ATTR_DELETED_YN ); 
    ELSE 
      create_row ( 
        p_attr_id           => p_row.ATTR_ID /*PK*/,
        p_attr_name         => p_row.ATTR_NAME /*UK*/,
        p_attr_return_value => p_row.ATTR_RETURN_VALUE,
        p_attr_type         => p_row.ATTR_TYPE,
        p_attr_remark       => p_row.ATTR_REMARK,
        p_attr_valid_from   => p_row.ATTR_VALID_FROM,
        p_attr_valid_to     => p_row.ATTR_VALID_TO,
        p_attr_deleted_yn   => p_row.ATTR_DELETED_YN ); 
    END IF; 
  END create_or_update_row;
 
  FUNCTION get_attr_name ( 
    p_attr_id IN SFB_ATTRIBUTES.ATTR_ID%TYPE /*PK*/ ) 
  RETURN SFB_ATTRIBUTES.ATTR_NAME%TYPE 
  IS 
  BEGIN 
    RETURN read_row ( 
      p_attr_id => p_attr_id ).ATTR_NAME; 
  END get_attr_name;
 
  FUNCTION get_attr_return_value ( 
    p_attr_id IN SFB_ATTRIBUTES.ATTR_ID%TYPE /*PK*/ ) 
  RETURN SFB_ATTRIBUTES.ATTR_RETURN_VALUE%TYPE 
  IS 
  BEGIN 
    RETURN read_row ( 
      p_attr_id => p_attr_id ).ATTR_RETURN_VALUE; 
  END get_attr_return_value;
 
  FUNCTION get_attr_type ( 
    p_attr_id IN SFB_ATTRIBUTES.ATTR_ID%TYPE /*PK*/ ) 
  RETURN SFB_ATTRIBUTES.ATTR_TYPE%TYPE 
  IS 
  BEGIN 
    RETURN read_row ( 
      p_attr_id => p_attr_id ).ATTR_TYPE; 
  END get_attr_type;
 
  FUNCTION get_attr_remark ( 
    p_attr_id IN SFB_ATTRIBUTES.ATTR_ID%TYPE /*PK*/ ) 
  RETURN SFB_ATTRIBUTES.ATTR_REMARK%TYPE 
  IS 
  BEGIN 
    RETURN read_row ( 
      p_attr_id => p_attr_id ).ATTR_REMARK; 
  END get_attr_remark;
 
  FUNCTION get_attr_created ( 
    p_attr_id IN SFB_ATTRIBUTES.ATTR_ID%TYPE /*PK*/ ) 
  RETURN SFB_ATTRIBUTES.ATTR_CREATED%TYPE 
  IS 
  BEGIN 
    RETURN read_row ( 
      p_attr_id => p_attr_id ).ATTR_CREATED; 
  END get_attr_created;
 
  FUNCTION get_attr_created_by ( 
    p_attr_id IN SFB_ATTRIBUTES.ATTR_ID%TYPE /*PK*/ ) 
  RETURN SFB_ATTRIBUTES.ATTR_CREATED_BY%TYPE 
  IS 
  BEGIN 
    RETURN read_row ( 
      p_attr_id => p_attr_id ).ATTR_CREATED_BY; 
  END get_attr_created_by;
 
  FUNCTION get_attr_updated ( 
    p_attr_id IN SFB_ATTRIBUTES.ATTR_ID%TYPE /*PK*/ ) 
  RETURN SFB_ATTRIBUTES.ATTR_UPDATED%TYPE 
  IS 
  BEGIN 
    RETURN read_row ( 
      p_attr_id => p_attr_id ).ATTR_UPDATED; 
  END get_attr_updated;
 
  FUNCTION get_attr_updated_by ( 
    p_attr_id IN SFB_ATTRIBUTES.ATTR_ID%TYPE /*PK*/ ) 
  RETURN SFB_ATTRIBUTES.ATTR_UPDATED_BY%TYPE 
  IS 
  BEGIN 
    RETURN read_row ( 
      p_attr_id => p_attr_id ).ATTR_UPDATED_BY; 
  END get_attr_updated_by;
 
  FUNCTION get_attr_valid_from ( 
    p_attr_id IN SFB_ATTRIBUTES.ATTR_ID%TYPE /*PK*/ ) 
  RETURN SFB_ATTRIBUTES.ATTR_VALID_FROM%TYPE 
  IS 
  BEGIN 
    RETURN read_row ( 
      p_attr_id => p_attr_id ).ATTR_VALID_FROM; 
  END get_attr_valid_from;
 
  FUNCTION get_attr_valid_to ( 
    p_attr_id IN SFB_ATTRIBUTES.ATTR_ID%TYPE /*PK*/ ) 
  RETURN SFB_ATTRIBUTES.ATTR_VALID_TO%TYPE 
  IS 
  BEGIN 
    RETURN read_row ( 
      p_attr_id => p_attr_id ).ATTR_VALID_TO; 
  END get_attr_valid_to;
 
  FUNCTION get_attr_deleted_yn ( 
    p_attr_id IN SFB_ATTRIBUTES.ATTR_ID%TYPE /*PK*/ ) 
  RETURN SFB_ATTRIBUTES.ATTR_DELETED_YN%TYPE 
  IS 
  BEGIN 
    RETURN read_row ( 
      p_attr_id => p_attr_id ).ATTR_DELETED_YN; 
  END get_attr_deleted_yn;
 
  PROCEDURE set_attr_name ( 
    p_attr_id   IN SFB_ATTRIBUTES.ATTR_ID%TYPE /*PK*/, 
    p_attr_name IN SFB_ATTRIBUTES.ATTR_NAME%TYPE ) 
  IS 
  BEGIN 
    UPDATE 
      SFB_ATTRIBUTES 
    SET 
      ATTR_NAME       = p_attr_name /*UK*/,
      ATTR_UPDATED    = systimestamp,
      ATTR_UPDATED_BY = coalesce(sys_context('apex$session','app_user'), sys_context('userenv','os_user'), sys_context('userenv','session_user')) 
    WHERE 
      ATTR_ID = p_attr_id; 
  END set_attr_name;
 
  PROCEDURE set_attr_return_value ( 
    p_attr_id           IN SFB_ATTRIBUTES.ATTR_ID%TYPE /*PK*/, 
    p_attr_return_value IN SFB_ATTRIBUTES.ATTR_RETURN_VALUE%TYPE ) 
  IS 
  BEGIN 
    UPDATE 
      SFB_ATTRIBUTES 
    SET 
      ATTR_RETURN_VALUE = p_attr_return_value,
      ATTR_UPDATED      = systimestamp,
      ATTR_UPDATED_BY   = coalesce(sys_context('apex$session','app_user'), sys_context('userenv','os_user'), sys_context('userenv','session_user')) 
    WHERE 
      ATTR_ID = p_attr_id; 
  END set_attr_return_value;
 
  PROCEDURE set_attr_type ( 
    p_attr_id   IN SFB_ATTRIBUTES.ATTR_ID%TYPE /*PK*/, 
    p_attr_type IN SFB_ATTRIBUTES.ATTR_TYPE%TYPE ) 
  IS 
  BEGIN 
    UPDATE 
      SFB_ATTRIBUTES 
    SET 
      ATTR_TYPE       = p_attr_type,
      ATTR_UPDATED    = systimestamp,
      ATTR_UPDATED_BY = coalesce(sys_context('apex$session','app_user'), sys_context('userenv','os_user'), sys_context('userenv','session_user')) 
    WHERE 
      ATTR_ID = p_attr_id; 
  END set_attr_type;
 
  PROCEDURE set_attr_remark ( 
    p_attr_id     IN SFB_ATTRIBUTES.ATTR_ID%TYPE /*PK*/, 
    p_attr_remark IN SFB_ATTRIBUTES.ATTR_REMARK%TYPE ) 
  IS 
  BEGIN 
    UPDATE 
      SFB_ATTRIBUTES 
    SET 
      ATTR_REMARK     = p_attr_remark,
      ATTR_UPDATED    = systimestamp,
      ATTR_UPDATED_BY = coalesce(sys_context('apex$session','app_user'), sys_context('userenv','os_user'), sys_context('userenv','session_user')) 
    WHERE 
      ATTR_ID = p_attr_id; 
  END set_attr_remark;
 
  PROCEDURE set_attr_valid_from ( 
    p_attr_id         IN SFB_ATTRIBUTES.ATTR_ID%TYPE /*PK*/, 
    p_attr_valid_from IN SFB_ATTRIBUTES.ATTR_VALID_FROM%TYPE ) 
  IS 
  BEGIN 
    UPDATE 
      SFB_ATTRIBUTES 
    SET 
      ATTR_UPDATED    = systimestamp,
      ATTR_UPDATED_BY = coalesce(sys_context('apex$session','app_user'), sys_context('userenv','os_user'), sys_context('userenv','session_user')),
      ATTR_VALID_FROM = p_attr_valid_from 
    WHERE 
      ATTR_ID = p_attr_id; 
  END set_attr_valid_from;
 
  PROCEDURE set_attr_valid_to ( 
    p_attr_id       IN SFB_ATTRIBUTES.ATTR_ID%TYPE /*PK*/, 
    p_attr_valid_to IN SFB_ATTRIBUTES.ATTR_VALID_TO%TYPE ) 
  IS 
  BEGIN 
    UPDATE 
      SFB_ATTRIBUTES 
    SET 
      ATTR_UPDATED    = systimestamp,
      ATTR_UPDATED_BY = coalesce(sys_context('apex$session','app_user'), sys_context('userenv','os_user'), sys_context('userenv','session_user')),
      ATTR_VALID_TO   = p_attr_valid_to 
    WHERE 
      ATTR_ID = p_attr_id; 
  END set_attr_valid_to;
 
  PROCEDURE set_attr_deleted_yn ( 
    p_attr_id         IN SFB_ATTRIBUTES.ATTR_ID%TYPE /*PK*/, 
    p_attr_deleted_yn IN SFB_ATTRIBUTES.ATTR_DELETED_YN%TYPE ) 
  IS 
  BEGIN 
    UPDATE 
      SFB_ATTRIBUTES 
    SET 
      ATTR_UPDATED    = systimestamp,
      ATTR_UPDATED_BY = coalesce(sys_context('apex$session','app_user'), sys_context('userenv','os_user'), sys_context('userenv','session_user')),
      ATTR_DELETED_YN = p_attr_deleted_yn 
    WHERE 
      ATTR_ID = p_attr_id; 
  END set_attr_deleted_yn;
 
  FUNCTION get_default_row 
  RETURN SFB_ATTRIBUTES%ROWTYPE 
  IS 
    v_row SFB_ATTRIBUTES%ROWTYPE; 
  BEGIN 
    v_row.ATTR_ID         := "SFB_ATTR_SEQ"."NEXTVAL" /*PK*/;
    v_row.ATTR_TYPE       := 'type';
    v_row.ATTR_CREATED    := sysdate ;
    v_row.ATTR_CREATED_BY := ( coalesce(sys_context('apex$session', 'app_user'),  
                                                           sys_context('userenv', 'os_user'),  
                                                           sys_context('userenv', 'session_user')) ) ;
    v_row.ATTR_UPDATED    := sysdate ;
    v_row.ATTR_UPDATED_BY := ( coalesce(sys_context('apex$session', 'app_user'),  
                                                           sys_context('userenv', 'os_user'),  
                                                           sys_context('userenv', 'session_user')) ) ;
    v_row.ATTR_VALID_FROM := sysdate ;
    v_row.ATTR_VALID_TO   := TO_DATE('31.12.2999', 'DD.MM.YYYY') ;
    v_row.ATTR_DELETED_YN := 'NO' ; 
    RETURN v_row; 
  END get_default_row;
 
END SFB_ATTRIBUTES_PKG;
/