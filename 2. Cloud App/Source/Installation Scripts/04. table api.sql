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
    p_prop_deleted_yn   IN SFB_PROPERTIES.PROP_DELETED_YN%TYPE     DEFAULT 'NO'  ) 
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
    p_prop_deleted_yn      OUT NOCOPY SFB_PROPERTIES.PROP_DELETED_YN%TYPE );
 
 
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
    p_prop_deleted_yn   IN SFB_PROPERTIES.PROP_DELETED_YN%TYPE     DEFAULT 'NO'  ) 
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
      p_prop_deleted_yn ) 
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
    p_prop_deleted_yn      OUT NOCOPY SFB_PROPERTIES.PROP_DELETED_YN%TYPE ) 
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