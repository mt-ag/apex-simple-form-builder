create or replace PACKAGE       SFB_HELP_ATTRIBUTES_PROPERTIES_REL_PKG IS 
  /* 
  This is the API for the table SFB_HELP_ATTRIBUTES_PROPERTIES_REL. 
 
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
    p_table_name="SFB_HELP_ATTRIBUTES_PROPERTIES_REL" 
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
    p_dml_view_name="SFB_HELP_ATTRIBUTES_PROPERTIES_REL_DML_V" 
    p_dml_view_trigger_name="SFB_HELP_ATTRIBUTES_PROPERTIES_REL_IOIUD" 
    p_enable_one_to_one_view="FALSE" 
    p_one_to_one_view_name="SFB_HELP_ATTRIBUTES_PROPERTIES_REL_V" 
    p_api_name="SFB_HELP_ATTRIBUTES_PROPERTIES_REL_PKG" 
    p_sequence_name="" 
    p_exclude_column_list="" 
    p_audit_column_mappings="created=#PREFIX#_CREATED, created_by=#PREFIX#_CREATED_BY, updated=#PREFIX#_UPDATED, updated_by=#PREFIX#_UPDATED_BY" 
    p_audit_user_expression="coalesce(sys_context('apex$session','app_user'), sys_context('userenv','os_user'), sys_context('userenv','session_user'))" 
    p_row_version_column_mapping="" 
    p_tenant_column_mapping="" 
    p_enable_custom_defaults="FALSE" 
    p_custom_default_values=""/> 
  */
 
  TYPE t_strong_ref_cursor IS REF CURSOR RETURN SFB_HELP_ATTRIBUTES_PROPERTIES_REL%ROWTYPE;
 
  FUNCTION bulk_is_complete 
  RETURN BOOLEAN;
 
  PROCEDURE set_bulk_limit ( 
    p_bulk_limit IN PLS_INTEGER );
 
  FUNCTION get_bulk_limit 
  RETURN PLS_INTEGER;
 
  FUNCTION row_exists ( 
    p_heap_id IN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_ID%TYPE /*PK*/ ) 
  RETURN BOOLEAN;
 
  FUNCTION row_exists_yn ( 
    p_heap_id IN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_ID%TYPE /*PK*/ ) 
  RETURN VARCHAR2;
 
  FUNCTION create_row ( 
    p_heap_id         IN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_ID%TYPE           DEFAULT "SFB_HEAP_SEQ"."NEXTVAL" /*PK*/,
    p_heap_prop_fk    IN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_PROP_FK%TYPE      ,
    p_heap_attr_fk    IN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_ATTR_FK%TYPE      ,
    p_heap_remark     IN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_REMARK%TYPE       DEFAULT NULL,
    p_heap_valid_from IN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_VALID_FROM%TYPE   DEFAULT sysdate ,
    p_heap_valid_to   IN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_VALID_TO%TYPE     DEFAULT TO_DATE('31.12.2999', 'DD.MM.YYYY') ,
    p_heap_deleted_yn IN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_DELETED_YN%TYPE   DEFAULT 'NO'  ) 
  RETURN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_ID%TYPE;
 
  PROCEDURE create_row ( 
    p_heap_id         IN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_ID%TYPE           DEFAULT "SFB_HEAP_SEQ"."NEXTVAL" /*PK*/,
    p_heap_prop_fk    IN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_PROP_FK%TYPE      ,
    p_heap_attr_fk    IN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_ATTR_FK%TYPE      ,
    p_heap_remark     IN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_REMARK%TYPE       DEFAULT NULL,
    p_heap_valid_from IN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_VALID_FROM%TYPE   DEFAULT sysdate ,
    p_heap_valid_to   IN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_VALID_TO%TYPE     DEFAULT TO_DATE('31.12.2999', 'DD.MM.YYYY') ,
    p_heap_deleted_yn IN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_DELETED_YN%TYPE   DEFAULT 'NO'  );
 
  FUNCTION create_row ( 
    p_row IN SFB_HELP_ATTRIBUTES_PROPERTIES_REL%ROWTYPE ) 
  RETURN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_ID%TYPE;
 
  PROCEDURE create_row ( 
    p_row IN SFB_HELP_ATTRIBUTES_PROPERTIES_REL%ROWTYPE );
 

 
  FUNCTION read_row ( 
    p_heap_id IN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_ID%TYPE /*PK*/ ) 
  RETURN SFB_HELP_ATTRIBUTES_PROPERTIES_REL%ROWTYPE;
 
  PROCEDURE read_row ( 
    p_heap_id         IN            SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_ID%TYPE /*PK*/,
    p_heap_prop_fk       OUT NOCOPY SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_PROP_FK%TYPE,
    p_heap_attr_fk       OUT NOCOPY SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_ATTR_FK%TYPE,
    p_heap_remark        OUT NOCOPY SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_REMARK%TYPE,
    p_heap_created       OUT NOCOPY SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_CREATED%TYPE,
    p_heap_created_by    OUT NOCOPY SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_CREATED_BY%TYPE,
    p_heap_updated       OUT NOCOPY SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_UPDATED%TYPE,
    p_heap_updated_by    OUT NOCOPY SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_UPDATED_BY%TYPE,
    p_heap_valid_from    OUT NOCOPY SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_VALID_FROM%TYPE,
    p_heap_valid_to      OUT NOCOPY SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_VALID_TO%TYPE,
    p_heap_deleted_yn    OUT NOCOPY SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_DELETED_YN%TYPE );
 

  FUNCTION update_row ( 
    p_heap_id         IN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_ID%TYPE /*PK*/,
    p_heap_prop_fk    IN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_PROP_FK%TYPE,
    p_heap_attr_fk    IN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_ATTR_FK%TYPE,
    p_heap_remark     IN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_REMARK%TYPE,
    p_heap_valid_from IN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_VALID_FROM%TYPE,
    p_heap_valid_to   IN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_VALID_TO%TYPE,
    p_heap_deleted_yn IN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_DELETED_YN%TYPE ) 
  RETURN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_ID%TYPE;
 
  PROCEDURE update_row ( 
    p_heap_id         IN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_ID%TYPE /*PK*/,
    p_heap_prop_fk    IN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_PROP_FK%TYPE,
    p_heap_attr_fk    IN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_ATTR_FK%TYPE,
    p_heap_remark     IN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_REMARK%TYPE,
    p_heap_valid_from IN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_VALID_FROM%TYPE,
    p_heap_valid_to   IN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_VALID_TO%TYPE,
    p_heap_deleted_yn IN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_DELETED_YN%TYPE );
 
  FUNCTION update_row ( 
    p_row IN SFB_HELP_ATTRIBUTES_PROPERTIES_REL%ROWTYPE ) 
  RETURN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_ID%TYPE;
 
  PROCEDURE update_row ( 
    p_row IN SFB_HELP_ATTRIBUTES_PROPERTIES_REL%ROWTYPE );
 

 
  PROCEDURE delete_row ( 
    p_heap_id IN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_ID%TYPE /*PK*/ );
 

 
  FUNCTION create_or_update_row ( 
    p_heap_id         IN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_ID%TYPE /*PK*/,
    p_heap_prop_fk    IN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_PROP_FK%TYPE,
    p_heap_attr_fk    IN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_ATTR_FK%TYPE,
    p_heap_remark     IN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_REMARK%TYPE,
    p_heap_valid_from IN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_VALID_FROM%TYPE,
    p_heap_valid_to   IN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_VALID_TO%TYPE,
    p_heap_deleted_yn IN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_DELETED_YN%TYPE ) 
  RETURN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_ID%TYPE;
 
  PROCEDURE create_or_update_row ( 
    p_heap_id         IN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_ID%TYPE /*PK*/,
    p_heap_prop_fk    IN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_PROP_FK%TYPE,
    p_heap_attr_fk    IN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_ATTR_FK%TYPE,
    p_heap_remark     IN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_REMARK%TYPE,
    p_heap_valid_from IN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_VALID_FROM%TYPE,
    p_heap_valid_to   IN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_VALID_TO%TYPE,
    p_heap_deleted_yn IN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_DELETED_YN%TYPE );
 
  FUNCTION create_or_update_row ( 
    p_row IN SFB_HELP_ATTRIBUTES_PROPERTIES_REL%ROWTYPE ) 
  RETURN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_ID%TYPE;
 
  PROCEDURE create_or_update_row ( 
    p_row IN SFB_HELP_ATTRIBUTES_PROPERTIES_REL%ROWTYPE );
 
  FUNCTION get_heap_prop_fk ( 
    p_heap_id IN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_ID%TYPE /*PK*/ ) 
  RETURN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_PROP_FK%TYPE;
 
  FUNCTION get_heap_attr_fk ( 
    p_heap_id IN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_ID%TYPE /*PK*/ ) 
  RETURN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_ATTR_FK%TYPE;
 
  FUNCTION get_heap_remark ( 
    p_heap_id IN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_ID%TYPE /*PK*/ ) 
  RETURN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_REMARK%TYPE;
 
  FUNCTION get_heap_created ( 
    p_heap_id IN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_ID%TYPE /*PK*/ ) 
  RETURN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_CREATED%TYPE;
 
  FUNCTION get_heap_created_by ( 
    p_heap_id IN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_ID%TYPE /*PK*/ ) 
  RETURN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_CREATED_BY%TYPE;
 
  FUNCTION get_heap_updated ( 
    p_heap_id IN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_ID%TYPE /*PK*/ ) 
  RETURN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_UPDATED%TYPE;
 
  FUNCTION get_heap_updated_by ( 
    p_heap_id IN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_ID%TYPE /*PK*/ ) 
  RETURN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_UPDATED_BY%TYPE;
 
  FUNCTION get_heap_valid_from ( 
    p_heap_id IN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_ID%TYPE /*PK*/ ) 
  RETURN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_VALID_FROM%TYPE;
 
  FUNCTION get_heap_valid_to ( 
    p_heap_id IN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_ID%TYPE /*PK*/ ) 
  RETURN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_VALID_TO%TYPE;
 
  FUNCTION get_heap_deleted_yn ( 
    p_heap_id IN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_ID%TYPE /*PK*/ ) 
  RETURN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_DELETED_YN%TYPE;
 
  PROCEDURE set_heap_prop_fk ( 
    p_heap_id      IN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_ID%TYPE /*PK*/, 
    p_heap_prop_fk IN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_PROP_FK%TYPE );
 
  PROCEDURE set_heap_attr_fk ( 
    p_heap_id      IN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_ID%TYPE /*PK*/, 
    p_heap_attr_fk IN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_ATTR_FK%TYPE );
 
  PROCEDURE set_heap_remark ( 
    p_heap_id     IN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_ID%TYPE /*PK*/, 
    p_heap_remark IN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_REMARK%TYPE );
 
  PROCEDURE set_heap_valid_from ( 
    p_heap_id         IN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_ID%TYPE /*PK*/, 
    p_heap_valid_from IN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_VALID_FROM%TYPE );
 
  PROCEDURE set_heap_valid_to ( 
    p_heap_id       IN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_ID%TYPE /*PK*/, 
    p_heap_valid_to IN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_VALID_TO%TYPE );
 
  PROCEDURE set_heap_deleted_yn ( 
    p_heap_id         IN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_ID%TYPE /*PK*/, 
    p_heap_deleted_yn IN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_DELETED_YN%TYPE );
 
  FUNCTION get_default_row 
  RETURN SFB_HELP_ATTRIBUTES_PROPERTIES_REL%ROWTYPE; 
  /* 
  Helper to get a prepopulated row with the table defaults from the dictionary. 
  */
 
END SFB_HELP_ATTRIBUTES_PROPERTIES_REL_PKG;
/

create or replace PACKAGE BODY       SFB_HELP_ATTRIBUTES_PROPERTIES_REL_PKG IS 
  /* 
  This is the API for the table SFB_HELP_ATTRIBUTES_PROPERTIES_REL. 
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
    p_heap_id IN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_ID%TYPE /*PK*/ ) 
  RETURN BOOLEAN 
  IS 
    v_return BOOLEAN := FALSE; 
    v_dummy  PLS_INTEGER; 
    CURSOR   cur_bool IS 
      SELECT 1 FROM SFB_HELP_ATTRIBUTES_PROPERTIES_REL 
      WHERE 
        HEAP_ID = p_heap_id; 
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
    p_heap_id IN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_ID%TYPE /*PK*/ ) 
  RETURN VARCHAR2 
  IS 
  BEGIN 
    RETURN 
      CASE 
        WHEN row_exists( 
          p_heap_id => p_heap_id ) 
        THEN 'Y' 
        ELSE 'N' 
      END; 
  END;
 
  FUNCTION create_row ( 
    p_heap_id         IN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_ID%TYPE           DEFAULT "SFB_HEAP_SEQ"."NEXTVAL" /*PK*/,
    p_heap_prop_fk    IN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_PROP_FK%TYPE      ,
    p_heap_attr_fk    IN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_ATTR_FK%TYPE      ,
    p_heap_remark     IN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_REMARK%TYPE       DEFAULT NULL,
    p_heap_valid_from IN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_VALID_FROM%TYPE   DEFAULT sysdate ,
    p_heap_valid_to   IN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_VALID_TO%TYPE     DEFAULT TO_DATE('31.12.2999', 'DD.MM.YYYY') ,
    p_heap_deleted_yn IN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_DELETED_YN%TYPE   DEFAULT 'NO'  ) 
  RETURN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_ID%TYPE 
  IS 
    v_return SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_ID%TYPE;  
  BEGIN 
    INSERT INTO SFB_HELP_ATTRIBUTES_PROPERTIES_REL ( 
      HEAP_ID /*PK*/,
      HEAP_PROP_FK,
      HEAP_ATTR_FK,
      HEAP_REMARK,
      HEAP_CREATED,
      HEAP_CREATED_BY,
      HEAP_UPDATED,
      HEAP_UPDATED_BY,
      HEAP_VALID_FROM,
      HEAP_VALID_TO,
      HEAP_DELETED_YN ) 
    VALUES ( 
      p_heap_id,
      p_heap_prop_fk,
      p_heap_attr_fk,
      p_heap_remark,
      systimestamp,
      coalesce(sys_context('apex$session','app_user'), sys_context('userenv','os_user'), sys_context('userenv','session_user')),
      systimestamp,
      coalesce(sys_context('apex$session','app_user'), sys_context('userenv','os_user'), sys_context('userenv','session_user')),
      p_heap_valid_from,
      p_heap_valid_to,
      p_heap_deleted_yn ) 
    RETURN  
      HEAP_ID 
    INTO 
      v_return; 
    RETURN v_return; 
  END create_row;
 
  PROCEDURE create_row ( 
    p_heap_id         IN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_ID%TYPE           DEFAULT "SFB_HEAP_SEQ"."NEXTVAL" /*PK*/,
    p_heap_prop_fk    IN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_PROP_FK%TYPE      ,
    p_heap_attr_fk    IN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_ATTR_FK%TYPE      ,
    p_heap_remark     IN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_REMARK%TYPE       DEFAULT NULL,
    p_heap_valid_from IN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_VALID_FROM%TYPE   DEFAULT sysdate ,
    p_heap_valid_to   IN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_VALID_TO%TYPE     DEFAULT TO_DATE('31.12.2999', 'DD.MM.YYYY') ,
    p_heap_deleted_yn IN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_DELETED_YN%TYPE   DEFAULT 'NO'  ) 
  IS 
  BEGIN 
    INSERT INTO SFB_HELP_ATTRIBUTES_PROPERTIES_REL ( 
      HEAP_ID /*PK*/,
      HEAP_PROP_FK,
      HEAP_ATTR_FK,
      HEAP_REMARK,
      HEAP_CREATED,
      HEAP_CREATED_BY,
      HEAP_UPDATED,
      HEAP_UPDATED_BY,
      HEAP_VALID_FROM,
      HEAP_VALID_TO,
      HEAP_DELETED_YN ) 
    VALUES ( 
      p_heap_id,
      p_heap_prop_fk,
      p_heap_attr_fk,
      p_heap_remark,
      systimestamp,
      coalesce(sys_context('apex$session','app_user'), sys_context('userenv','os_user'), sys_context('userenv','session_user')),
      systimestamp,
      coalesce(sys_context('apex$session','app_user'), sys_context('userenv','os_user'), sys_context('userenv','session_user')),
      p_heap_valid_from,
      p_heap_valid_to,
      p_heap_deleted_yn ); 
  END create_row;
 
  FUNCTION create_row ( 
    p_row IN SFB_HELP_ATTRIBUTES_PROPERTIES_REL%ROWTYPE ) 
  RETURN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_ID%TYPE 
  IS 
  BEGIN 
    RETURN create_row ( 
      p_heap_id         => p_row.HEAP_ID /*PK*/,
      p_heap_prop_fk    => p_row.HEAP_PROP_FK,
      p_heap_attr_fk    => p_row.HEAP_ATTR_FK,
      p_heap_remark     => p_row.HEAP_REMARK,
      p_heap_valid_from => p_row.HEAP_VALID_FROM,
      p_heap_valid_to   => p_row.HEAP_VALID_TO,
      p_heap_deleted_yn => p_row.HEAP_DELETED_YN ); 
  END create_row;
 
  PROCEDURE create_row ( 
    p_row IN SFB_HELP_ATTRIBUTES_PROPERTIES_REL%ROWTYPE ) 
  IS 
  BEGIN 
    create_row ( 
      p_heap_id         => p_row.HEAP_ID /*PK*/,
      p_heap_prop_fk    => p_row.HEAP_PROP_FK,
      p_heap_attr_fk    => p_row.HEAP_ATTR_FK,
      p_heap_remark     => p_row.HEAP_REMARK,
      p_heap_valid_from => p_row.HEAP_VALID_FROM,
      p_heap_valid_to   => p_row.HEAP_VALID_TO,
      p_heap_deleted_yn => p_row.HEAP_DELETED_YN ); 
  END create_row;
 
  
 
  
  FUNCTION read_row ( 
    p_heap_id IN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_ID%TYPE /*PK*/ ) 
  RETURN SFB_HELP_ATTRIBUTES_PROPERTIES_REL%ROWTYPE 
  IS 
    v_row SFB_HELP_ATTRIBUTES_PROPERTIES_REL%ROWTYPE; 
    CURSOR cur_row IS 
      SELECT * FROM SFB_HELP_ATTRIBUTES_PROPERTIES_REL 
      WHERE 
        HEAP_ID = p_heap_id; 
  BEGIN 
    OPEN cur_row; 
    FETCH cur_row INTO v_row; 
    CLOSE cur_row; 
    RETURN v_row; 
  END read_row;
 
  PROCEDURE read_row ( 
    p_heap_id         IN            SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_ID%TYPE /*PK*/,
    p_heap_prop_fk       OUT NOCOPY SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_PROP_FK%TYPE,
    p_heap_attr_fk       OUT NOCOPY SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_ATTR_FK%TYPE,
    p_heap_remark        OUT NOCOPY SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_REMARK%TYPE,
    p_heap_created       OUT NOCOPY SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_CREATED%TYPE,
    p_heap_created_by    OUT NOCOPY SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_CREATED_BY%TYPE,
    p_heap_updated       OUT NOCOPY SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_UPDATED%TYPE,
    p_heap_updated_by    OUT NOCOPY SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_UPDATED_BY%TYPE,
    p_heap_valid_from    OUT NOCOPY SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_VALID_FROM%TYPE,
    p_heap_valid_to      OUT NOCOPY SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_VALID_TO%TYPE,
    p_heap_deleted_yn    OUT NOCOPY SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_DELETED_YN%TYPE ) 
  IS 
    v_row SFB_HELP_ATTRIBUTES_PROPERTIES_REL%ROWTYPE; 
  BEGIN 
    v_row := read_row ( 
      p_heap_id => p_heap_id ); 
    p_heap_prop_fk    := v_row.HEAP_PROP_FK; 
    p_heap_attr_fk    := v_row.HEAP_ATTR_FK; 
    p_heap_remark     := v_row.HEAP_REMARK; 
    p_heap_created    := v_row.HEAP_CREATED; 
    p_heap_created_by := v_row.HEAP_CREATED_BY; 
    p_heap_updated    := v_row.HEAP_UPDATED; 
    p_heap_updated_by := v_row.HEAP_UPDATED_BY; 
    p_heap_valid_from := v_row.HEAP_VALID_FROM; 
    p_heap_valid_to   := v_row.HEAP_VALID_TO; 
    p_heap_deleted_yn := v_row.HEAP_DELETED_YN;  
  END read_row;
 
 
  FUNCTION update_row ( 
    p_heap_id         IN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_ID%TYPE /*PK*/,
    p_heap_prop_fk    IN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_PROP_FK%TYPE,
    p_heap_attr_fk    IN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_ATTR_FK%TYPE,
    p_heap_remark     IN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_REMARK%TYPE,
    p_heap_valid_from IN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_VALID_FROM%TYPE,
    p_heap_valid_to   IN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_VALID_TO%TYPE,
    p_heap_deleted_yn IN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_DELETED_YN%TYPE ) 
  RETURN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_ID%TYPE 
  IS 
    v_return SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_ID%TYPE;  
  BEGIN 
    UPDATE 
      SFB_HELP_ATTRIBUTES_PROPERTIES_REL 
    SET 
      HEAP_PROP_FK    = p_heap_prop_fk,
      HEAP_ATTR_FK    = p_heap_attr_fk,
      HEAP_REMARK     = p_heap_remark,
      HEAP_UPDATED    = systimestamp,
      HEAP_UPDATED_BY = coalesce(sys_context('apex$session','app_user'), sys_context('userenv','os_user'), sys_context('userenv','session_user')),
      HEAP_VALID_FROM = p_heap_valid_from,
      HEAP_VALID_TO   = p_heap_valid_to,
      HEAP_DELETED_YN = p_heap_deleted_yn 
    WHERE 
      HEAP_ID = p_heap_id 
    RETURN  
      HEAP_ID 
    INTO 
      v_return; 
    RETURN v_return; 
  END update_row;
 
  PROCEDURE update_row ( 
    p_heap_id         IN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_ID%TYPE /*PK*/,
    p_heap_prop_fk    IN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_PROP_FK%TYPE,
    p_heap_attr_fk    IN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_ATTR_FK%TYPE,
    p_heap_remark     IN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_REMARK%TYPE,
    p_heap_valid_from IN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_VALID_FROM%TYPE,
    p_heap_valid_to   IN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_VALID_TO%TYPE,
    p_heap_deleted_yn IN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_DELETED_YN%TYPE ) 
  IS 
  BEGIN 
    UPDATE 
      SFB_HELP_ATTRIBUTES_PROPERTIES_REL 
    SET 
      HEAP_PROP_FK    = p_heap_prop_fk,
      HEAP_ATTR_FK    = p_heap_attr_fk,
      HEAP_REMARK     = p_heap_remark,
      HEAP_UPDATED    = systimestamp,
      HEAP_UPDATED_BY = coalesce(sys_context('apex$session','app_user'), sys_context('userenv','os_user'), sys_context('userenv','session_user')),
      HEAP_VALID_FROM = p_heap_valid_from,
      HEAP_VALID_TO   = p_heap_valid_to,
      HEAP_DELETED_YN = p_heap_deleted_yn 
    WHERE 
      HEAP_ID = p_heap_id; 
  END update_row;
 
  FUNCTION update_row ( 
    p_row IN SFB_HELP_ATTRIBUTES_PROPERTIES_REL%ROWTYPE ) 
  RETURN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_ID%TYPE 
  IS 
  BEGIN 
    RETURN update_row ( 
      p_heap_id         => p_row.HEAP_ID /*PK*/,
      p_heap_prop_fk    => p_row.HEAP_PROP_FK,
      p_heap_attr_fk    => p_row.HEAP_ATTR_FK,
      p_heap_remark     => p_row.HEAP_REMARK,
      p_heap_valid_from => p_row.HEAP_VALID_FROM,
      p_heap_valid_to   => p_row.HEAP_VALID_TO,
      p_heap_deleted_yn => p_row.HEAP_DELETED_YN ); 
  END update_row;
 
  PROCEDURE update_row ( 
    p_row IN SFB_HELP_ATTRIBUTES_PROPERTIES_REL%ROWTYPE ) 
  IS 
  BEGIN 
    update_row ( 
      p_heap_id         => p_row.HEAP_ID /*PK*/,
      p_heap_prop_fk    => p_row.HEAP_PROP_FK,
      p_heap_attr_fk    => p_row.HEAP_ATTR_FK,
      p_heap_remark     => p_row.HEAP_REMARK,
      p_heap_valid_from => p_row.HEAP_VALID_FROM,
      p_heap_valid_to   => p_row.HEAP_VALID_TO,
      p_heap_deleted_yn => p_row.HEAP_DELETED_YN ); 
  END update_row;
 
 
 
  PROCEDURE delete_row ( 
    p_heap_id IN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_ID%TYPE /*PK*/ ) 
  IS 
  BEGIN 
    DELETE FROM SFB_HELP_ATTRIBUTES_PROPERTIES_REL 
    WHERE 
      HEAP_ID = p_heap_id; 
  END delete_row;
 
  
 
  FUNCTION create_or_update_row ( 
    p_heap_id         IN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_ID%TYPE /*PK*/,
    p_heap_prop_fk    IN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_PROP_FK%TYPE,
    p_heap_attr_fk    IN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_ATTR_FK%TYPE,
    p_heap_remark     IN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_REMARK%TYPE,
    p_heap_valid_from IN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_VALID_FROM%TYPE,
    p_heap_valid_to   IN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_VALID_TO%TYPE,
    p_heap_deleted_yn IN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_DELETED_YN%TYPE ) 
  RETURN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_ID%TYPE 
  IS 
  BEGIN 
    IF row_exists( 
      p_heap_id => p_heap_id 
    ) 
    THEN 
      RETURN update_row ( 
        p_heap_id         => p_heap_id /*PK*/,
        p_heap_prop_fk    => p_heap_prop_fk,
        p_heap_attr_fk    => p_heap_attr_fk,
        p_heap_remark     => p_heap_remark,
        p_heap_valid_from => p_heap_valid_from,
        p_heap_valid_to   => p_heap_valid_to,
        p_heap_deleted_yn => p_heap_deleted_yn ); 
    ELSE 
      RETURN create_row ( 
        p_heap_id         => p_heap_id /*PK*/,
        p_heap_prop_fk    => p_heap_prop_fk,
        p_heap_attr_fk    => p_heap_attr_fk,
        p_heap_remark     => p_heap_remark,
        p_heap_valid_from => p_heap_valid_from,
        p_heap_valid_to   => p_heap_valid_to,
        p_heap_deleted_yn => p_heap_deleted_yn ); 
    END IF; 
  END create_or_update_row;
 
  PROCEDURE create_or_update_row ( 
    p_heap_id         IN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_ID%TYPE /*PK*/,
    p_heap_prop_fk    IN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_PROP_FK%TYPE,
    p_heap_attr_fk    IN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_ATTR_FK%TYPE,
    p_heap_remark     IN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_REMARK%TYPE,
    p_heap_valid_from IN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_VALID_FROM%TYPE,
    p_heap_valid_to   IN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_VALID_TO%TYPE,
    p_heap_deleted_yn IN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_DELETED_YN%TYPE ) 
  IS 
  BEGIN 
    IF row_exists( 
      p_heap_id => p_heap_id 
    ) 
    THEN 
      update_row ( 
        p_heap_id         => p_heap_id /*PK*/,
        p_heap_prop_fk    => p_heap_prop_fk,
        p_heap_attr_fk    => p_heap_attr_fk,
        p_heap_remark     => p_heap_remark,
        p_heap_valid_from => p_heap_valid_from,
        p_heap_valid_to   => p_heap_valid_to,
        p_heap_deleted_yn => p_heap_deleted_yn ); 
    ELSE 
      create_row ( 
        p_heap_id         => p_heap_id /*PK*/,
        p_heap_prop_fk    => p_heap_prop_fk,
        p_heap_attr_fk    => p_heap_attr_fk,
        p_heap_remark     => p_heap_remark,
        p_heap_valid_from => p_heap_valid_from,
        p_heap_valid_to   => p_heap_valid_to,
        p_heap_deleted_yn => p_heap_deleted_yn ); 
    END IF; 
  END create_or_update_row;
 
  FUNCTION create_or_update_row ( 
    p_row IN SFB_HELP_ATTRIBUTES_PROPERTIES_REL%ROWTYPE ) 
  RETURN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_ID%TYPE 
  IS 
  BEGIN 
    IF row_exists( 
      p_heap_id => p_row.HEAP_ID 
    ) 
    THEN 
      RETURN update_row ( 
        p_heap_id         => p_row.HEAP_ID /*PK*/,
        p_heap_prop_fk    => p_row.HEAP_PROP_FK,
        p_heap_attr_fk    => p_row.HEAP_ATTR_FK,
        p_heap_remark     => p_row.HEAP_REMARK,
        p_heap_valid_from => p_row.HEAP_VALID_FROM,
        p_heap_valid_to   => p_row.HEAP_VALID_TO,
        p_heap_deleted_yn => p_row.HEAP_DELETED_YN ); 
    ELSE 
      RETURN create_row ( 
        p_heap_id         => p_row.HEAP_ID /*PK*/,
        p_heap_prop_fk    => p_row.HEAP_PROP_FK,
        p_heap_attr_fk    => p_row.HEAP_ATTR_FK,
        p_heap_remark     => p_row.HEAP_REMARK,
        p_heap_valid_from => p_row.HEAP_VALID_FROM,
        p_heap_valid_to   => p_row.HEAP_VALID_TO,
        p_heap_deleted_yn => p_row.HEAP_DELETED_YN ); 
    END IF; 
  END create_or_update_row;
 
  PROCEDURE create_or_update_row ( 
    p_row IN SFB_HELP_ATTRIBUTES_PROPERTIES_REL%ROWTYPE ) 
  IS 
  BEGIN 
    IF row_exists( 
      p_heap_id => p_row.HEAP_ID 
    ) 
    THEN 
      update_row ( 
        p_heap_id         => p_row.HEAP_ID /*PK*/,
        p_heap_prop_fk    => p_row.HEAP_PROP_FK,
        p_heap_attr_fk    => p_row.HEAP_ATTR_FK,
        p_heap_remark     => p_row.HEAP_REMARK,
        p_heap_valid_from => p_row.HEAP_VALID_FROM,
        p_heap_valid_to   => p_row.HEAP_VALID_TO,
        p_heap_deleted_yn => p_row.HEAP_DELETED_YN ); 
    ELSE 
      create_row ( 
        p_heap_id         => p_row.HEAP_ID /*PK*/,
        p_heap_prop_fk    => p_row.HEAP_PROP_FK,
        p_heap_attr_fk    => p_row.HEAP_ATTR_FK,
        p_heap_remark     => p_row.HEAP_REMARK,
        p_heap_valid_from => p_row.HEAP_VALID_FROM,
        p_heap_valid_to   => p_row.HEAP_VALID_TO,
        p_heap_deleted_yn => p_row.HEAP_DELETED_YN ); 
    END IF; 
  END create_or_update_row;
 
  FUNCTION get_heap_prop_fk ( 
    p_heap_id IN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_ID%TYPE /*PK*/ ) 
  RETURN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_PROP_FK%TYPE 
  IS 
  BEGIN 
    RETURN read_row ( 
      p_heap_id => p_heap_id ).HEAP_PROP_FK; 
  END get_heap_prop_fk;
 
  FUNCTION get_heap_attr_fk ( 
    p_heap_id IN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_ID%TYPE /*PK*/ ) 
  RETURN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_ATTR_FK%TYPE 
  IS 
  BEGIN 
    RETURN read_row ( 
      p_heap_id => p_heap_id ).HEAP_ATTR_FK; 
  END get_heap_attr_fk;
 
  FUNCTION get_heap_remark ( 
    p_heap_id IN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_ID%TYPE /*PK*/ ) 
  RETURN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_REMARK%TYPE 
  IS 
  BEGIN 
    RETURN read_row ( 
      p_heap_id => p_heap_id ).HEAP_REMARK; 
  END get_heap_remark;
 
  FUNCTION get_heap_created ( 
    p_heap_id IN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_ID%TYPE /*PK*/ ) 
  RETURN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_CREATED%TYPE 
  IS 
  BEGIN 
    RETURN read_row ( 
      p_heap_id => p_heap_id ).HEAP_CREATED; 
  END get_heap_created;
 
  FUNCTION get_heap_created_by ( 
    p_heap_id IN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_ID%TYPE /*PK*/ ) 
  RETURN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_CREATED_BY%TYPE 
  IS 
  BEGIN 
    RETURN read_row ( 
      p_heap_id => p_heap_id ).HEAP_CREATED_BY; 
  END get_heap_created_by;
 
  FUNCTION get_heap_updated ( 
    p_heap_id IN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_ID%TYPE /*PK*/ ) 
  RETURN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_UPDATED%TYPE 
  IS 
  BEGIN 
    RETURN read_row ( 
      p_heap_id => p_heap_id ).HEAP_UPDATED; 
  END get_heap_updated;
 
  FUNCTION get_heap_updated_by ( 
    p_heap_id IN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_ID%TYPE /*PK*/ ) 
  RETURN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_UPDATED_BY%TYPE 
  IS 
  BEGIN 
    RETURN read_row ( 
      p_heap_id => p_heap_id ).HEAP_UPDATED_BY; 
  END get_heap_updated_by;
 
  FUNCTION get_heap_valid_from ( 
    p_heap_id IN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_ID%TYPE /*PK*/ ) 
  RETURN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_VALID_FROM%TYPE 
  IS 
  BEGIN 
    RETURN read_row ( 
      p_heap_id => p_heap_id ).HEAP_VALID_FROM; 
  END get_heap_valid_from;
 
  FUNCTION get_heap_valid_to ( 
    p_heap_id IN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_ID%TYPE /*PK*/ ) 
  RETURN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_VALID_TO%TYPE 
  IS 
  BEGIN 
    RETURN read_row ( 
      p_heap_id => p_heap_id ).HEAP_VALID_TO; 
  END get_heap_valid_to;
 
  FUNCTION get_heap_deleted_yn ( 
    p_heap_id IN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_ID%TYPE /*PK*/ ) 
  RETURN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_DELETED_YN%TYPE 
  IS 
  BEGIN 
    RETURN read_row ( 
      p_heap_id => p_heap_id ).HEAP_DELETED_YN; 
  END get_heap_deleted_yn;
 
  PROCEDURE set_heap_prop_fk ( 
    p_heap_id      IN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_ID%TYPE /*PK*/, 
    p_heap_prop_fk IN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_PROP_FK%TYPE ) 
  IS 
  BEGIN 
    UPDATE 
      SFB_HELP_ATTRIBUTES_PROPERTIES_REL 
    SET 
      HEAP_PROP_FK    = p_heap_prop_fk,
      HEAP_UPDATED    = systimestamp,
      HEAP_UPDATED_BY = coalesce(sys_context('apex$session','app_user'), sys_context('userenv','os_user'), sys_context('userenv','session_user')) 
    WHERE 
      HEAP_ID = p_heap_id; 
  END set_heap_prop_fk;
 
  PROCEDURE set_heap_attr_fk ( 
    p_heap_id      IN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_ID%TYPE /*PK*/, 
    p_heap_attr_fk IN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_ATTR_FK%TYPE ) 
  IS 
  BEGIN 
    UPDATE 
      SFB_HELP_ATTRIBUTES_PROPERTIES_REL 
    SET 
      HEAP_ATTR_FK    = p_heap_attr_fk,
      HEAP_UPDATED    = systimestamp,
      HEAP_UPDATED_BY = coalesce(sys_context('apex$session','app_user'), sys_context('userenv','os_user'), sys_context('userenv','session_user')) 
    WHERE 
      HEAP_ID = p_heap_id; 
  END set_heap_attr_fk;
 
  PROCEDURE set_heap_remark ( 
    p_heap_id     IN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_ID%TYPE /*PK*/, 
    p_heap_remark IN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_REMARK%TYPE ) 
  IS 
  BEGIN 
    UPDATE 
      SFB_HELP_ATTRIBUTES_PROPERTIES_REL 
    SET 
      HEAP_REMARK     = p_heap_remark,
      HEAP_UPDATED    = systimestamp,
      HEAP_UPDATED_BY = coalesce(sys_context('apex$session','app_user'), sys_context('userenv','os_user'), sys_context('userenv','session_user')) 
    WHERE 
      HEAP_ID = p_heap_id; 
  END set_heap_remark;
 
  PROCEDURE set_heap_valid_from ( 
    p_heap_id         IN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_ID%TYPE /*PK*/, 
    p_heap_valid_from IN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_VALID_FROM%TYPE ) 
  IS 
  BEGIN 
    UPDATE 
      SFB_HELP_ATTRIBUTES_PROPERTIES_REL 
    SET 
      HEAP_UPDATED    = systimestamp,
      HEAP_UPDATED_BY = coalesce(sys_context('apex$session','app_user'), sys_context('userenv','os_user'), sys_context('userenv','session_user')),
      HEAP_VALID_FROM = p_heap_valid_from 
    WHERE 
      HEAP_ID = p_heap_id; 
  END set_heap_valid_from;
 
  PROCEDURE set_heap_valid_to ( 
    p_heap_id       IN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_ID%TYPE /*PK*/, 
    p_heap_valid_to IN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_VALID_TO%TYPE ) 
  IS 
  BEGIN 
    UPDATE 
      SFB_HELP_ATTRIBUTES_PROPERTIES_REL 
    SET 
      HEAP_UPDATED    = systimestamp,
      HEAP_UPDATED_BY = coalesce(sys_context('apex$session','app_user'), sys_context('userenv','os_user'), sys_context('userenv','session_user')),
      HEAP_VALID_TO   = p_heap_valid_to 
    WHERE 
      HEAP_ID = p_heap_id; 
  END set_heap_valid_to;
 
  PROCEDURE set_heap_deleted_yn ( 
    p_heap_id         IN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_ID%TYPE /*PK*/, 
    p_heap_deleted_yn IN SFB_HELP_ATTRIBUTES_PROPERTIES_REL.HEAP_DELETED_YN%TYPE ) 
  IS 
  BEGIN 
    UPDATE 
      SFB_HELP_ATTRIBUTES_PROPERTIES_REL 
    SET 
      HEAP_UPDATED    = systimestamp,
      HEAP_UPDATED_BY = coalesce(sys_context('apex$session','app_user'), sys_context('userenv','os_user'), sys_context('userenv','session_user')),
      HEAP_DELETED_YN = p_heap_deleted_yn 
    WHERE 
      HEAP_ID = p_heap_id; 
  END set_heap_deleted_yn;
 
  FUNCTION get_default_row 
  RETURN SFB_HELP_ATTRIBUTES_PROPERTIES_REL%ROWTYPE 
  IS 
    v_row SFB_HELP_ATTRIBUTES_PROPERTIES_REL%ROWTYPE; 
  BEGIN 
    v_row.HEAP_ID         := "SFB_HEAP_SEQ"."NEXTVAL" /*PK*/;
    v_row.HEAP_CREATED    := sysdate ;
    v_row.HEAP_CREATED_BY := ( coalesce(sys_context('apex$session', 'app_user'),  
                                                           sys_context('userenv', 'os_user'),  
                                                           sys_context('userenv', 'session_user')) ) ;
    v_row.HEAP_UPDATED    := sysdate ;
    v_row.HEAP_UPDATED_BY := ( coalesce(sys_context('apex$session', 'app_user'),  
                                                           sys_context('userenv', 'os_user'),  
                                                           sys_context('userenv', 'session_user')) ) ;
    v_row.HEAP_VALID_FROM := sysdate ;
    v_row.HEAP_VALID_TO   := TO_DATE('31.12.2999', 'DD.MM.YYYY') ;
    v_row.HEAP_DELETED_YN := 'NO' ; 
    RETURN v_row; 
  END get_default_row;
 
END SFB_HELP_ATTRIBUTES_PROPERTIES_REL_PKG;
/