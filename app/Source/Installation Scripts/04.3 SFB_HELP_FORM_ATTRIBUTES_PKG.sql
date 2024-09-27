create or replace PACKAGE       SFB_HELP_FORM_ATTRIBUTES_PKG IS 
  /* 
  This is the API for the table SFB_HELP_FORM_ATTRIBUTES. 
 
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
    p_table_name="SFB_HELP_FORM_ATTRIBUTES" 
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
    p_dml_view_name="SFB_HELP_FORM_ATTRIBUTES_DML_V" 
    p_dml_view_trigger_name="SFB_HELP_FORM_ATTRIBUTES_IOIUD" 
    p_enable_one_to_one_view="FALSE" 
    p_one_to_one_view_name="SFB_HELP_FORM_ATTRIBUTES_V" 
    p_api_name="SFB_HELP_FORM_ATTRIBUTES_PKG" 
    p_sequence_name="" 
    p_exclude_column_list="" 
    p_audit_column_mappings="created=#PREFIX#_CREATED, created_by=#PREFIX#_CREATED_BY, updated=#PREFIX#_UPDATED, updated_by=#PREFIX#_UPDATED_BY" 
    p_audit_user_expression="coalesce(sys_context('apex$session','app_user'), sys_context('userenv','os_user'), sys_context('userenv','session_user'))" 
    p_row_version_column_mapping="" 
    p_tenant_column_mapping="" 
    p_enable_custom_defaults="FALSE" 
    p_custom_default_values=""/> 
  */
 
  TYPE t_strong_ref_cursor IS REF CURSOR RETURN SFB_HELP_FORM_ATTRIBUTES%ROWTYPE;
 
  FUNCTION bulk_is_complete 
  RETURN BOOLEAN;
 
  PROCEDURE set_bulk_limit ( 
    p_bulk_limit IN PLS_INTEGER );
 
  FUNCTION get_bulk_limit 
  RETURN PLS_INTEGER;
 
  FUNCTION row_exists ( 
    p_hfat_id IN SFB_HELP_FORM_ATTRIBUTES.HFAT_ID%TYPE /*PK*/ ) 
  RETURN BOOLEAN;
 
  FUNCTION row_exists_yn ( 
    p_hfat_id IN SFB_HELP_FORM_ATTRIBUTES.HFAT_ID%TYPE /*PK*/ ) 
  RETURN VARCHAR2;
 
  FUNCTION create_row ( 
    p_hfat_id          IN SFB_HELP_FORM_ATTRIBUTES.HFAT_ID%TYPE            DEFAULT "SFB_HFAT_SEQ"."NEXTVAL" /*PK*/,
    p_hfat_required_yn IN SFB_HELP_FORM_ATTRIBUTES.HFAT_REQUIRED_YN%TYPE   DEFAULT 'NO',
    p_hfat_remark      IN SFB_HELP_FORM_ATTRIBUTES.HFAT_REMARK%TYPE        DEFAULT NULL,
    p_hfat_valid_from  IN SFB_HELP_FORM_ATTRIBUTES.HFAT_VALID_FROM%TYPE    DEFAULT sysdate ,
    p_hfat_valid_to    IN SFB_HELP_FORM_ATTRIBUTES.HFAT_VALID_TO%TYPE      DEFAULT TO_DATE('31.12.2999', 'DD.MM.YYYY') ,
    p_hfat_deleted_yn  IN SFB_HELP_FORM_ATTRIBUTES.HFAT_DELETED_YN%TYPE    DEFAULT 'NO' ,
    p_hfat_attr_fk     IN SFB_HELP_FORM_ATTRIBUTES.HFAT_ATTR_FK%TYPE        /*FK*/,
    p_hfat_jason_fk    IN SFB_HELP_FORM_ATTRIBUTES.HFAT_JASON_FK%TYPE       /*FK*/,
    p_hfat_name        IN SFB_HELP_FORM_ATTRIBUTES.HFAT_NAME%TYPE          DEFAULT NULL ) 
  RETURN SFB_HELP_FORM_ATTRIBUTES.HFAT_ID%TYPE;
 
  PROCEDURE create_row ( 
    p_hfat_id          IN SFB_HELP_FORM_ATTRIBUTES.HFAT_ID%TYPE            DEFAULT "SFB_HFAT_SEQ"."NEXTVAL" /*PK*/,
    p_hfat_required_yn IN SFB_HELP_FORM_ATTRIBUTES.HFAT_REQUIRED_YN%TYPE   DEFAULT 'NO',
    p_hfat_remark      IN SFB_HELP_FORM_ATTRIBUTES.HFAT_REMARK%TYPE        DEFAULT NULL,
    p_hfat_valid_from  IN SFB_HELP_FORM_ATTRIBUTES.HFAT_VALID_FROM%TYPE    DEFAULT sysdate ,
    p_hfat_valid_to    IN SFB_HELP_FORM_ATTRIBUTES.HFAT_VALID_TO%TYPE      DEFAULT TO_DATE('31.12.2999', 'DD.MM.YYYY') ,
    p_hfat_deleted_yn  IN SFB_HELP_FORM_ATTRIBUTES.HFAT_DELETED_YN%TYPE    DEFAULT 'NO' ,
    p_hfat_attr_fk     IN SFB_HELP_FORM_ATTRIBUTES.HFAT_ATTR_FK%TYPE        /*FK*/,
    p_hfat_jason_fk    IN SFB_HELP_FORM_ATTRIBUTES.HFAT_JASON_FK%TYPE       /*FK*/,
    p_hfat_name        IN SFB_HELP_FORM_ATTRIBUTES.HFAT_NAME%TYPE          DEFAULT NULL );
 
  FUNCTION create_row ( 
    p_row IN SFB_HELP_FORM_ATTRIBUTES%ROWTYPE ) 
  RETURN SFB_HELP_FORM_ATTRIBUTES.HFAT_ID%TYPE;
 
  PROCEDURE create_row ( 
    p_row IN SFB_HELP_FORM_ATTRIBUTES%ROWTYPE );
 

 

 
  FUNCTION read_row ( 
    p_hfat_id IN SFB_HELP_FORM_ATTRIBUTES.HFAT_ID%TYPE /*PK*/ ) 
  RETURN SFB_HELP_FORM_ATTRIBUTES%ROWTYPE;
 
  PROCEDURE read_row ( 
    p_hfat_id          IN            SFB_HELP_FORM_ATTRIBUTES.HFAT_ID%TYPE /*PK*/,
    p_hfat_required_yn    OUT NOCOPY SFB_HELP_FORM_ATTRIBUTES.HFAT_REQUIRED_YN%TYPE,
    p_hfat_remark         OUT NOCOPY SFB_HELP_FORM_ATTRIBUTES.HFAT_REMARK%TYPE,
    p_hfat_created        OUT NOCOPY SFB_HELP_FORM_ATTRIBUTES.HFAT_CREATED%TYPE,
    p_hfat_created_by     OUT NOCOPY SFB_HELP_FORM_ATTRIBUTES.HFAT_CREATED_BY%TYPE,
    p_hfat_updated        OUT NOCOPY SFB_HELP_FORM_ATTRIBUTES.HFAT_UPDATED%TYPE,
    p_hfat_updated_by     OUT NOCOPY SFB_HELP_FORM_ATTRIBUTES.HFAT_UPDATED_BY%TYPE,
    p_hfat_valid_from     OUT NOCOPY SFB_HELP_FORM_ATTRIBUTES.HFAT_VALID_FROM%TYPE,
    p_hfat_valid_to       OUT NOCOPY SFB_HELP_FORM_ATTRIBUTES.HFAT_VALID_TO%TYPE,
    p_hfat_deleted_yn     OUT NOCOPY SFB_HELP_FORM_ATTRIBUTES.HFAT_DELETED_YN%TYPE,
    p_hfat_attr_fk        OUT NOCOPY SFB_HELP_FORM_ATTRIBUTES.HFAT_ATTR_FK%TYPE /*FK*/,
    p_hfat_jason_fk       OUT NOCOPY SFB_HELP_FORM_ATTRIBUTES.HFAT_JASON_FK%TYPE /*FK*/,
    p_hfat_name           OUT NOCOPY SFB_HELP_FORM_ATTRIBUTES.HFAT_NAME%TYPE );
 

  FUNCTION update_row ( 
    p_hfat_id          IN SFB_HELP_FORM_ATTRIBUTES.HFAT_ID%TYPE /*PK*/,
    p_hfat_required_yn IN SFB_HELP_FORM_ATTRIBUTES.HFAT_REQUIRED_YN%TYPE,
    p_hfat_remark      IN SFB_HELP_FORM_ATTRIBUTES.HFAT_REMARK%TYPE,
    p_hfat_valid_from  IN SFB_HELP_FORM_ATTRIBUTES.HFAT_VALID_FROM%TYPE,
    p_hfat_valid_to    IN SFB_HELP_FORM_ATTRIBUTES.HFAT_VALID_TO%TYPE,
    p_hfat_deleted_yn  IN SFB_HELP_FORM_ATTRIBUTES.HFAT_DELETED_YN%TYPE,
    p_hfat_attr_fk     IN SFB_HELP_FORM_ATTRIBUTES.HFAT_ATTR_FK%TYPE /*FK*/,
    p_hfat_jason_fk    IN SFB_HELP_FORM_ATTRIBUTES.HFAT_JASON_FK%TYPE /*FK*/,
    p_hfat_name        IN SFB_HELP_FORM_ATTRIBUTES.HFAT_NAME%TYPE ) 
  RETURN SFB_HELP_FORM_ATTRIBUTES.HFAT_ID%TYPE;
 
  PROCEDURE update_row ( 
    p_hfat_id          IN SFB_HELP_FORM_ATTRIBUTES.HFAT_ID%TYPE /*PK*/,
    p_hfat_required_yn IN SFB_HELP_FORM_ATTRIBUTES.HFAT_REQUIRED_YN%TYPE,
    p_hfat_remark      IN SFB_HELP_FORM_ATTRIBUTES.HFAT_REMARK%TYPE,
    p_hfat_valid_from  IN SFB_HELP_FORM_ATTRIBUTES.HFAT_VALID_FROM%TYPE,
    p_hfat_valid_to    IN SFB_HELP_FORM_ATTRIBUTES.HFAT_VALID_TO%TYPE,
    p_hfat_deleted_yn  IN SFB_HELP_FORM_ATTRIBUTES.HFAT_DELETED_YN%TYPE,
    p_hfat_attr_fk     IN SFB_HELP_FORM_ATTRIBUTES.HFAT_ATTR_FK%TYPE /*FK*/,
    p_hfat_jason_fk    IN SFB_HELP_FORM_ATTRIBUTES.HFAT_JASON_FK%TYPE /*FK*/,
    p_hfat_name        IN SFB_HELP_FORM_ATTRIBUTES.HFAT_NAME%TYPE );
 
  FUNCTION update_row ( 
    p_row IN SFB_HELP_FORM_ATTRIBUTES%ROWTYPE ) 
  RETURN SFB_HELP_FORM_ATTRIBUTES.HFAT_ID%TYPE;
 
  PROCEDURE update_row ( 
    p_row IN SFB_HELP_FORM_ATTRIBUTES%ROWTYPE );
 

 
  PROCEDURE delete_row ( 
    p_hfat_id IN SFB_HELP_FORM_ATTRIBUTES.HFAT_ID%TYPE /*PK*/ );
 

 
  FUNCTION create_or_update_row ( 
    p_hfat_id          IN SFB_HELP_FORM_ATTRIBUTES.HFAT_ID%TYPE /*PK*/,
    p_hfat_required_yn IN SFB_HELP_FORM_ATTRIBUTES.HFAT_REQUIRED_YN%TYPE,
    p_hfat_remark      IN SFB_HELP_FORM_ATTRIBUTES.HFAT_REMARK%TYPE,
    p_hfat_valid_from  IN SFB_HELP_FORM_ATTRIBUTES.HFAT_VALID_FROM%TYPE,
    p_hfat_valid_to    IN SFB_HELP_FORM_ATTRIBUTES.HFAT_VALID_TO%TYPE,
    p_hfat_deleted_yn  IN SFB_HELP_FORM_ATTRIBUTES.HFAT_DELETED_YN%TYPE,
    p_hfat_attr_fk     IN SFB_HELP_FORM_ATTRIBUTES.HFAT_ATTR_FK%TYPE /*FK*/,
    p_hfat_jason_fk    IN SFB_HELP_FORM_ATTRIBUTES.HFAT_JASON_FK%TYPE /*FK*/,
    p_hfat_name        IN SFB_HELP_FORM_ATTRIBUTES.HFAT_NAME%TYPE ) 
  RETURN SFB_HELP_FORM_ATTRIBUTES.HFAT_ID%TYPE;
 
  PROCEDURE create_or_update_row ( 
    p_hfat_id          IN SFB_HELP_FORM_ATTRIBUTES.HFAT_ID%TYPE /*PK*/,
    p_hfat_required_yn IN SFB_HELP_FORM_ATTRIBUTES.HFAT_REQUIRED_YN%TYPE,
    p_hfat_remark      IN SFB_HELP_FORM_ATTRIBUTES.HFAT_REMARK%TYPE,
    p_hfat_valid_from  IN SFB_HELP_FORM_ATTRIBUTES.HFAT_VALID_FROM%TYPE,
    p_hfat_valid_to    IN SFB_HELP_FORM_ATTRIBUTES.HFAT_VALID_TO%TYPE,
    p_hfat_deleted_yn  IN SFB_HELP_FORM_ATTRIBUTES.HFAT_DELETED_YN%TYPE,
    p_hfat_attr_fk     IN SFB_HELP_FORM_ATTRIBUTES.HFAT_ATTR_FK%TYPE /*FK*/,
    p_hfat_jason_fk    IN SFB_HELP_FORM_ATTRIBUTES.HFAT_JASON_FK%TYPE /*FK*/,
    p_hfat_name        IN SFB_HELP_FORM_ATTRIBUTES.HFAT_NAME%TYPE );
 
  FUNCTION create_or_update_row ( 
    p_row IN SFB_HELP_FORM_ATTRIBUTES%ROWTYPE ) 
  RETURN SFB_HELP_FORM_ATTRIBUTES.HFAT_ID%TYPE;
 
  PROCEDURE create_or_update_row ( 
    p_row IN SFB_HELP_FORM_ATTRIBUTES%ROWTYPE );
 
  FUNCTION get_hfat_required_yn ( 
    p_hfat_id IN SFB_HELP_FORM_ATTRIBUTES.HFAT_ID%TYPE /*PK*/ ) 
  RETURN SFB_HELP_FORM_ATTRIBUTES.HFAT_REQUIRED_YN%TYPE;
 
  FUNCTION get_hfat_remark ( 
    p_hfat_id IN SFB_HELP_FORM_ATTRIBUTES.HFAT_ID%TYPE /*PK*/ ) 
  RETURN SFB_HELP_FORM_ATTRIBUTES.HFAT_REMARK%TYPE;
 
  FUNCTION get_hfat_created ( 
    p_hfat_id IN SFB_HELP_FORM_ATTRIBUTES.HFAT_ID%TYPE /*PK*/ ) 
  RETURN SFB_HELP_FORM_ATTRIBUTES.HFAT_CREATED%TYPE;
 
  FUNCTION get_hfat_created_by ( 
    p_hfat_id IN SFB_HELP_FORM_ATTRIBUTES.HFAT_ID%TYPE /*PK*/ ) 
  RETURN SFB_HELP_FORM_ATTRIBUTES.HFAT_CREATED_BY%TYPE;
 
  FUNCTION get_hfat_updated ( 
    p_hfat_id IN SFB_HELP_FORM_ATTRIBUTES.HFAT_ID%TYPE /*PK*/ ) 
  RETURN SFB_HELP_FORM_ATTRIBUTES.HFAT_UPDATED%TYPE;
 
  FUNCTION get_hfat_updated_by ( 
    p_hfat_id IN SFB_HELP_FORM_ATTRIBUTES.HFAT_ID%TYPE /*PK*/ ) 
  RETURN SFB_HELP_FORM_ATTRIBUTES.HFAT_UPDATED_BY%TYPE;
 
  FUNCTION get_hfat_valid_from ( 
    p_hfat_id IN SFB_HELP_FORM_ATTRIBUTES.HFAT_ID%TYPE /*PK*/ ) 
  RETURN SFB_HELP_FORM_ATTRIBUTES.HFAT_VALID_FROM%TYPE;
 
  FUNCTION get_hfat_valid_to ( 
    p_hfat_id IN SFB_HELP_FORM_ATTRIBUTES.HFAT_ID%TYPE /*PK*/ ) 
  RETURN SFB_HELP_FORM_ATTRIBUTES.HFAT_VALID_TO%TYPE;
 
  FUNCTION get_hfat_deleted_yn ( 
    p_hfat_id IN SFB_HELP_FORM_ATTRIBUTES.HFAT_ID%TYPE /*PK*/ ) 
  RETURN SFB_HELP_FORM_ATTRIBUTES.HFAT_DELETED_YN%TYPE;
 
  FUNCTION get_hfat_attr_fk ( 
    p_hfat_id IN SFB_HELP_FORM_ATTRIBUTES.HFAT_ID%TYPE /*PK*/ ) 
  RETURN SFB_HELP_FORM_ATTRIBUTES.HFAT_ATTR_FK%TYPE;
 
  FUNCTION get_hfat_jason_fk ( 
    p_hfat_id IN SFB_HELP_FORM_ATTRIBUTES.HFAT_ID%TYPE /*PK*/ ) 
  RETURN SFB_HELP_FORM_ATTRIBUTES.HFAT_JASON_FK%TYPE;
 
  FUNCTION get_hfat_name ( 
    p_hfat_id IN SFB_HELP_FORM_ATTRIBUTES.HFAT_ID%TYPE /*PK*/ ) 
  RETURN SFB_HELP_FORM_ATTRIBUTES.HFAT_NAME%TYPE;
 
  PROCEDURE set_hfat_required_yn ( 
    p_hfat_id          IN SFB_HELP_FORM_ATTRIBUTES.HFAT_ID%TYPE /*PK*/, 
    p_hfat_required_yn IN SFB_HELP_FORM_ATTRIBUTES.HFAT_REQUIRED_YN%TYPE );
 
  PROCEDURE set_hfat_remark ( 
    p_hfat_id     IN SFB_HELP_FORM_ATTRIBUTES.HFAT_ID%TYPE /*PK*/, 
    p_hfat_remark IN SFB_HELP_FORM_ATTRIBUTES.HFAT_REMARK%TYPE );
 
  PROCEDURE set_hfat_valid_from ( 
    p_hfat_id         IN SFB_HELP_FORM_ATTRIBUTES.HFAT_ID%TYPE /*PK*/, 
    p_hfat_valid_from IN SFB_HELP_FORM_ATTRIBUTES.HFAT_VALID_FROM%TYPE );
 
  PROCEDURE set_hfat_valid_to ( 
    p_hfat_id       IN SFB_HELP_FORM_ATTRIBUTES.HFAT_ID%TYPE /*PK*/, 
    p_hfat_valid_to IN SFB_HELP_FORM_ATTRIBUTES.HFAT_VALID_TO%TYPE );
 
  PROCEDURE set_hfat_deleted_yn ( 
    p_hfat_id         IN SFB_HELP_FORM_ATTRIBUTES.HFAT_ID%TYPE /*PK*/, 
    p_hfat_deleted_yn IN SFB_HELP_FORM_ATTRIBUTES.HFAT_DELETED_YN%TYPE );
 
  PROCEDURE set_hfat_attr_fk ( 
    p_hfat_id      IN SFB_HELP_FORM_ATTRIBUTES.HFAT_ID%TYPE /*PK*/, 
    p_hfat_attr_fk IN SFB_HELP_FORM_ATTRIBUTES.HFAT_ATTR_FK%TYPE );
 
  PROCEDURE set_hfat_jason_fk ( 
    p_hfat_id       IN SFB_HELP_FORM_ATTRIBUTES.HFAT_ID%TYPE /*PK*/, 
    p_hfat_jason_fk IN SFB_HELP_FORM_ATTRIBUTES.HFAT_JASON_FK%TYPE );
 
  PROCEDURE set_hfat_name ( 
    p_hfat_id   IN SFB_HELP_FORM_ATTRIBUTES.HFAT_ID%TYPE /*PK*/, 
    p_hfat_name IN SFB_HELP_FORM_ATTRIBUTES.HFAT_NAME%TYPE );
 
  FUNCTION get_default_row 
  RETURN SFB_HELP_FORM_ATTRIBUTES%ROWTYPE; 
  /* 
  Helper to get a prepopulated row with the table defaults from the dictionary. 
  */
 
END SFB_HELP_FORM_ATTRIBUTES_PKG;
/

create or replace PACKAGE BODY       SFB_HELP_FORM_ATTRIBUTES_PKG IS 
  /* 
  This is the API for the table SFB_HELP_FORM_ATTRIBUTES. 
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
    p_hfat_id IN SFB_HELP_FORM_ATTRIBUTES.HFAT_ID%TYPE /*PK*/ ) 
  RETURN BOOLEAN 
  IS 
    v_return BOOLEAN := FALSE; 
    v_dummy  PLS_INTEGER; 
    CURSOR   cur_bool IS 
      SELECT 1 FROM SFB_HELP_FORM_ATTRIBUTES 
      WHERE 
        HFAT_ID = p_hfat_id; 
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
    p_hfat_id IN SFB_HELP_FORM_ATTRIBUTES.HFAT_ID%TYPE /*PK*/ ) 
  RETURN VARCHAR2 
  IS 
  BEGIN 
    RETURN 
      CASE 
        WHEN row_exists( 
          p_hfat_id => p_hfat_id ) 
        THEN 'Y' 
        ELSE 'N' 
      END; 
  END;
 
  FUNCTION create_row ( 
    p_hfat_id          IN SFB_HELP_FORM_ATTRIBUTES.HFAT_ID%TYPE            DEFAULT "SFB_HFAT_SEQ"."NEXTVAL" /*PK*/,
    p_hfat_required_yn IN SFB_HELP_FORM_ATTRIBUTES.HFAT_REQUIRED_YN%TYPE   DEFAULT 'NO',
    p_hfat_remark      IN SFB_HELP_FORM_ATTRIBUTES.HFAT_REMARK%TYPE        DEFAULT NULL,
    p_hfat_valid_from  IN SFB_HELP_FORM_ATTRIBUTES.HFAT_VALID_FROM%TYPE    DEFAULT sysdate ,
    p_hfat_valid_to    IN SFB_HELP_FORM_ATTRIBUTES.HFAT_VALID_TO%TYPE      DEFAULT TO_DATE('31.12.2999', 'DD.MM.YYYY') ,
    p_hfat_deleted_yn  IN SFB_HELP_FORM_ATTRIBUTES.HFAT_DELETED_YN%TYPE    DEFAULT 'NO' ,
    p_hfat_attr_fk     IN SFB_HELP_FORM_ATTRIBUTES.HFAT_ATTR_FK%TYPE        /*FK*/,
    p_hfat_jason_fk    IN SFB_HELP_FORM_ATTRIBUTES.HFAT_JASON_FK%TYPE       /*FK*/,
    p_hfat_name        IN SFB_HELP_FORM_ATTRIBUTES.HFAT_NAME%TYPE          DEFAULT NULL ) 
  RETURN SFB_HELP_FORM_ATTRIBUTES.HFAT_ID%TYPE 
  IS 
    v_return SFB_HELP_FORM_ATTRIBUTES.HFAT_ID%TYPE;  
  BEGIN 
    INSERT INTO SFB_HELP_FORM_ATTRIBUTES ( 
      HFAT_ID /*PK*/,
      HFAT_REQUIRED_YN,
      HFAT_REMARK,
      HFAT_CREATED,
      HFAT_CREATED_BY,
      HFAT_UPDATED,
      HFAT_UPDATED_BY,
      HFAT_VALID_FROM,
      HFAT_VALID_TO,
      HFAT_DELETED_YN,
      HFAT_ATTR_FK /*FK*/,
      HFAT_JASON_FK /*FK*/,
      HFAT_NAME ) 
    VALUES ( 
      p_hfat_id,
      p_hfat_required_yn,
      p_hfat_remark,
      systimestamp,
      coalesce(sys_context('apex$session','app_user'), sys_context('userenv','os_user'), sys_context('userenv','session_user')),
      systimestamp,
      coalesce(sys_context('apex$session','app_user'), sys_context('userenv','os_user'), sys_context('userenv','session_user')),
      p_hfat_valid_from,
      p_hfat_valid_to,
      p_hfat_deleted_yn,
      p_hfat_attr_fk,
      p_hfat_jason_fk,
      p_hfat_name ) 
    RETURN  
      HFAT_ID 
    INTO 
      v_return; 
    RETURN v_return; 
  END create_row;
 
  PROCEDURE create_row ( 
    p_hfat_id          IN SFB_HELP_FORM_ATTRIBUTES.HFAT_ID%TYPE            DEFAULT "SFB_HFAT_SEQ"."NEXTVAL" /*PK*/,
    p_hfat_required_yn IN SFB_HELP_FORM_ATTRIBUTES.HFAT_REQUIRED_YN%TYPE   DEFAULT 'NO',
    p_hfat_remark      IN SFB_HELP_FORM_ATTRIBUTES.HFAT_REMARK%TYPE        DEFAULT NULL,
    p_hfat_valid_from  IN SFB_HELP_FORM_ATTRIBUTES.HFAT_VALID_FROM%TYPE    DEFAULT sysdate ,
    p_hfat_valid_to    IN SFB_HELP_FORM_ATTRIBUTES.HFAT_VALID_TO%TYPE      DEFAULT TO_DATE('31.12.2999', 'DD.MM.YYYY') ,
    p_hfat_deleted_yn  IN SFB_HELP_FORM_ATTRIBUTES.HFAT_DELETED_YN%TYPE    DEFAULT 'NO' ,
    p_hfat_attr_fk     IN SFB_HELP_FORM_ATTRIBUTES.HFAT_ATTR_FK%TYPE        /*FK*/,
    p_hfat_jason_fk    IN SFB_HELP_FORM_ATTRIBUTES.HFAT_JASON_FK%TYPE       /*FK*/,
    p_hfat_name        IN SFB_HELP_FORM_ATTRIBUTES.HFAT_NAME%TYPE          DEFAULT NULL ) 
  IS 
  BEGIN 
    INSERT INTO SFB_HELP_FORM_ATTRIBUTES ( 
      HFAT_ID /*PK*/,
      HFAT_REQUIRED_YN,
      HFAT_REMARK,
      HFAT_CREATED,
      HFAT_CREATED_BY,
      HFAT_UPDATED,
      HFAT_UPDATED_BY,
      HFAT_VALID_FROM,
      HFAT_VALID_TO,
      HFAT_DELETED_YN,
      HFAT_ATTR_FK /*FK*/,
      HFAT_JASON_FK /*FK*/,
      HFAT_NAME ) 
    VALUES ( 
      p_hfat_id,
      p_hfat_required_yn,
      p_hfat_remark,
      systimestamp,
      coalesce(sys_context('apex$session','app_user'), sys_context('userenv','os_user'), sys_context('userenv','session_user')),
      systimestamp,
      coalesce(sys_context('apex$session','app_user'), sys_context('userenv','os_user'), sys_context('userenv','session_user')),
      p_hfat_valid_from,
      p_hfat_valid_to,
      p_hfat_deleted_yn,
      p_hfat_attr_fk,
      p_hfat_jason_fk,
      p_hfat_name ); 
  END create_row;
 
  FUNCTION create_row ( 
    p_row IN SFB_HELP_FORM_ATTRIBUTES%ROWTYPE ) 
  RETURN SFB_HELP_FORM_ATTRIBUTES.HFAT_ID%TYPE 
  IS 
  BEGIN 
    RETURN create_row ( 
      p_hfat_id          => p_row.HFAT_ID /*PK*/,
      p_hfat_required_yn => p_row.HFAT_REQUIRED_YN,
      p_hfat_remark      => p_row.HFAT_REMARK,
      p_hfat_valid_from  => p_row.HFAT_VALID_FROM,
      p_hfat_valid_to    => p_row.HFAT_VALID_TO,
      p_hfat_deleted_yn  => p_row.HFAT_DELETED_YN,
      p_hfat_attr_fk     => p_row.HFAT_ATTR_FK /*FK*/,
      p_hfat_jason_fk    => p_row.HFAT_JASON_FK /*FK*/,
      p_hfat_name        => p_row.HFAT_NAME ); 
  END create_row;
 
  PROCEDURE create_row ( 
    p_row IN SFB_HELP_FORM_ATTRIBUTES%ROWTYPE ) 
  IS 
  BEGIN 
    create_row ( 
      p_hfat_id          => p_row.HFAT_ID /*PK*/,
      p_hfat_required_yn => p_row.HFAT_REQUIRED_YN,
      p_hfat_remark      => p_row.HFAT_REMARK,
      p_hfat_valid_from  => p_row.HFAT_VALID_FROM,
      p_hfat_valid_to    => p_row.HFAT_VALID_TO,
      p_hfat_deleted_yn  => p_row.HFAT_DELETED_YN,
      p_hfat_attr_fk     => p_row.HFAT_ATTR_FK /*FK*/,
      p_hfat_jason_fk    => p_row.HFAT_JASON_FK /*FK*/,
      p_hfat_name        => p_row.HFAT_NAME ); 
  END create_row;
 
  
 
 
  FUNCTION read_row ( 
    p_hfat_id IN SFB_HELP_FORM_ATTRIBUTES.HFAT_ID%TYPE /*PK*/ ) 
  RETURN SFB_HELP_FORM_ATTRIBUTES%ROWTYPE 
  IS 
    v_row SFB_HELP_FORM_ATTRIBUTES%ROWTYPE; 
    CURSOR cur_row IS 
      SELECT * FROM SFB_HELP_FORM_ATTRIBUTES 
      WHERE 
        HFAT_ID = p_hfat_id; 
  BEGIN 
    OPEN cur_row; 
    FETCH cur_row INTO v_row; 
    CLOSE cur_row; 
    RETURN v_row; 
  END read_row;
 
  PROCEDURE read_row ( 
    p_hfat_id          IN            SFB_HELP_FORM_ATTRIBUTES.HFAT_ID%TYPE /*PK*/,
    p_hfat_required_yn    OUT NOCOPY SFB_HELP_FORM_ATTRIBUTES.HFAT_REQUIRED_YN%TYPE,
    p_hfat_remark         OUT NOCOPY SFB_HELP_FORM_ATTRIBUTES.HFAT_REMARK%TYPE,
    p_hfat_created        OUT NOCOPY SFB_HELP_FORM_ATTRIBUTES.HFAT_CREATED%TYPE,
    p_hfat_created_by     OUT NOCOPY SFB_HELP_FORM_ATTRIBUTES.HFAT_CREATED_BY%TYPE,
    p_hfat_updated        OUT NOCOPY SFB_HELP_FORM_ATTRIBUTES.HFAT_UPDATED%TYPE,
    p_hfat_updated_by     OUT NOCOPY SFB_HELP_FORM_ATTRIBUTES.HFAT_UPDATED_BY%TYPE,
    p_hfat_valid_from     OUT NOCOPY SFB_HELP_FORM_ATTRIBUTES.HFAT_VALID_FROM%TYPE,
    p_hfat_valid_to       OUT NOCOPY SFB_HELP_FORM_ATTRIBUTES.HFAT_VALID_TO%TYPE,
    p_hfat_deleted_yn     OUT NOCOPY SFB_HELP_FORM_ATTRIBUTES.HFAT_DELETED_YN%TYPE,
    p_hfat_attr_fk        OUT NOCOPY SFB_HELP_FORM_ATTRIBUTES.HFAT_ATTR_FK%TYPE /*FK*/,
    p_hfat_jason_fk       OUT NOCOPY SFB_HELP_FORM_ATTRIBUTES.HFAT_JASON_FK%TYPE /*FK*/,
    p_hfat_name           OUT NOCOPY SFB_HELP_FORM_ATTRIBUTES.HFAT_NAME%TYPE ) 
  IS 
    v_row SFB_HELP_FORM_ATTRIBUTES%ROWTYPE; 
  BEGIN 
    v_row := read_row ( 
      p_hfat_id => p_hfat_id ); 
    p_hfat_required_yn := v_row.HFAT_REQUIRED_YN; 
    p_hfat_remark      := v_row.HFAT_REMARK; 
    p_hfat_created     := v_row.HFAT_CREATED; 
    p_hfat_created_by  := v_row.HFAT_CREATED_BY; 
    p_hfat_updated     := v_row.HFAT_UPDATED; 
    p_hfat_updated_by  := v_row.HFAT_UPDATED_BY; 
    p_hfat_valid_from  := v_row.HFAT_VALID_FROM; 
    p_hfat_valid_to    := v_row.HFAT_VALID_TO; 
    p_hfat_deleted_yn  := v_row.HFAT_DELETED_YN; 
    p_hfat_attr_fk     := v_row.HFAT_ATTR_FK; 
    p_hfat_jason_fk    := v_row.HFAT_JASON_FK; 
    p_hfat_name        := v_row.HFAT_NAME;  
  END read_row;
 
 
 
  FUNCTION update_row ( 
    p_hfat_id          IN SFB_HELP_FORM_ATTRIBUTES.HFAT_ID%TYPE /*PK*/,
    p_hfat_required_yn IN SFB_HELP_FORM_ATTRIBUTES.HFAT_REQUIRED_YN%TYPE,
    p_hfat_remark      IN SFB_HELP_FORM_ATTRIBUTES.HFAT_REMARK%TYPE,
    p_hfat_valid_from  IN SFB_HELP_FORM_ATTRIBUTES.HFAT_VALID_FROM%TYPE,
    p_hfat_valid_to    IN SFB_HELP_FORM_ATTRIBUTES.HFAT_VALID_TO%TYPE,
    p_hfat_deleted_yn  IN SFB_HELP_FORM_ATTRIBUTES.HFAT_DELETED_YN%TYPE,
    p_hfat_attr_fk     IN SFB_HELP_FORM_ATTRIBUTES.HFAT_ATTR_FK%TYPE /*FK*/,
    p_hfat_jason_fk    IN SFB_HELP_FORM_ATTRIBUTES.HFAT_JASON_FK%TYPE /*FK*/,
    p_hfat_name        IN SFB_HELP_FORM_ATTRIBUTES.HFAT_NAME%TYPE ) 
  RETURN SFB_HELP_FORM_ATTRIBUTES.HFAT_ID%TYPE 
  IS 
    v_return SFB_HELP_FORM_ATTRIBUTES.HFAT_ID%TYPE;  
  BEGIN 
    UPDATE 
      SFB_HELP_FORM_ATTRIBUTES 
    SET 
      HFAT_REQUIRED_YN = p_hfat_required_yn,
      HFAT_REMARK      = p_hfat_remark,
      HFAT_UPDATED     = systimestamp,
      HFAT_UPDATED_BY  = coalesce(sys_context('apex$session','app_user'), sys_context('userenv','os_user'), sys_context('userenv','session_user')),
      HFAT_VALID_FROM  = p_hfat_valid_from,
      HFAT_VALID_TO    = p_hfat_valid_to,
      HFAT_DELETED_YN  = p_hfat_deleted_yn,
      HFAT_ATTR_FK     = p_hfat_attr_fk /*FK*/,
      HFAT_JASON_FK    = p_hfat_jason_fk /*FK*/,
      HFAT_NAME        = p_hfat_name 
    WHERE 
      HFAT_ID = p_hfat_id 
    RETURN  
      HFAT_ID 
    INTO 
      v_return; 
    RETURN v_return; 
  END update_row;
 
  PROCEDURE update_row ( 
    p_hfat_id          IN SFB_HELP_FORM_ATTRIBUTES.HFAT_ID%TYPE /*PK*/,
    p_hfat_required_yn IN SFB_HELP_FORM_ATTRIBUTES.HFAT_REQUIRED_YN%TYPE,
    p_hfat_remark      IN SFB_HELP_FORM_ATTRIBUTES.HFAT_REMARK%TYPE,
    p_hfat_valid_from  IN SFB_HELP_FORM_ATTRIBUTES.HFAT_VALID_FROM%TYPE,
    p_hfat_valid_to    IN SFB_HELP_FORM_ATTRIBUTES.HFAT_VALID_TO%TYPE,
    p_hfat_deleted_yn  IN SFB_HELP_FORM_ATTRIBUTES.HFAT_DELETED_YN%TYPE,
    p_hfat_attr_fk     IN SFB_HELP_FORM_ATTRIBUTES.HFAT_ATTR_FK%TYPE /*FK*/,
    p_hfat_jason_fk    IN SFB_HELP_FORM_ATTRIBUTES.HFAT_JASON_FK%TYPE /*FK*/,
    p_hfat_name        IN SFB_HELP_FORM_ATTRIBUTES.HFAT_NAME%TYPE ) 
  IS 
  BEGIN 
    UPDATE 
      SFB_HELP_FORM_ATTRIBUTES 
    SET 
      HFAT_REQUIRED_YN = p_hfat_required_yn,
      HFAT_REMARK      = p_hfat_remark,
      HFAT_UPDATED     = systimestamp,
      HFAT_UPDATED_BY  = coalesce(sys_context('apex$session','app_user'), sys_context('userenv','os_user'), sys_context('userenv','session_user')),
      HFAT_VALID_FROM  = p_hfat_valid_from,
      HFAT_VALID_TO    = p_hfat_valid_to,
      HFAT_DELETED_YN  = p_hfat_deleted_yn,
      HFAT_ATTR_FK     = p_hfat_attr_fk /*FK*/,
      HFAT_JASON_FK    = p_hfat_jason_fk /*FK*/,
      HFAT_NAME        = p_hfat_name 
    WHERE 
      HFAT_ID = p_hfat_id; 
  END update_row;
 
  FUNCTION update_row ( 
    p_row IN SFB_HELP_FORM_ATTRIBUTES%ROWTYPE ) 
  RETURN SFB_HELP_FORM_ATTRIBUTES.HFAT_ID%TYPE 
  IS 
  BEGIN 
    RETURN update_row ( 
      p_hfat_id          => p_row.HFAT_ID /*PK*/,
      p_hfat_required_yn => p_row.HFAT_REQUIRED_YN,
      p_hfat_remark      => p_row.HFAT_REMARK,
      p_hfat_valid_from  => p_row.HFAT_VALID_FROM,
      p_hfat_valid_to    => p_row.HFAT_VALID_TO,
      p_hfat_deleted_yn  => p_row.HFAT_DELETED_YN,
      p_hfat_attr_fk     => p_row.HFAT_ATTR_FK /*FK*/,
      p_hfat_jason_fk    => p_row.HFAT_JASON_FK /*FK*/,
      p_hfat_name        => p_row.HFAT_NAME ); 
  END update_row;
 
  PROCEDURE update_row ( 
    p_row IN SFB_HELP_FORM_ATTRIBUTES%ROWTYPE ) 
  IS 
  BEGIN 
    update_row ( 
      p_hfat_id          => p_row.HFAT_ID /*PK*/,
      p_hfat_required_yn => p_row.HFAT_REQUIRED_YN,
      p_hfat_remark      => p_row.HFAT_REMARK,
      p_hfat_valid_from  => p_row.HFAT_VALID_FROM,
      p_hfat_valid_to    => p_row.HFAT_VALID_TO,
      p_hfat_deleted_yn  => p_row.HFAT_DELETED_YN,
      p_hfat_attr_fk     => p_row.HFAT_ATTR_FK /*FK*/,
      p_hfat_jason_fk    => p_row.HFAT_JASON_FK /*FK*/,
      p_hfat_name        => p_row.HFAT_NAME ); 
  END update_row;
 
 
  PROCEDURE delete_row ( 
    p_hfat_id IN SFB_HELP_FORM_ATTRIBUTES.HFAT_ID%TYPE /*PK*/ ) 
  IS 
  BEGIN 
    DELETE FROM SFB_HELP_FORM_ATTRIBUTES 
    WHERE 
      HFAT_ID = p_hfat_id; 
  END delete_row;
 
 
  FUNCTION create_or_update_row ( 
    p_hfat_id          IN SFB_HELP_FORM_ATTRIBUTES.HFAT_ID%TYPE /*PK*/,
    p_hfat_required_yn IN SFB_HELP_FORM_ATTRIBUTES.HFAT_REQUIRED_YN%TYPE,
    p_hfat_remark      IN SFB_HELP_FORM_ATTRIBUTES.HFAT_REMARK%TYPE,
    p_hfat_valid_from  IN SFB_HELP_FORM_ATTRIBUTES.HFAT_VALID_FROM%TYPE,
    p_hfat_valid_to    IN SFB_HELP_FORM_ATTRIBUTES.HFAT_VALID_TO%TYPE,
    p_hfat_deleted_yn  IN SFB_HELP_FORM_ATTRIBUTES.HFAT_DELETED_YN%TYPE,
    p_hfat_attr_fk     IN SFB_HELP_FORM_ATTRIBUTES.HFAT_ATTR_FK%TYPE /*FK*/,
    p_hfat_jason_fk    IN SFB_HELP_FORM_ATTRIBUTES.HFAT_JASON_FK%TYPE /*FK*/,
    p_hfat_name        IN SFB_HELP_FORM_ATTRIBUTES.HFAT_NAME%TYPE ) 
  RETURN SFB_HELP_FORM_ATTRIBUTES.HFAT_ID%TYPE 
  IS 
  BEGIN 
    IF row_exists( 
      p_hfat_id => p_hfat_id 
    ) 
    THEN 
      RETURN update_row ( 
        p_hfat_id          => p_hfat_id /*PK*/,
        p_hfat_required_yn => p_hfat_required_yn,
        p_hfat_remark      => p_hfat_remark,
        p_hfat_valid_from  => p_hfat_valid_from,
        p_hfat_valid_to    => p_hfat_valid_to,
        p_hfat_deleted_yn  => p_hfat_deleted_yn,
        p_hfat_attr_fk     => p_hfat_attr_fk /*FK*/,
        p_hfat_jason_fk    => p_hfat_jason_fk /*FK*/,
        p_hfat_name        => p_hfat_name ); 
    ELSE 
      RETURN create_row ( 
        p_hfat_id          => p_hfat_id /*PK*/,
        p_hfat_required_yn => p_hfat_required_yn,
        p_hfat_remark      => p_hfat_remark,
        p_hfat_valid_from  => p_hfat_valid_from,
        p_hfat_valid_to    => p_hfat_valid_to,
        p_hfat_deleted_yn  => p_hfat_deleted_yn,
        p_hfat_attr_fk     => p_hfat_attr_fk /*FK*/,
        p_hfat_jason_fk    => p_hfat_jason_fk /*FK*/,
        p_hfat_name        => p_hfat_name ); 
    END IF; 
  END create_or_update_row;
 
  PROCEDURE create_or_update_row ( 
    p_hfat_id          IN SFB_HELP_FORM_ATTRIBUTES.HFAT_ID%TYPE /*PK*/,
    p_hfat_required_yn IN SFB_HELP_FORM_ATTRIBUTES.HFAT_REQUIRED_YN%TYPE,
    p_hfat_remark      IN SFB_HELP_FORM_ATTRIBUTES.HFAT_REMARK%TYPE,
    p_hfat_valid_from  IN SFB_HELP_FORM_ATTRIBUTES.HFAT_VALID_FROM%TYPE,
    p_hfat_valid_to    IN SFB_HELP_FORM_ATTRIBUTES.HFAT_VALID_TO%TYPE,
    p_hfat_deleted_yn  IN SFB_HELP_FORM_ATTRIBUTES.HFAT_DELETED_YN%TYPE,
    p_hfat_attr_fk     IN SFB_HELP_FORM_ATTRIBUTES.HFAT_ATTR_FK%TYPE /*FK*/,
    p_hfat_jason_fk    IN SFB_HELP_FORM_ATTRIBUTES.HFAT_JASON_FK%TYPE /*FK*/,
    p_hfat_name        IN SFB_HELP_FORM_ATTRIBUTES.HFAT_NAME%TYPE ) 
  IS 
  BEGIN 
    IF row_exists( 
      p_hfat_id => p_hfat_id 
    ) 
    THEN 
      update_row ( 
        p_hfat_id          => p_hfat_id /*PK*/,
        p_hfat_required_yn => p_hfat_required_yn,
        p_hfat_remark      => p_hfat_remark,
        p_hfat_valid_from  => p_hfat_valid_from,
        p_hfat_valid_to    => p_hfat_valid_to,
        p_hfat_deleted_yn  => p_hfat_deleted_yn,
        p_hfat_attr_fk     => p_hfat_attr_fk /*FK*/,
        p_hfat_jason_fk    => p_hfat_jason_fk /*FK*/,
        p_hfat_name        => p_hfat_name ); 
    ELSE 
      create_row ( 
        p_hfat_id          => p_hfat_id /*PK*/,
        p_hfat_required_yn => p_hfat_required_yn,
        p_hfat_remark      => p_hfat_remark,
        p_hfat_valid_from  => p_hfat_valid_from,
        p_hfat_valid_to    => p_hfat_valid_to,
        p_hfat_deleted_yn  => p_hfat_deleted_yn,
        p_hfat_attr_fk     => p_hfat_attr_fk /*FK*/,
        p_hfat_jason_fk    => p_hfat_jason_fk /*FK*/,
        p_hfat_name        => p_hfat_name ); 
    END IF; 
  END create_or_update_row;
 
  FUNCTION create_or_update_row ( 
    p_row IN SFB_HELP_FORM_ATTRIBUTES%ROWTYPE ) 
  RETURN SFB_HELP_FORM_ATTRIBUTES.HFAT_ID%TYPE 
  IS 
  BEGIN 
    IF row_exists( 
      p_hfat_id => p_row.HFAT_ID 
    ) 
    THEN 
      RETURN update_row ( 
        p_hfat_id          => p_row.HFAT_ID /*PK*/,
        p_hfat_required_yn => p_row.HFAT_REQUIRED_YN,
        p_hfat_remark      => p_row.HFAT_REMARK,
        p_hfat_valid_from  => p_row.HFAT_VALID_FROM,
        p_hfat_valid_to    => p_row.HFAT_VALID_TO,
        p_hfat_deleted_yn  => p_row.HFAT_DELETED_YN,
        p_hfat_attr_fk     => p_row.HFAT_ATTR_FK /*FK*/,
        p_hfat_jason_fk    => p_row.HFAT_JASON_FK /*FK*/,
        p_hfat_name        => p_row.HFAT_NAME ); 
    ELSE 
      RETURN create_row ( 
        p_hfat_id          => p_row.HFAT_ID /*PK*/,
        p_hfat_required_yn => p_row.HFAT_REQUIRED_YN,
        p_hfat_remark      => p_row.HFAT_REMARK,
        p_hfat_valid_from  => p_row.HFAT_VALID_FROM,
        p_hfat_valid_to    => p_row.HFAT_VALID_TO,
        p_hfat_deleted_yn  => p_row.HFAT_DELETED_YN,
        p_hfat_attr_fk     => p_row.HFAT_ATTR_FK /*FK*/,
        p_hfat_jason_fk    => p_row.HFAT_JASON_FK /*FK*/,
        p_hfat_name        => p_row.HFAT_NAME ); 
    END IF; 
  END create_or_update_row;
 
  PROCEDURE create_or_update_row ( 
    p_row IN SFB_HELP_FORM_ATTRIBUTES%ROWTYPE ) 
  IS 
  BEGIN 
    IF row_exists( 
      p_hfat_id => p_row.HFAT_ID 
    ) 
    THEN 
      update_row ( 
        p_hfat_id          => p_row.HFAT_ID /*PK*/,
        p_hfat_required_yn => p_row.HFAT_REQUIRED_YN,
        p_hfat_remark      => p_row.HFAT_REMARK,
        p_hfat_valid_from  => p_row.HFAT_VALID_FROM,
        p_hfat_valid_to    => p_row.HFAT_VALID_TO,
        p_hfat_deleted_yn  => p_row.HFAT_DELETED_YN,
        p_hfat_attr_fk     => p_row.HFAT_ATTR_FK /*FK*/,
        p_hfat_jason_fk    => p_row.HFAT_JASON_FK /*FK*/,
        p_hfat_name        => p_row.HFAT_NAME ); 
    ELSE 
      create_row ( 
        p_hfat_id          => p_row.HFAT_ID /*PK*/,
        p_hfat_required_yn => p_row.HFAT_REQUIRED_YN,
        p_hfat_remark      => p_row.HFAT_REMARK,
        p_hfat_valid_from  => p_row.HFAT_VALID_FROM,
        p_hfat_valid_to    => p_row.HFAT_VALID_TO,
        p_hfat_deleted_yn  => p_row.HFAT_DELETED_YN,
        p_hfat_attr_fk     => p_row.HFAT_ATTR_FK /*FK*/,
        p_hfat_jason_fk    => p_row.HFAT_JASON_FK /*FK*/,
        p_hfat_name        => p_row.HFAT_NAME ); 
    END IF; 
  END create_or_update_row;
 
  FUNCTION get_hfat_required_yn ( 
    p_hfat_id IN SFB_HELP_FORM_ATTRIBUTES.HFAT_ID%TYPE /*PK*/ ) 
  RETURN SFB_HELP_FORM_ATTRIBUTES.HFAT_REQUIRED_YN%TYPE 
  IS 
  BEGIN 
    RETURN read_row ( 
      p_hfat_id => p_hfat_id ).HFAT_REQUIRED_YN; 
  END get_hfat_required_yn;
 
  FUNCTION get_hfat_remark ( 
    p_hfat_id IN SFB_HELP_FORM_ATTRIBUTES.HFAT_ID%TYPE /*PK*/ ) 
  RETURN SFB_HELP_FORM_ATTRIBUTES.HFAT_REMARK%TYPE 
  IS 
  BEGIN 
    RETURN read_row ( 
      p_hfat_id => p_hfat_id ).HFAT_REMARK; 
  END get_hfat_remark;
 
  FUNCTION get_hfat_created ( 
    p_hfat_id IN SFB_HELP_FORM_ATTRIBUTES.HFAT_ID%TYPE /*PK*/ ) 
  RETURN SFB_HELP_FORM_ATTRIBUTES.HFAT_CREATED%TYPE 
  IS 
  BEGIN 
    RETURN read_row ( 
      p_hfat_id => p_hfat_id ).HFAT_CREATED; 
  END get_hfat_created;
 
  FUNCTION get_hfat_created_by ( 
    p_hfat_id IN SFB_HELP_FORM_ATTRIBUTES.HFAT_ID%TYPE /*PK*/ ) 
  RETURN SFB_HELP_FORM_ATTRIBUTES.HFAT_CREATED_BY%TYPE 
  IS 
  BEGIN 
    RETURN read_row ( 
      p_hfat_id => p_hfat_id ).HFAT_CREATED_BY; 
  END get_hfat_created_by;
 
  FUNCTION get_hfat_updated ( 
    p_hfat_id IN SFB_HELP_FORM_ATTRIBUTES.HFAT_ID%TYPE /*PK*/ ) 
  RETURN SFB_HELP_FORM_ATTRIBUTES.HFAT_UPDATED%TYPE 
  IS 
  BEGIN 
    RETURN read_row ( 
      p_hfat_id => p_hfat_id ).HFAT_UPDATED; 
  END get_hfat_updated;
 
  FUNCTION get_hfat_updated_by ( 
    p_hfat_id IN SFB_HELP_FORM_ATTRIBUTES.HFAT_ID%TYPE /*PK*/ ) 
  RETURN SFB_HELP_FORM_ATTRIBUTES.HFAT_UPDATED_BY%TYPE 
  IS 
  BEGIN 
    RETURN read_row ( 
      p_hfat_id => p_hfat_id ).HFAT_UPDATED_BY; 
  END get_hfat_updated_by;
 
  FUNCTION get_hfat_valid_from ( 
    p_hfat_id IN SFB_HELP_FORM_ATTRIBUTES.HFAT_ID%TYPE /*PK*/ ) 
  RETURN SFB_HELP_FORM_ATTRIBUTES.HFAT_VALID_FROM%TYPE 
  IS 
  BEGIN 
    RETURN read_row ( 
      p_hfat_id => p_hfat_id ).HFAT_VALID_FROM; 
  END get_hfat_valid_from;
 
  FUNCTION get_hfat_valid_to ( 
    p_hfat_id IN SFB_HELP_FORM_ATTRIBUTES.HFAT_ID%TYPE /*PK*/ ) 
  RETURN SFB_HELP_FORM_ATTRIBUTES.HFAT_VALID_TO%TYPE 
  IS 
  BEGIN 
    RETURN read_row ( 
      p_hfat_id => p_hfat_id ).HFAT_VALID_TO; 
  END get_hfat_valid_to;
 
  FUNCTION get_hfat_deleted_yn ( 
    p_hfat_id IN SFB_HELP_FORM_ATTRIBUTES.HFAT_ID%TYPE /*PK*/ ) 
  RETURN SFB_HELP_FORM_ATTRIBUTES.HFAT_DELETED_YN%TYPE 
  IS 
  BEGIN 
    RETURN read_row ( 
      p_hfat_id => p_hfat_id ).HFAT_DELETED_YN; 
  END get_hfat_deleted_yn;
 
  FUNCTION get_hfat_attr_fk ( 
    p_hfat_id IN SFB_HELP_FORM_ATTRIBUTES.HFAT_ID%TYPE /*PK*/ ) 
  RETURN SFB_HELP_FORM_ATTRIBUTES.HFAT_ATTR_FK%TYPE 
  IS 
  BEGIN 
    RETURN read_row ( 
      p_hfat_id => p_hfat_id ).HFAT_ATTR_FK; 
  END get_hfat_attr_fk;
 
  FUNCTION get_hfat_jason_fk ( 
    p_hfat_id IN SFB_HELP_FORM_ATTRIBUTES.HFAT_ID%TYPE /*PK*/ ) 
  RETURN SFB_HELP_FORM_ATTRIBUTES.HFAT_JASON_FK%TYPE 
  IS 
  BEGIN 
    RETURN read_row ( 
      p_hfat_id => p_hfat_id ).HFAT_JASON_FK; 
  END get_hfat_jason_fk;
 
  FUNCTION get_hfat_name ( 
    p_hfat_id IN SFB_HELP_FORM_ATTRIBUTES.HFAT_ID%TYPE /*PK*/ ) 
  RETURN SFB_HELP_FORM_ATTRIBUTES.HFAT_NAME%TYPE 
  IS 
  BEGIN 
    RETURN read_row ( 
      p_hfat_id => p_hfat_id ).HFAT_NAME; 
  END get_hfat_name;
 
  PROCEDURE set_hfat_required_yn ( 
    p_hfat_id          IN SFB_HELP_FORM_ATTRIBUTES.HFAT_ID%TYPE /*PK*/, 
    p_hfat_required_yn IN SFB_HELP_FORM_ATTRIBUTES.HFAT_REQUIRED_YN%TYPE ) 
  IS 
  BEGIN 
    UPDATE 
      SFB_HELP_FORM_ATTRIBUTES 
    SET 
      HFAT_REQUIRED_YN = p_hfat_required_yn,
      HFAT_UPDATED     = systimestamp,
      HFAT_UPDATED_BY  = coalesce(sys_context('apex$session','app_user'), sys_context('userenv','os_user'), sys_context('userenv','session_user')) 
    WHERE 
      HFAT_ID = p_hfat_id; 
  END set_hfat_required_yn;
 
  PROCEDURE set_hfat_remark ( 
    p_hfat_id     IN SFB_HELP_FORM_ATTRIBUTES.HFAT_ID%TYPE /*PK*/, 
    p_hfat_remark IN SFB_HELP_FORM_ATTRIBUTES.HFAT_REMARK%TYPE ) 
  IS 
  BEGIN 
    UPDATE 
      SFB_HELP_FORM_ATTRIBUTES 
    SET 
      HFAT_REMARK     = p_hfat_remark,
      HFAT_UPDATED    = systimestamp,
      HFAT_UPDATED_BY = coalesce(sys_context('apex$session','app_user'), sys_context('userenv','os_user'), sys_context('userenv','session_user')) 
    WHERE 
      HFAT_ID = p_hfat_id; 
  END set_hfat_remark;
 
  PROCEDURE set_hfat_valid_from ( 
    p_hfat_id         IN SFB_HELP_FORM_ATTRIBUTES.HFAT_ID%TYPE /*PK*/, 
    p_hfat_valid_from IN SFB_HELP_FORM_ATTRIBUTES.HFAT_VALID_FROM%TYPE ) 
  IS 
  BEGIN 
    UPDATE 
      SFB_HELP_FORM_ATTRIBUTES 
    SET 
      HFAT_UPDATED    = systimestamp,
      HFAT_UPDATED_BY = coalesce(sys_context('apex$session','app_user'), sys_context('userenv','os_user'), sys_context('userenv','session_user')),
      HFAT_VALID_FROM = p_hfat_valid_from 
    WHERE 
      HFAT_ID = p_hfat_id; 
  END set_hfat_valid_from;
 
  PROCEDURE set_hfat_valid_to ( 
    p_hfat_id       IN SFB_HELP_FORM_ATTRIBUTES.HFAT_ID%TYPE /*PK*/, 
    p_hfat_valid_to IN SFB_HELP_FORM_ATTRIBUTES.HFAT_VALID_TO%TYPE ) 
  IS 
  BEGIN 
    UPDATE 
      SFB_HELP_FORM_ATTRIBUTES 
    SET 
      HFAT_UPDATED    = systimestamp,
      HFAT_UPDATED_BY = coalesce(sys_context('apex$session','app_user'), sys_context('userenv','os_user'), sys_context('userenv','session_user')),
      HFAT_VALID_TO   = p_hfat_valid_to 
    WHERE 
      HFAT_ID = p_hfat_id; 
  END set_hfat_valid_to;
 
  PROCEDURE set_hfat_deleted_yn ( 
    p_hfat_id         IN SFB_HELP_FORM_ATTRIBUTES.HFAT_ID%TYPE /*PK*/, 
    p_hfat_deleted_yn IN SFB_HELP_FORM_ATTRIBUTES.HFAT_DELETED_YN%TYPE ) 
  IS 
  BEGIN 
    UPDATE 
      SFB_HELP_FORM_ATTRIBUTES 
    SET 
      HFAT_UPDATED    = systimestamp,
      HFAT_UPDATED_BY = coalesce(sys_context('apex$session','app_user'), sys_context('userenv','os_user'), sys_context('userenv','session_user')),
      HFAT_DELETED_YN = p_hfat_deleted_yn 
    WHERE 
      HFAT_ID = p_hfat_id; 
  END set_hfat_deleted_yn;
 
  PROCEDURE set_hfat_attr_fk ( 
    p_hfat_id      IN SFB_HELP_FORM_ATTRIBUTES.HFAT_ID%TYPE /*PK*/, 
    p_hfat_attr_fk IN SFB_HELP_FORM_ATTRIBUTES.HFAT_ATTR_FK%TYPE ) 
  IS 
  BEGIN 
    UPDATE 
      SFB_HELP_FORM_ATTRIBUTES 
    SET 
      HFAT_UPDATED    = systimestamp,
      HFAT_UPDATED_BY = coalesce(sys_context('apex$session','app_user'), sys_context('userenv','os_user'), sys_context('userenv','session_user')),
      HFAT_ATTR_FK    = p_hfat_attr_fk /*FK*/ 
    WHERE 
      HFAT_ID = p_hfat_id; 
  END set_hfat_attr_fk;
 
  PROCEDURE set_hfat_jason_fk ( 
    p_hfat_id       IN SFB_HELP_FORM_ATTRIBUTES.HFAT_ID%TYPE /*PK*/, 
    p_hfat_jason_fk IN SFB_HELP_FORM_ATTRIBUTES.HFAT_JASON_FK%TYPE ) 
  IS 
  BEGIN 
    UPDATE 
      SFB_HELP_FORM_ATTRIBUTES 
    SET 
      HFAT_UPDATED    = systimestamp,
      HFAT_UPDATED_BY = coalesce(sys_context('apex$session','app_user'), sys_context('userenv','os_user'), sys_context('userenv','session_user')),
      HFAT_JASON_FK   = p_hfat_jason_fk /*FK*/ 
    WHERE 
      HFAT_ID = p_hfat_id; 
  END set_hfat_jason_fk;
 
  PROCEDURE set_hfat_name ( 
    p_hfat_id   IN SFB_HELP_FORM_ATTRIBUTES.HFAT_ID%TYPE /*PK*/, 
    p_hfat_name IN SFB_HELP_FORM_ATTRIBUTES.HFAT_NAME%TYPE ) 
  IS 
  BEGIN 
    UPDATE 
      SFB_HELP_FORM_ATTRIBUTES 
    SET 
      HFAT_UPDATED    = systimestamp,
      HFAT_UPDATED_BY = coalesce(sys_context('apex$session','app_user'), sys_context('userenv','os_user'), sys_context('userenv','session_user')),
      HFAT_NAME       = p_hfat_name 
    WHERE 
      HFAT_ID = p_hfat_id; 
  END set_hfat_name;
 
  FUNCTION get_default_row 
  RETURN SFB_HELP_FORM_ATTRIBUTES%ROWTYPE 
  IS 
    v_row SFB_HELP_FORM_ATTRIBUTES%ROWTYPE; 
  BEGIN 
    v_row.HFAT_ID          := "SFB_HFAT_SEQ"."NEXTVAL" /*PK*/;
    v_row.HFAT_REQUIRED_YN := 'NO';
    v_row.HFAT_CREATED     := sysdate ;
    v_row.HFAT_CREATED_BY  := ( coalesce(sys_context('apex$session', 'app_user'),  
                                                           sys_context('userenv', 'os_user'),  
                                                           sys_context('userenv', 'session_user')) ) ;
    v_row.HFAT_UPDATED     := sysdate ;
    v_row.HFAT_UPDATED_BY  := ( coalesce(sys_context('apex$session', 'app_user'),  
                                                           sys_context('userenv', 'os_user'),  
                                                           sys_context('userenv', 'session_user')) ) ;
    v_row.HFAT_VALID_FROM  := sysdate ;
    v_row.HFAT_VALID_TO    := TO_DATE('31.12.2999', 'DD.MM.YYYY') ;
    v_row.HFAT_DELETED_YN  := 'NO' ; 
    RETURN v_row; 
  END get_default_row;
 
END SFB_HELP_FORM_ATTRIBUTES_PKG;
/