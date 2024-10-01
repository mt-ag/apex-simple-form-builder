create or replace package SFB_P0001_PKG as


PROCEDURE GET_JSON_FORM (  
    pio_json_id         IN  SFB_JSON_FORM.JSON_ID%TYPE 
  , po_json_name        OUT SFB_JSON_FORM.JSON_NAME%TYPE 
);



PROCEDURE SET_JSON_FORM (  
    pio_json_id        IN OUT SFB_JSON_FORM.JSON_ID%TYPE           
  , pi_mode              IN varchar2 default null   
  , pi_json_name       IN SFB_JSON_FORM.JSON_NAME%TYPE           DEFAULT NULL
  , pi_json_code       IN SFB_JSON_FORM.JSON_CODE%TYPE           DEFAULT NULL
  , pi_json_remark     IN SFB_JSON_FORM.JSON_REMARK%TYPE         DEFAULT NULL
  , pi_json_deleted_yn IN SFB_JSON_FORM.JSON_DELETED_YN%TYPE     DEFAULT NULL
);

PROCEDURE SET_HELP_FORM_ATTRIBUTES( 
    pio_hfat_id          IN OUT SFB_HELP_FORM_ATTRIBUTES.HFAT_ID%TYPE               
  , pi_mode              IN varchar2 default null        
  , pi_hfat_attr_fk     IN SFB_HELP_FORM_ATTRIBUTES.HFAT_ATTR_FK%TYPE       DEFAULT NULL
  , pi_hfat_jason_fk    IN SFB_HELP_FORM_ATTRIBUTES.HFAT_JASON_FK%TYPE      DEFAULT NULL 
  , pi_hfat_name        IN SFB_HELP_FORM_ATTRIBUTES.HFAT_NAME%TYPE          DEFAULT NULL
  , pi_hfat_required_yn IN SFB_HELP_FORM_ATTRIBUTES.HFAT_REQUIRED_YN%TYPE   DEFAULT 'N'
  , pi_hfat_deleted_yn  IN SFB_HELP_FORM_ATTRIBUTES.HFAT_DELETED_YN%TYPE    DEFAULT 'NO' 
  , pi_hfat_remark      IN SFB_HELP_FORM_ATTRIBUTES.HFAT_REMARK%TYPE         DEFAULT NULL
     ); 


PROCEDURE SET_HELP_JSON_DATA_TYPE_PROPERTIES( 
    pio_hjdp_id         IN OUT SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_ID%TYPE               
  , pi_mode             IN varchar2 default null        
  , pi_hjdp_name        IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_NAME%TYPE          DEFAULT NULL
  , pi_hjdp_hfat_fk     IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_HFAT_FK%TYPE       DEFAULT NULL
  , pi_hjdp_prop_fk     IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_PROP_FK%TYPE      DEFAULT NULL 
  , pi_hjdp_deleted_yn  IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_DELETED_YN%TYPE    DEFAULT 'NO' 
  , pi_hjdp_remark      IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_REMARK%TYPE         DEFAULT NULL
     ); 


--==============================================================================
-- get requried attributes
--==============================================================================
function fn_get_required_attributes (
    pi_JSON_ID    in  SFB_JSON_FORM.JSON_ID%type 
) return clob;

--==============================================================================
-- get properties
--==============================================================================
function fn_get_properties (
    pi_HFAT_ID    in  SFB_HELP_FORM_ATTRIBUTES.HFAT_ID%type 
) return clob;

--==============================================================================
-- get attributes with properties
--==============================================================================
function fn_get_attributes_with_properties (
    pi_JSON_ID    in  SFB_JSON_FORM.JSON_ID%type 
  , pi_type       in  varchar2 default null
) return clob;
 
--==============================================================================
-- generate JSON
--==============================================================================
procedure pr_create_json (
    pi_JSON_ID    in  SFB_JSON_FORM.JSON_ID%type 
);

--==============================================================================
-- get JSON
--==============================================================================
function fn_get_json (
    pi_JSON_ID      in SFB_JSON_FORM.JSON_ID%type 
  , pi_JSON_TYPE    in varchar2 
) return clob;


--==============================================================================
-- get ref properties
--==============================================================================
function fn_get_ref_properties (
    pi_JSON_ID      in SFB_JSON_FORM.JSON_ID%type  
) return clob;

--==============================================================================
-- get attributes with properties for refrenz form
--==============================================================================
function fn_get_attributes_with_properties_ref_form (
    pi_JSON_ID    in  SFB_JSON_FORM.JSON_ID%type 
  , pi_type       in  varchar2 default null
) return clob;

--==============================================================================
--  pre check, check some properties, if not exists, then inserts
--==============================================================================
procedure pr_precheck_properties (
    pi_JSON_ID    in  SFB_JSON_FORM.JSON_ID%type
  , pi_type       in  varchar
);

--==============================================================================
--  pre check, check some properties, if they are duplicate, then delete
--==============================================================================
procedure pr_precheck_duplicate_properties (
    pi_JSON_ID    in  SFB_JSON_FORM.JSON_ID%type
  , pi_type       in  varchar
);

--==============================================================================
--  install example
--==============================================================================
procedure pr_install_example;

end SFB_P0001_PKG;
/






















create or replace package body SFB_P0001_PKG as


PROCEDURE GET_JSON_FORM (  
    pio_json_id         IN  SFB_JSON_FORM.JSON_ID%TYPE 
  , po_json_name        OUT SFB_JSON_FORM.JSON_NAME%TYPE 
)
IS

    V_JSON_ID               SFB_JSON_FORM.JSON_ID%TYPE   := pio_json_id; 
    V_JSON_RESULT           SFB_JSON_FORM%ROWTYPE; 


BEGIN

    -- read row 
    V_json_RESULT := SFB_JSON_FORM_PKG.read_row( 
                        p_json_id   => V_JSON_ID 
                     ); 

    -- Update Single row 
    po_json_name        := V_json_RESULT.json_name;   

NULL;
END GET_JSON_FORM;


 


PROCEDURE SET_JSON_FORM (  
    pio_json_id        IN OUT SFB_JSON_FORM.JSON_ID%TYPE         
  , pi_mode              IN varchar2 default null    
  , pi_json_name       IN SFB_JSON_FORM.JSON_NAME%TYPE           DEFAULT NULL
  , pi_json_code       IN SFB_JSON_FORM.JSON_CODE%TYPE           DEFAULT NULL
  , pi_json_remark     IN SFB_JSON_FORM.JSON_REMARK%TYPE         DEFAULT NULL
  , pi_json_deleted_yn IN SFB_JSON_FORM.JSON_DELETED_YN%TYPE     DEFAULT NULL
)
IS

    V_JSON_ID               SFB_JSON_FORM.JSON_ID%TYPE   := pio_json_id; 
    V_JSON_RESULT           SFB_JSON_FORM%ROWTYPE; 


BEGIN


        IF pi_mode = 'NEW' THEN

            V_JSON_ID := SFB_JSON_FORM_PKG.CREATE_ROW(
                  p_json_name           => pi_json_name                                     
                , p_json_code           => pi_json_code   
                , p_json_remark         => pi_json_remark

            );

            pio_json_id := V_JSON_ID;

            -- update session
            update SFB_JSON_FORM
               set JSON_USER_SESSION_ID = v('APP_SESSION')
             where JSON_ID = V_JSON_ID
            ;

        ELSIF  pi_mode = 'EDIT' THEN
        
            -- read row 
            V_json_RESULT := SFB_JSON_FORM_PKG.read_row( 
                                p_json_id   => V_JSON_ID 
                             ); 

            -- Update Single row 
            V_json_RESULT.json_name             := pi_json_name;                                                  
            V_json_RESULT.json_code             := pi_json_code;                                                  
            V_json_RESULT.json_remark           := pi_json_remark;   

            -- update row 
                SFB_JSON_FORM_PKG.update_row( 
                    p_row => V_json_RESULT 
                ); 

            pio_json_id := V_JSON_ID;


        ELSIF  pi_mode = 'DELETE' THEN
        
            -- read row 
            V_json_RESULT := SFB_JSON_FORM_PKG.read_row( 
                                p_json_id   => V_JSON_ID 
                             ); 

            -- Update Single row 
            V_json_RESULT.json_deleted_yn       := 'YES';                                                                                     
            V_json_RESULT.json_remark           := pi_json_remark || ' . ' ||'jason from is Deleted.';  


            -- update row 
                SFB_JSON_FORM_PKG.update_row( 
                    p_row => V_json_RESULT 
                ); 

            pio_json_id := V_JSON_ID;

        END IF;

        
            pio_json_id := V_JSON_ID;

NULL;
END SET_JSON_FORM;



PROCEDURE SET_HELP_FORM_ATTRIBUTES( 
    pio_hfat_id         IN OUT SFB_HELP_FORM_ATTRIBUTES.HFAT_ID%TYPE               
  , pi_mode             IN varchar2 default null        
  , pi_hfat_attr_fk     IN SFB_HELP_FORM_ATTRIBUTES.HFAT_ATTR_FK%TYPE       DEFAULT NULL
  , pi_hfat_jason_fk    IN SFB_HELP_FORM_ATTRIBUTES.HFAT_JASON_FK%TYPE      DEFAULT NULL 
  , pi_hfat_name        IN SFB_HELP_FORM_ATTRIBUTES.HFAT_NAME%TYPE          DEFAULT NULL
  , pi_hfat_required_yn IN SFB_HELP_FORM_ATTRIBUTES.HFAT_REQUIRED_YN%TYPE   DEFAULT 'N'
  , pi_hfat_deleted_yn  IN SFB_HELP_FORM_ATTRIBUTES.HFAT_DELETED_YN%TYPE    DEFAULT 'NO' 
  , pi_hfat_remark      IN SFB_HELP_FORM_ATTRIBUTES.HFAT_REMARK%TYPE         DEFAULT NULL
  ) 
IS

    V_hfat_ID               SFB_HELP_FORM_ATTRIBUTES.HFAT_ID%TYPE   := pio_hfat_id; 
    V_hfat_RESULT           SFB_HELP_FORM_ATTRIBUTES%ROWTYPE; 

BEGIN
       IF pi_mode = 'NEW' THEN
           V_hfat_ID := SFB_HELP_FORM_ATTRIBUTES_PKG.CREATE_ROW(
               p_hfat_attr_fk        => pi_hfat_attr_fk                                              
             , p_hfat_jason_fk       => pi_hfat_jason_fk                                                 
             , p_hfat_name           => pi_hfat_name                                                 
             , p_hfat_required_yn    => pi_hfat_required_yn 
             , p_hfat_remark         => pi_hfat_remark                                    
           );
           pio_hfat_id := V_hfat_ID;
       ELSIF  pi_mode = 'EDIT' THEN
       
           -- read row 
           V_hfat_RESULT := SFB_HELP_FORM_ATTRIBUTES_PKG.read_row( 
                               p_hfat_id   => V_hfat_ID 
                            ); 
           -- Update Single row             
               V_hfat_RESULT.hfat_attr_fk        := pi_hfat_attr_fk;                                                    
               V_hfat_RESULT.hfat_name           := pi_hfat_name;                                                 
               V_hfat_RESULT.hfat_required_yn    := pi_hfat_required_yn; 
               V_hfat_RESULT.hfat_remark      := pi_hfat_remark;
           -- update row 
               SFB_HELP_FORM_ATTRIBUTES_PKG.update_row( 
                   p_row => V_hfat_RESULT 
               ); 
           pio_hfat_id := V_hfat_ID;
       ELSIF  pi_mode = 'DELETE' THEN
       
           -- read row 
           V_hfat_RESULT := SFB_HELP_FORM_ATTRIBUTES_PKG.read_row( 
                               p_hfat_id   => V_hfat_ID 
                            ); 
           -- Update Single row 
           V_hfat_RESULT.hfat_deleted_yn       := 'YES';                                                                                     
           V_hfat_RESULT.hfat_remark           := pi_hfat_remark || ' . ' ||'HFAT is Deleted.';  
           -- update row 
               SFB_HELP_FORM_ATTRIBUTES_PKG.update_row( 
                   p_row => V_hfat_RESULT 
               ); 
           pio_hfat_id := V_hfat_ID;
       END IF;
       
           pio_hfat_id := V_hfat_ID;



NULL;
END SET_HELP_FORM_ATTRIBUTES;








PROCEDURE SET_HELP_JSON_DATA_TYPE_PROPERTIES( 
    pio_hjdp_id         IN OUT SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_ID%TYPE               
  , pi_mode             IN varchar2 default null        
  , pi_hjdp_name        IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_NAME%TYPE          DEFAULT NULL
  , pi_hjdp_hfat_fk     IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_HFAT_FK%TYPE       DEFAULT NULL
  , pi_hjdp_prop_fk     IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_PROP_FK%TYPE      DEFAULT NULL 
  , pi_hjdp_deleted_yn  IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_DELETED_YN%TYPE    DEFAULT 'NO' 
  , pi_hjdp_remark      IN SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_REMARK%TYPE         DEFAULT NULL
     )
IS 

    V_hjdp_ID               SFB_HELP_JSON_DATA_TYPE_PROPERTIES.HJDP_ID%TYPE   := pio_hjdp_id; 
    V_hjdp_RESULT           SFB_HELP_JSON_DATA_TYPE_PROPERTIES%ROWTYPE; 

BEGIN
       IF pi_mode = 'NEW' THEN
           V_hjdp_ID := SFB_HELP_JSON_DATA_TYPE_PROPERTIES_PKG.CREATE_ROW(
               p_hjdp_name             => pi_hjdp_name                                                                 
             , p_hjdp_hfat_fk          => pi_hjdp_hfat_fk                                                                        
             , p_hjdp_prop_fk          => pi_hjdp_prop_fk                               
             , p_hjdp_remark           => pi_hjdp_remark                                                           
           );
           pio_hjdp_id := V_hjdp_ID;
       ELSIF  pi_mode = 'EDIT' THEN
       
           -- read row 
           V_hjdp_RESULT := SFB_HELP_JSON_DATA_TYPE_PROPERTIES_PKG.read_row( 
                               p_hjdp_id   => V_hjdp_ID 
                            ); 
           -- Update Single row             
               V_hjdp_RESULT.hjdp_name         := pi_hjdp_name;                                                                 
               V_hjdp_RESULT.hjdp_hfat_fk      := pi_hjdp_hfat_fk;                                                           
               V_hjdp_RESULT.hjdp_prop_fk      := pi_hjdp_prop_fk;           
               V_hjdp_RESULT.hjdp_remark       := pi_hjdp_remark;       

           -- update row 
               SFB_HELP_JSON_DATA_TYPE_PROPERTIES_PKG.update_row( 
                   p_row => V_hjdp_RESULT 
               ); 
           pio_hjdp_id := V_hjdp_ID;
       ELSIF  pi_mode = 'DELETE' THEN
       
           -- read row 
           V_hjdp_RESULT := SFB_HELP_JSON_DATA_TYPE_PROPERTIES_PKG.read_row( 
                               p_hjdp_id   => V_hjdp_ID 
                            ); 
           -- Update Single row 
           V_hjdp_RESULT.hjdp_deleted_yn       := 'YES';                                                                                     
           V_hjdp_RESULT.hjdp_remark           := pi_hjdp_remark || ' . ' ||'hjdp is Deleted.';  
           -- update row 
               SFB_HELP_JSON_DATA_TYPE_PROPERTIES_PKG.update_row( 
                   p_row => V_hjdp_RESULT 
               ); 
           pio_hjdp_id := V_hjdp_ID;
       END IF;
       
           pio_hjdp_id := V_hjdp_ID;

END SET_HELP_JSON_DATA_TYPE_PROPERTIES;



--==============================================================================
-- get requried attributes
--==============================================================================
function fn_get_required_attributes (
    pi_JSON_ID    in  SFB_JSON_FORM.JSON_ID%type 
) return clob


is

    v_return_value          clob;
    v_Attribute_name        varchar2(4000);
    v_field_name            varchar2(4000);
    v_json_string           clob;

begin

    -- loop all attributes
    for l_attributes in (select field_name          as field_name
                           from SFB_JSON_WITH_ATTRIBUTES_V
                          where JSON_ID        = pi_JSON_ID
                            and required_yn    = 'Y'
                          order by HFAT_ID ASC
                        )
    loop

        -- save loop variable
        v_field_name        := l_attributes.field_name;

        -- set komma, if not null
        if v_json_string is not null then 
            v_json_string   := v_json_string|| ', ';
        end if;

        -- join the string
        v_json_string   := v_json_string||'"'||v_field_name||'"';
 
    end loop;


    -- build body
    if v_json_string is not null then 

        -- build json
        v_json_string   := '
  "required": ['||v_json_string||'],';

    end if; 

   
    v_return_value := v_json_string;
    
    return v_return_value;


end fn_get_required_attributes;


--==============================================================================
-- get properties
--==============================================================================
function fn_get_properties(
    pi_HFAT_ID    in  SFB_HELP_FORM_ATTRIBUTES.HFAT_ID%type 
) return clob

is

    v_json_string                        clob              := null;
    v_json_string_apex                   clob              := null;
    v_return_Value                       clob              := null;
    v_propertiy_name                     varchar2(4000)    := null;
    v_property_value                     varchar2(4000)    := null;
    v_coma                               varchar2(4000)    := ',';   
    v_quotation_marks                    varchar2(4000)    := null;
    v_ATTR_NAME                          varchar2(4000);
    v_array_part_Start                   varchar2(4000);    
    v_array_part_end                     varchar2(4000);    

begin

    -- loop all properties
    for l_attributes in (select property_name          as property_name
                              , property_value         as property_value
                              , ATTR_NAME              as ATTR_NAME
                           from SFB_PROPERTIES_V
                          where HJDP_HFAT_FK           = pi_HFAT_ID 
                            and PROP_TYPE = 'JSON'
                          order by HJDP_HFAT_FK ASC
                        )
    loop

        -- save variable
        v_propertiy_name            := l_attributes.property_name;
        v_property_value            := l_attributes.property_value;     
        v_ATTR_NAME                 := l_attributes.ATTR_NAME;     


        -- set komma, if not null
        if v_json_string is not null then 
            v_json_string   := v_json_string|| ', ';
        end if;


        if lower(v_ATTR_NAME) = ('array') then 

           v_array_part_Start := '"items": { "type": "string",';
           v_array_part_end := '}'; 

        end if;

        if lower(v_propertiy_name) in ('maxlength','minimum') then 

            v_quotation_marks := null;
        else

            v_quotation_marks := '"'; 

        end if; 


        if v_propertiy_name = 'enum' then 

            -- replace comma '","', 
            v_property_value := '["' || REPLACE(TRIM(v_property_value), ', ', '","') || '"]';
            
            -- join the string
            v_json_string   := v_json_string||v_array_part_Start||'"'||v_propertiy_name||'" :'||v_property_value||v_array_part_end;

        else

            -- join the string
            v_json_string   := v_json_string||v_array_part_Start||'"'||v_propertiy_name||'" : '||v_quotation_marks||v_property_value||v_array_part_end||v_quotation_marks;

        end if;
 
    end loop;

    -- loop all properties
    for l_attributes in (select property_name          as property_name
                              , property_value         as property_value
                           from SFB_PROPERTIES_V
                          where HJDP_HFAT_FK           = pi_HFAT_ID 
                            and PROP_TYPE = 'APEX'
                          order by HJDP_HFAT_FK ASC
                        )
    loop

        -- save variable
        v_propertiy_name            := l_attributes.property_name;
        v_property_value            := l_attributes.property_value;     


        -- set komma, if not null
        if v_json_string_apex is not null then 
            v_json_string_apex   := v_json_string_apex|| ', ';
        end if; 


        if lower(v_propertiy_name) in ('colspan') then 

            v_quotation_marks := null;
        else

            v_quotation_marks := '"'; 

        end if; 
 
        -- join the string
        v_json_string_apex   := v_json_string_apex||'"'||v_propertiy_name||'": '||v_quotation_marks||v_property_value||v_quotation_marks;
 
    end loop;

    if v_json_string_apex is not null then 

        if v_json_string is null then

            v_coma  := null;

        end if;

         -- join the string
        v_json_string_apex   := v_coma||' "apex": { '||v_json_string_apex||' }';

    end if;



    v_json_string   := v_json_string || v_json_string_apex;

    -- set 1 comma before, becuase if there are only some properties, then make comma
    if v_json_string is not null then 

        v_json_string   := ', '||v_json_string;

    end if;
 

    -- return value
    v_return_Value  := v_json_string;

    return v_return_Value;


end fn_get_properties;


--==============================================================================
-- get attributes with properties
--==============================================================================
function fn_get_attributes_with_properties (
    pi_JSON_ID    in  SFB_JSON_FORM.JSON_ID%type 
  , pi_type       in  varchar2 default null
) return clob

is
    v_return_value                           clob;
    v_current_length                         NUMBER := 0;
    v_save_max_length                        NUMBER := 0; 
    v_max_length_after_attributes            NUMBER := 0;  
    v_line_space                             clob;

    -- attributes
    v_field_name                             varchar2(4000);
    v_Attribute_name                         varchar2(4000); 
    v_json_string                            clob;

    -- properties
    v_properties_string                      clob;
    v_HFAT_ID                                number;
    
begin



    -- get maximum length of field name
    for l_max_length_of_field in (select field_name          as field_name
                                    from SFB_JSON_WITH_ATTRIBUTES_V
                                   where JSON_ID        = pi_JSON_ID   
                                   order by HFAT_ID ASC
                                 )
    loop

        -- save current length
        v_current_length := LENGTH(l_max_length_of_field.field_name);
        
        -- save only the biggest value
        IF v_current_length > v_save_max_length THEN
    
            -- this variable have the maximum biggest length of a field.
            v_save_max_length := v_current_length;
    
        END IF;
    
    END LOOP;

    -- a new loop will be start the build json
    for l_attribute_with_property in (select field_name          as field_name
                                           , Attribute_name      as Attribute_name
                                           , HFAT_ID             as HFAT_ID
                                        from SFB_JSON_WITH_ATTRIBUTES_V
                                       where JSON_ID        = pi_JSON_ID  
                                    order by HFAT_ID ASC
                                     )
    loop

        -- save current length
        v_current_length := LENGTH(l_attribute_with_property.field_name);

        -- i take the maximum length and put extra lenght -> this will be global new Tab-line
        v_max_length_after_attributes           := v_save_max_length + 4;

        -- i make minus from global lenght with current length, to get a dynamic length
        v_max_length_after_attributes           := v_max_length_after_attributes - v_current_length;

        -- line space will be reseted
        v_line_space                            := null;
        
        -- now create here dynamic line space based on each fiel 
        FOR i IN 1..(v_max_length_after_attributes) LOOP
            
            v_line_space := v_line_space || '&nbsp;';
        
        END LOOP;


        -- save loop variable
        v_field_name          := l_attribute_with_property.field_name;
        v_Attribute_name      := l_attribute_with_property.Attribute_name;   
        v_HFAT_ID             := l_attribute_with_property.HFAT_ID;   

        -- set komma, if not null
        if v_json_string is not null then 
            v_json_string   := v_json_string|| ', ';
        end if;

        -- get properties
        v_properties_string := SFB_P0001_PKG.fn_get_properties(v_HFAT_ID);

        -- if json, then we dont need any space and html
        if pi_type = 'JSON' then
            v_line_space    := null;
        end if;

        -- join the string
        v_json_string   := v_json_string||'
     "'||v_field_name||'":'||v_line_space||'{  '||v_Attribute_name||' '||v_properties_string||'}';
    -- "'||v_field_name||'":'||v_line_space||'{ "type": "'||v_Attribute_name||'"'||v_properties_string||'}';


    end loop;

    v_return_value      := v_json_string;

    return v_return_value;

end fn_get_attributes_with_properties;

--==============================================================================
-- generate JSON
--==============================================================================
procedure pr_create_json (
    pi_JSON_ID    in  SFB_JSON_FORM.JSON_ID%type 
)

is

    v_final_json                            clob;
    v_required_attributes                   clob;
    v_attributes_with_properties            clob;
    v_attributes_with_properties_ref        clob;
    v_attributes_with_properties_ref_json   clob;
    v_extra_bracket                         varchar2(4000) := null;

begin

    -- prechecks,
    SFB_P0001_PKG.pr_precheck_properties(pi_JSON_ID,'LABEL');   -- insert label, if not exists  
    SFB_P0001_PKG.pr_precheck_properties(pi_JSON_ID,'COLSPAN'); -- insert label, if not exists
    SFB_P0001_PKG.pr_precheck_duplicate_properties(pi_JSON_ID,'DUPLICATE'); -- delete duplicate properties

    -- get requried attributes
    v_required_attributes           := SFB_P0001_PKG.fn_get_required_attributes(pi_JSON_ID);

    -- get attributes with properties
    v_attributes_with_properties    := SFB_P0001_PKG.fn_get_attributes_with_properties(pi_JSON_ID,'JSON');


    -- get attributes with properties ref
    v_attributes_with_properties_ref    := SFB_P0001_PKG.fn_get_ref_properties(pi_JSON_ID);

    -- if there are already some fields, then set coma
    if v_attributes_with_properties is not null and v_attributes_with_properties_ref is not null then 

        v_attributes_with_properties_ref := ', '|| v_attributes_with_properties_ref;
    end if;

    -- get ref form json string
    v_attributes_with_properties_ref_json   := SFB_P0001_PKG.fn_get_attributes_with_properties_ref_form(pi_JSON_ID,'JSON');

    -- build json
    v_final_json := '{"type": "object",'||v_required_attributes||'"properties": {'||v_attributes_with_properties||v_attributes_with_properties_ref||v_attributes_with_properties_ref_json||'}}';

    -- save json code
    SFB_JSON_FORM_PKG.set_json_code(
        p_json_id           => pi_JSON_ID
      , p_json_code         => v_final_json
    );


end pr_create_json;

--==============================================================================
-- get JSON
--==============================================================================
function fn_get_json (
    pi_JSON_ID      in SFB_JSON_FORM.JSON_ID%type 
  , pi_JSON_TYPE    in varchar2 
) return clob

is
    v_final_json                            clob;
    v_required_attributes                   clob;
    v_attributes_with_properties            clob;
    v_attributes_with_properties_ref        clob;
    v_return_value                          clob;

begin

    if pi_JSON_TYPE = 'HTML' then 

        -- get requried attributes
        v_required_attributes           := SFB_P0001_PKG.fn_get_required_attributes(pi_JSON_ID);

        -- get attributes with properties
        v_attributes_with_properties    := SFB_P0001_PKG.fn_get_attributes_with_properties(pi_JSON_ID);

        -- get attributes with properties ref
        v_attributes_with_properties_ref    := SFB_P0001_PKG.fn_get_ref_properties(pi_JSON_ID);

        if v_attributes_with_properties is not null and v_attributes_with_properties_ref is not null then 

            v_attributes_with_properties_ref := ',
     '|| v_attributes_with_properties_ref;
        end if;

        -- build json 
        v_final_json := '<pre>{
  "type": "object",'
||v_required_attributes||'
  "properties": {'
||v_attributes_with_properties||v_attributes_with_properties_ref||
'
   }
}
</pre>';     
 

        v_return_value    := v_final_json; 

    elsif pi_JSON_TYPE = 'JSON' then 

        v_return_value  := SFB_JSON_FORM_PKG.get_json_code(pi_JSON_ID);

    end if;



    return v_return_value;

end fn_get_json;

--==============================================================================
-- get ref properties
--==============================================================================
function fn_get_ref_properties (
    pi_JSON_ID      in SFB_JSON_FORM.JSON_ID%type  
) return clob

is 
    v_return_value                      clob    := null;
    v_REF_JSON_ID                       number;
    v_rownum                            number  := 0;
    v_REF_JSON_NAME                     varchar2(4000);
    v_HRJF_NAME                         varchar2(4000);
    v_REF_JSON_NAME_UNDERLINE           varchar2(4000);
    v_json_string                       clob;
    v_bracket                           varchar2(4000);
    v_max_loop                          number;
    v_HRJF_ARRAY_YN                     varchar2(4000);
    v_array_part_Start                  varchar2(4000);
    v_array_part_end                    varchar2(4000);


begin

    select count(*)
      into v_max_loop
      from SFB_JSON_FORM M
      join SFB_HELP_REFRENZ_JSON_FORM on (M.JSON_ID = HRJF_MAIN_JSON_FK)
      join SFB_JSON_FORM R            on (R.JSON_ID =HRJF_REFRENZ_JSON_FK )
     where M.JSON_ID              = pi_JSON_ID 
    ;

    -- loop and get all ref form name
    for l_ref_form in (select rownum                                    as q_rownum
                            , R.JSON_ID                                 as REF_JSON_ID
                            , R.JSON_NAME                               as REF_JSON_NAME
                            , REPLACE(R.JSON_NAME, ' ', '_')            as REF_JSON_NAME_UNDERLINE
                            , REGEXP_REPLACE(INITCAP(REPLACE(HRJF_NAME, ' ', '_')), '[^A-Za-z0-9]', '')                                  as HRJF_NAME
                            , HRJF_ARRAY_YN                             as HRJF_ARRAY_YN
                         from SFB_JSON_FORM M
                         join SFB_HELP_REFRENZ_JSON_FORM on (M.JSON_ID = HRJF_MAIN_JSON_FK)
                         join SFB_JSON_FORM R            on (R.JSON_ID =HRJF_REFRENZ_JSON_FK )
                        where M.JSON_ID              = pi_JSON_ID
                        order by HRJF_UPDATED ASC
                       )
    loop

        v_REF_JSON_ID                       := l_ref_form.REF_JSON_ID;
        v_REF_JSON_NAME                     := l_ref_form.REF_JSON_NAME;
        v_REF_JSON_NAME_UNDERLINE           := l_ref_form.REF_JSON_NAME_UNDERLINE;
        v_rownum                            := v_rownum+1;
        v_HRJF_NAME                         := l_ref_form.HRJF_NAME;
        v_HRJF_ARRAY_YN                     := l_ref_form.HRJF_ARRAY_YN;

        -- set komma, if not null
        if v_json_string is not null then 
            v_json_string   := v_json_string|| ', ';
        end if;

        -- reset variable
        v_bracket := null;
        
        if v_rownum = v_max_loop then 
            v_bracket := '}';
        end if;

        
        if v_HRJF_ARRAY_YN = 'Y' then 

            v_array_part_Start  := '"type": "array", "items": {';
            v_array_part_end    := '}'; 

            -- join the string
            -- v_json_string   := v_json_string||'"'||v_REF_JSON_NAME||'_'||v_rownum||'" : { "$ref": "#/$defs/'||v_REF_JSON_NAME_UNDERLINE||'_'||v_rownum||'"}
            v_json_string   := v_json_string||'"'||v_HRJF_NAME||'" : { '||v_array_part_Start||' "$ref": "#/$defs/'||v_REF_JSON_NAME_UNDERLINE||'_'||v_rownum||'"}
            '||v_array_part_end||v_bracket;


        else

            -- join the string
            -- v_json_string   := v_json_string||'"'||v_REF_JSON_NAME||'_'||v_rownum||'" : { "$ref": "#/$defs/'||v_REF_JSON_NAME_UNDERLINE||'_'||v_rownum||'"}
            v_json_string   := v_json_string||'"'||v_HRJF_NAME||'" : { "$ref": "#/$defs/'||v_REF_JSON_NAME_UNDERLINE||'_'||v_rownum||'"}
            '||v_bracket;

        end if;




        
        v_return_value      := v_json_string;

    end loop; 

    return v_return_value;

end fn_get_ref_properties;

--==============================================================================
-- get attributes with properties for refrenz form
--==============================================================================
function fn_get_attributes_with_properties_ref_form (
    pi_JSON_ID    in  SFB_JSON_FORM.JSON_ID%type 
  , pi_type       in  varchar2 default null
) return clob

is
    v_return_value                      clob    := null;
    v_REF_JSON_ID                       number;
    v_REF_JSON_NAME                     varchar2(4000);
    v_HRJF_NAME                         varchar2(4000);
    v_REF_JSON_NAME_UNDERLINE           varchar2(4000);
    v_json_string                       clob;

    v_final_json                            clob;
    v_required_attributes                   clob;
    v_attributes_with_properties            clob;
    v_json_attributes_with_properties            clob;
    v_counter                               number := 0;
    v_bracket                            varchar2(4000) := '}';

begin

    -- loop and get all ref form name
    for l_ref_form in (select R.JSON_ID                                 as REF_JSON_ID
                            , R.JSON_NAME                               as REF_JSON_NAME
                            , REPLACE(R.JSON_NAME, ' ', '_')            as REF_JSON_NAME_UNDERLINE
                            , HRJF_NAME                                 as HRJF_NAME
                         from SFB_JSON_FORM M
                         join SFB_HELP_REFRENZ_JSON_FORM on (M.JSON_ID = HRJF_MAIN_JSON_FK)
                         join SFB_JSON_FORM R            on (R.JSON_ID =HRJF_REFRENZ_JSON_FK )
                        where M.JSON_ID              = pi_JSON_ID
                        order by HRJF_UPDATED ASC
                       )
    loop
        
        v_counter                           := v_counter+1;
        v_REF_JSON_ID                       := l_ref_form.REF_JSON_ID;
        v_REF_JSON_NAME                     := l_ref_form.REF_JSON_NAME; 
        v_HRJF_NAME                         := l_ref_form.HRJF_NAME; 
        v_REF_JSON_NAME_UNDERLINE           := l_ref_form.REF_JSON_NAME_UNDERLINE||'_'||v_counter;

        -- get requried attributes
        v_required_attributes           := SFB_P0001_PKG.fn_get_required_attributes(v_REF_JSON_ID);

        -- get attributes with properties
        v_attributes_with_properties    := SFB_P0001_PKG.fn_get_attributes_with_properties(v_REF_JSON_ID,pi_type);

        -- build json with attributes and properties
        v_json_attributes_with_properties := ' {"type": "object",'||v_required_attributes||'"properties": {'||v_attributes_with_properties||'}}'; 

        if v_counter = 1 then

            -- build json
            v_final_json := '"$defs": { "'||v_REF_JSON_NAME_UNDERLINE||'": '|| v_json_attributes_with_properties;

        else

            -- build json
            v_final_json := '"'||v_REF_JSON_NAME_UNDERLINE||'": '|| v_json_attributes_with_properties;

        end if;
 
        v_return_value  := v_return_value || ', ' || v_final_json;
        
        
    end loop; 

 

    -- need last bracket
     v_return_value    := v_return_value; 

    return v_return_value;

end fn_get_attributes_with_properties_ref_form;

--==============================================================================
--  pre check, check some properties, if not exists, then inserts
--==============================================================================
procedure pr_precheck_properties (
    pi_JSON_ID    in  SFB_JSON_FORM.JSON_ID%type
  , pi_type       in  varchar
)

is

    v_original_field_name       varchar2(4000);
    v_check_properties          number; 
    v_HFAT_ID                   number; 
    v_HFAT_ID_out               number;  
    v_prop_id                   number;  
    v_PROP_value                varchar2(4000); 
    v_properties_type           varchar2(4000) := pi_type;

begin

    -- check properties for all fields
    for l_field_name in (select original_field_name          as original_field_name
                              , HFAT_ID                      as HFAT_ID
                           from SFB_JSON_WITH_ATTRIBUTES_V
                          where JSON_ID                      = pi_JSON_ID   
                          order by HFAT_ID ASC
                         )
    loop

        -- save value
        v_original_field_name := l_field_name.original_field_name;
        v_HFAT_ID             := l_field_name.HFAT_ID;
         
        -- check if properties exists for this fields
        select count(*)
          into v_check_properties
          from dual
         where exists(select property_value
                        from SFB_PROPERTIES_V
                       where HJDP_HFAT_FK           = v_HFAT_ID 
                         and lower(PROPERTY_NAME)   = lower(v_properties_type)
                     )
        ;

        -- if not exists
        if v_check_properties = 0 then

            -- get label id
            select PROP_ID
              into v_prop_id
              from SFB_PROPERTIES
             where lower(PROP_NAME) = lower(v_properties_type)
            ;


            -- check properties value
            if lower(v_properties_type) = 'label' then 

                v_PROP_value := v_original_field_name;

            elsif lower(v_properties_type) = 'colspan' then 


                v_PROP_value := 6;
            
            end if;

            v_HFAT_ID_out   := null;
            
            -- insert row
            SFB_P0001_PKG.SET_HELP_JSON_DATA_TYPE_PROPERTIES( 
                pio_hjdp_id             => v_HFAT_ID_out
              , pi_mode                 => 'NEW'
              , pi_hjdp_name            => v_PROP_value
              , pi_hjdp_hfat_fk         => v_HFAT_ID
              , pi_hjdp_prop_fk         => v_prop_id 
            ); 
 

        end if;  

    END LOOP;

end pr_precheck_properties;


--==============================================================================
--  pre check, check some properties, if they are duplicate, then delete
--==============================================================================
procedure pr_precheck_duplicate_properties (
    pi_JSON_ID    in  SFB_JSON_FORM.JSON_ID%type
  , pi_type       in  varchar
)

is

    V_JSON_ID               SFB_JSON_FORM.JSON_ID%TYPE   := pi_JSON_ID; 
    v_PROP_ID               number;
    v_HJDP_ID               number;
    V_HJDP_RESULT           SFB_HELP_JSON_DATA_TYPE_PROPERTIES%ROWTYPE; 

begin
    for l_duplicate_properties in (select PROP_ID                              as  PROP_ID
                                     from SFB_JSON_FORM
                                     join SFB_HELP_FORM_ATTRIBUTES             on HFAT_JASON_FK = JSON_ID
                                     join SFB_HELP_JSON_DATA_TYPE_PROPERTIES   on HFAT_ID = HJDP_HFAT_FK
                                     join SFB_PROPERTIES                       on PROP_ID = HJDP_PROP_FK 
                                    where JSON_ID = v_json_id 
                                    group by HFAT_ID, PROP_ID
                                   having count(*) >= 2
                                   )
    loop

        v_PROP_ID       := l_duplicate_properties.PROP_ID;

        -- create second loop:
        for l_del_duplicate_properties in  (select HJDP_ID                              as HJDP_ID
                                              from SFB_JSON_FORM
                                              join SFB_HELP_FORM_ATTRIBUTES             on HFAT_JASON_FK = JSON_ID
                                              join SFB_HELP_JSON_DATA_TYPE_PROPERTIES   on HFAT_ID = HJDP_HFAT_FK
                                              join SFB_PROPERTIES                       on PROP_ID = HJDP_PROP_FK 
                                             where JSON_ID = v_json_id 
                                               and PROP_ID = v_PROP_ID
                                            offset 1 row
                                          )
        loop
 
            -- save value
            v_HJDP_ID       := l_del_duplicate_properties.HJDP_ID;

            -- delete 
            -- read row 
            V_HJDP_RESULT := SFB_HELP_JSON_DATA_TYPE_PROPERTIES_PKG.read_row( 
                                p_hjdp_id   => v_HJDP_ID 
                             ); 

            -- Update Single row 
            V_HJDP_RESULT.hjdp_deleted_yn       := 'YES';                                                                                     
            V_HJDP_RESULT.hjdp_remark           := 'duplicate properties is deleted.';  

            -- update row 
                SFB_HELP_JSON_DATA_TYPE_PROPERTIES_PKG.update_row( 
                    p_row => V_HJDP_RESULT 
                ); 

        end loop;
    
    end loop; 
    
end pr_precheck_duplicate_properties; 

--==============================================================================
--  install example
--==============================================================================
procedure pr_install_example

is
    V_JSON_ID               NUMBER;
    V_ATTR_ID_STRING        NUMBER;
    V_ATTR_ID_BOOLEAN       NUMBER;
    V_ATTR_ID_ARRY          NUMBER;
    V_ATTR_ID_INTEGER       NUMBER;
    V_ATTR_ID_ONLY_DATE     NUMBER; 
    V_ATTR_ID_DATE_TIME     NUMBER; 
    V_ATTR_ID_URL           NUMBER; 



    v_prop_id_ENUM                  NUMBER; 
    v_prop_id_MAXLENGHT             NUMBER; 
    v_prop_id_MAXIMUM               NUMBER; 
    v_prop_id_MINIMUM               NUMBER; 
    v_prop_id_FORMAT                NUMBER; 
    v_prop_id_ITEMTYPE              NUMBER;  
    v_prop_id_TEXTCASE              NUMBER;  
    v_prop_id_PLACEHOLDER           NUMBER;
    v_prop_id_LINES                 NUMBER;

    V_HFAT_ID               NUMBER;
    v_hjdp_id               number;
    v_counter               varchar(4000) := '('||SFB_JSON_SEQ.NEXTVAL||')';
    v_json_id_emp_form      number;
    v_json_id_feedback_form number;
begin


  -- FORM ATTRIBUTES

    -- Attribute für 'String' holen
    SELECT ATTR_ID INTO V_ATTR_ID_STRING
    FROM SFB_ATTRIBUTES
    WHERE lower(ATTR_NAME) = 'string';  


    
    SELECT ATTR_ID INTO V_ATTR_ID_BOOLEAN
    FROM SFB_ATTRIBUTES
    WHERE lower(ATTR_NAME) = 'boolean'; 

    
    SELECT ATTR_ID INTO V_ATTR_ID_INTEGER
    FROM SFB_ATTRIBUTES
    WHERE lower(ATTR_NAME) = 'integer'; 

    
    SELECT ATTR_ID INTO V_ATTR_ID_ONLY_DATE
    FROM SFB_ATTRIBUTES
    WHERE lower(ATTR_NAME) = 'only date'; 

    SELECT ATTR_ID INTO V_ATTR_ID_ARRY
    FROM SFB_ATTRIBUTES
    WHERE lower(ATTR_NAME) = 'array'; 

    SELECT ATTR_ID INTO V_ATTR_ID_URL
    FROM SFB_ATTRIBUTES
    WHERE lower(ATTR_NAME) = lower('URL-Link'); 

    
    SELECT ATTR_ID INTO V_ATTR_ID_DATE_TIME
    FROM SFB_ATTRIBUTES
    WHERE lower(ATTR_NAME) = lower('Date with Time'); 





          
           

    -- FORM PROPERTIES
    select PROP_ID 
      into v_prop_id_ENUM 
      from SFB_PROPERTIES 
     where lower(PROP_NAME) = lower('enum') 
       and PROP_TYPE = 'JSON'
    ; 

    select PROP_ID 
      into v_prop_id_MAXLENGHT 
      from SFB_PROPERTIES 
     where lower(PROP_NAME) = lower('maxlength') 
       and PROP_TYPE = 'JSON'
    ; 

    select PROP_ID 
      into v_prop_id_MAXIMUM 
      from SFB_PROPERTIES 
     where lower(PROP_NAME) = lower('maximum') 
       and PROP_TYPE = 'JSON'
    ; 

    select PROP_ID 
      into v_prop_id_MINIMUM 
      from SFB_PROPERTIES 
     where lower(PROP_NAME) = lower('minimum') 
       and PROP_TYPE = 'JSON'
    ; 

    select PROP_ID 
      into v_prop_id_ITEMTYPE 
      from SFB_PROPERTIES 
     where lower(PROP_NAME) = lower('itemtype') 
       and PROP_TYPE = 'APEX'
    ; 

    select PROP_ID 
      into v_prop_id_FORMAT 
      from SFB_PROPERTIES 
     where lower(PROP_NAME) = lower('format') 
       and PROP_TYPE = 'JSON'
    ; 

    select PROP_ID 
      into v_prop_id_TEXTCASE 
      from SFB_PROPERTIES 
     where lower(PROP_NAME) = lower('textcase') 
       and PROP_TYPE = 'APEX'
    ; 

    select PROP_ID 
      into v_prop_id_PLACEHOLDER 
      from SFB_PROPERTIES 
     where lower(PROP_NAME) = lower('placeholder') 
       and PROP_TYPE = 'APEX'
    ; 

    select PROP_ID 
      into v_prop_id_LINES 
      from SFB_PROPERTIES 
     where lower(PROP_NAME) = lower('lines') 
       and PROP_TYPE = 'APEX'
    ; 


-- ========================================================================================
-- ========================================================================================
-- ========================================================================================

    -- Formular erstellen: Employee Registration Form
    V_JSON_ID := SFB_JSON_FORM_PKG.CREATE_ROW(
                    p_json_name           => 'Employee Registration Form '|| v_counter,
                    p_json_code           => NULL,
                    p_json_remark         => 'Form to register new employees'
                );

    -- update session
    update SFB_JSON_FORM
       set JSON_USER_SESSION_ID = v('APP_SESSION')
     where JSON_ID = V_JSON_ID
    ;

    v_json_id_emp_form := V_JSON_ID;

    V_HFAT_ID    := null;
    -- Formularattribute setzen
    SFB_P0001_PKG.SET_HELP_FORM_ATTRIBUTES(
        pio_hfat_id             => V_HFAT_ID,
        pi_mode                 => 'NEW',
        pi_hfat_attr_fk         => V_ATTR_ID_STRING,
        pi_hfat_jason_fk        => V_JSON_ID,
        pi_hfat_name            => 'Employee Name',
        pi_hfat_required_yn     => 'Y' 
    );

    V_HFAT_ID    := null;
    -- Formularattribute setzen
    SFB_P0001_PKG.SET_HELP_FORM_ATTRIBUTES(
        pio_hfat_id             => V_HFAT_ID,
        pi_mode                 => 'NEW',
        pi_hfat_attr_fk         => V_ATTR_ID_STRING,
        pi_hfat_jason_fk        => V_JSON_ID,
        pi_hfat_name            => 'E-mail:',
        pi_hfat_required_yn     => 'N' 
    );
    
        v_hjdp_id   := null;
        SFB_P0001_PKG.SET_HELP_JSON_DATA_TYPE_PROPERTIES( 
                pio_hjdp_id             => v_hjdp_id
              , pi_mode                 => 'NEW'
              , pi_hjdp_name            => 'email'
              , pi_hjdp_hfat_fk         => V_HFAT_ID
              , pi_hjdp_prop_fk         => v_prop_id_FORMAT
            ); 


    V_HFAT_ID    := null;
    -- Formularattribute setzen
    SFB_P0001_PKG.SET_HELP_FORM_ATTRIBUTES(
        pio_hfat_id             => V_HFAT_ID,
        pi_mode                 => 'NEW',
        pi_hfat_attr_fk         => V_ATTR_ID_STRING,
        pi_hfat_jason_fk        => V_JSON_ID,
        pi_hfat_name            => 'Job Title',
        pi_hfat_required_yn     => 'Y' 
    );


        v_hjdp_id   := null;
        SFB_P0001_PKG.SET_HELP_JSON_DATA_TYPE_PROPERTIES( 
                pio_hjdp_id             => v_hjdp_id
              , pi_mode                 => 'NEW'
              , pi_hjdp_name            => 'Software Engineer, Project Manager, Data Analyst, Human Resources Manager, Marketing Director'
              , pi_hjdp_hfat_fk         => V_HFAT_ID
              , pi_hjdp_prop_fk         => v_prop_id_ENUM
            ); 


        SFB_P0001_PKG.SET_HELP_FORM_ATTRIBUTES(
        pio_hfat_id             => V_HFAT_ID,
        pi_mode                 => 'NEW',
        pi_hfat_attr_fk         => V_ATTR_ID_ARRY,
        pi_hfat_jason_fk        => V_JSON_ID,
        pi_hfat_name            => 'Employee Status',
        pi_hfat_required_yn     => 'Y' 
    );

        v_hjdp_id   := null;
        SFB_P0001_PKG.SET_HELP_JSON_DATA_TYPE_PROPERTIES( 
                pio_hjdp_id             => v_hjdp_id
              , pi_mode                 => 'NEW'
              , pi_hjdp_name            => 'Active, Inactive, On Leave'
              , pi_hjdp_hfat_fk         => V_HFAT_ID
              , pi_hjdp_prop_fk         => v_prop_id_ENUM
            ); 

    SFB_P0001_PKG.pr_create_json (
    pi_JSON_ID    => V_JSON_ID
    );

-- ========================================================================================
-- ========================================================================================
-- ========================================================================================

    -- Create a form: Feedback Form
    V_JSON_ID := SFB_JSON_FORM_PKG.CREATE_ROW(
                    p_json_name           => 'Feedback Form '|| v_counter,
                    p_json_code           => NULL,
                    p_json_remark         => 'Form to collect customer feedback'
                );

    -- update session
    update SFB_JSON_FORM
       set JSON_USER_SESSION_ID = v('APP_SESSION')
     where JSON_ID = V_JSON_ID
    ;
    -- create ref form
    SFB_HELP_REFRENZ_JSON_FORM_PKG.create_row (   
       p_hrjf_main_json_fk          => v_json_id_emp_form
     , p_hrjf_refrenz_json_fk       => V_JSON_ID 
     , p_hrjf_name                  => 'Employee Engagement Feedback'
    );  


    -- Set form attributes: Feedback Type
    V_HFAT_ID    := null;
    SFB_P0001_PKG.SET_HELP_FORM_ATTRIBUTES(
        pio_hfat_id             => V_HFAT_ID,
        pi_mode                 => 'NEW',
        pi_hfat_attr_fk         => V_ATTR_ID_STRING,
        pi_hfat_jason_fk        => V_JSON_ID,
        pi_hfat_name            => 'Feedback Type',
        pi_hfat_required_yn     => 'Y'
    );


    -- Set form attributes: Feedback Date
    V_HFAT_ID    := null;
    SFB_P0001_PKG.SET_HELP_FORM_ATTRIBUTES(
        pio_hfat_id             => V_HFAT_ID,
        pi_mode                 => 'NEW',
        pi_hfat_attr_fk         => V_ATTR_ID_ONLY_DATE,
        pi_hfat_jason_fk        => V_JSON_ID,
        pi_hfat_name            => 'Feedback Date',
        pi_hfat_required_yn     => 'Y'
    ); 

    -- Set form attributes: Feedback Rating
    V_HFAT_ID    := null;
    SFB_P0001_PKG.SET_HELP_FORM_ATTRIBUTES(
        pio_hfat_id             => V_HFAT_ID,
        pi_mode                 => 'NEW',
        pi_hfat_attr_fk         => V_ATTR_ID_INTEGER,
        pi_hfat_jason_fk        => V_JSON_ID,
        pi_hfat_name            => 'Feedback Rating',
        pi_hfat_required_yn     => 'N'
    );

        v_hjdp_id   := null;
        SFB_P0001_PKG.SET_HELP_JSON_DATA_TYPE_PROPERTIES( 
                pio_hjdp_id             => v_hjdp_id
              , pi_mode                 => 'NEW'
              , pi_hjdp_name            => 'starrating'
              , pi_hjdp_hfat_fk         => V_HFAT_ID
              , pi_hjdp_prop_fk         => v_prop_id_ITEMTYPE
            ); 

        v_hjdp_id   := null;
        SFB_P0001_PKG.SET_HELP_JSON_DATA_TYPE_PROPERTIES( 
                pio_hjdp_id             => v_hjdp_id
              , pi_mode                 => 'NEW'
              , pi_hjdp_name            => '5'
              , pi_hjdp_hfat_fk         => V_HFAT_ID
              , pi_hjdp_prop_fk         => v_prop_id_MAXIMUM
            ); 


    SFB_P0001_PKG.pr_create_json (
    pi_JSON_ID    => V_JSON_ID
    );

-- ========================================================================================
-- ========================================================================================
-- ========================================================================================
    -- Formular erstellen: Bank Information Form
    V_JSON_ID := SFB_JSON_FORM_PKG.CREATE_ROW(
                    p_json_name           => 'Bank Information Form '|| v_counter,
                    p_json_code           => NULL,
                    p_json_remark         => 'Form to collect bank account details'
                );

        -- update session
    update SFB_JSON_FORM
       set JSON_USER_SESSION_ID = v('APP_SESSION')
     where JSON_ID = V_JSON_ID
    ;

   -- create ref form
    SFB_HELP_REFRENZ_JSON_FORM_PKG.create_row (   
       p_hrjf_main_json_fk          => v_json_id_emp_form
     , p_hrjf_refrenz_json_fk       => V_JSON_ID
     , p_hrjf_name                  => 'Salary Disbursement Account'
    );  

   -- create ref form
    SFB_HELP_REFRENZ_JSON_FORM_PKG.create_row (   
       p_hrjf_main_json_fk          => v_json_id_emp_form
     , p_hrjf_refrenz_json_fk       => V_JSON_ID
     , p_hrjf_name                  => 'Private account'
    );  

   -- create ref form
    SFB_HELP_REFRENZ_JSON_FORM_PKG.create_row (   
       p_hrjf_main_json_fk          => v_json_id_emp_form
     , p_hrjf_refrenz_json_fk       => V_JSON_ID
     , p_hrjf_name                  => 'Savings account'
    );  

    -- Set form attributes: Bank Name
    V_HFAT_ID    := null;
    SFB_P0001_PKG.SET_HELP_FORM_ATTRIBUTES(
        pio_hfat_id             => V_HFAT_ID,
        pi_mode                 => 'NEW',
        pi_hfat_attr_fk         => V_ATTR_ID_string,
        pi_hfat_jason_fk        => V_JSON_ID,
        pi_hfat_name            => 'Bank Name',
        pi_hfat_required_yn     => 'Y'
    );

    -- Set form attributes: IBAN
    V_HFAT_ID    := null;
    SFB_P0001_PKG.SET_HELP_FORM_ATTRIBUTES(
        pio_hfat_id             => V_HFAT_ID,
        pi_mode                 => 'NEW',
        pi_hfat_attr_fk         => V_ATTR_ID_string,
        pi_hfat_jason_fk        => V_JSON_ID,
        pi_hfat_name            => 'IBAN',
        pi_hfat_required_yn     => 'N'
    );

        v_hjdp_id   := null;
        SFB_P0001_PKG.SET_HELP_JSON_DATA_TYPE_PROPERTIES( 
                pio_hjdp_id             => v_hjdp_id
              , pi_mode                 => 'NEW'
              , pi_hjdp_name            => '17'
              , pi_hjdp_hfat_fk         => V_HFAT_ID
              , pi_hjdp_prop_fk         => v_prop_id_MAXLENGHT
            ); 

    SFB_P0001_PKG.pr_create_json (
    pi_JSON_ID    => V_JSON_ID
    );



-- ========================================================================================
-- ========================================================================================
-- ========================================================================================


    -- Formular erstellen: Bank Information Form
    V_JSON_ID := SFB_JSON_FORM_PKG.CREATE_ROW(
                    p_json_name           => 'Help Us Serve You Better '|| v_counter,
                    p_json_code           => NULL,
                    p_json_remark         => 'Survey'
                );

        -- update session
    update SFB_JSON_FORM
       set JSON_USER_SESSION_ID = v('APP_SESSION')
     where JSON_ID = V_JSON_ID
    ;
    -- create ref form
    SFB_HELP_REFRENZ_JSON_FORM_PKG.create_row (   
       p_hrjf_main_json_fk          => v_json_id_emp_form
     , p_hrjf_refrenz_json_fk       => V_JSON_ID 
     , p_hrjf_name                  => 'Help us'
    );  

    V_HFAT_ID    := null;
    SFB_P0001_PKG.SET_HELP_FORM_ATTRIBUTES(
        pio_hfat_id             => V_HFAT_ID,
        pi_mode                 => 'NEW',
        pi_hfat_attr_fk         => V_ATTR_ID_STRING,
        pi_hfat_jason_fk        => V_JSON_ID,
        pi_hfat_name            => 'Preferred Contact Method',
        pi_hfat_required_yn     => 'Y'
        );

        v_hjdp_id   := null;
        SFB_P0001_PKG.SET_HELP_JSON_DATA_TYPE_PROPERTIES( 
                pio_hjdp_id             => v_hjdp_id
              , pi_mode                 => 'NEW'
              , pi_hjdp_name            => 'radio'
              , pi_hjdp_hfat_fk         => V_HFAT_ID
              , pi_hjdp_prop_fk         => v_prop_id_ITEMTYPE
                ); 

        v_hjdp_id   := null;
        SFB_P0001_PKG.SET_HELP_JSON_DATA_TYPE_PROPERTIES( 
                pio_hjdp_id             => v_hjdp_id
              , pi_mode                 => 'NEW'
              , pi_hjdp_name            => 'Phone, Email, None'
              , pi_hjdp_hfat_fk         => V_HFAT_ID
              , pi_hjdp_prop_fk         => v_prop_id_ENUM
            ); 

    V_HFAT_ID    := null;
    SFB_P0001_PKG.SET_HELP_FORM_ATTRIBUTES(
        pio_hfat_id             => V_HFAT_ID,
        pi_mode                 => 'NEW',
        pi_hfat_attr_fk         => V_ATTR_ID_URL,
        pi_hfat_jason_fk        => V_JSON_ID,
        pi_hfat_name            => 'Profile url:',
        pi_hfat_required_yn     => 'N'
    );

    V_HFAT_ID    := null;
    SFB_P0001_PKG.SET_HELP_FORM_ATTRIBUTES(
        pio_hfat_id             => V_HFAT_ID,
        pi_mode                 => 'NEW',
        pi_hfat_attr_fk         => V_ATTR_ID_INTEGER,
        pi_hfat_jason_fk        => V_JSON_ID,
        pi_hfat_name            => 'Phone Number',
        pi_hfat_required_yn     => 'N'
    );
    
        v_hjdp_id   := null;
        SFB_P0001_PKG.SET_HELP_JSON_DATA_TYPE_PROPERTIES( 
                pio_hjdp_id             => v_hjdp_id
              , pi_mode                 => 'NEW'
              , pi_hjdp_name            => 'Enter your phone number'
              , pi_hjdp_hfat_fk         => V_HFAT_ID
              , pi_hjdp_prop_fk         => v_prop_id_PLACEHOLDER
            ); 

    V_HFAT_ID    := null;
    SFB_P0001_PKG.SET_HELP_FORM_ATTRIBUTES(
        pio_hfat_id             => V_HFAT_ID,
        pi_mode                 => 'NEW',
        pi_hfat_attr_fk         => V_ATTR_ID_DATE_TIME,
        pi_hfat_jason_fk        => V_JSON_ID,
        pi_hfat_name            => 'Submit Date',
        pi_hfat_required_yn     => 'Y'
    );


        V_HFAT_ID    := null;
    SFB_P0001_PKG.SET_HELP_FORM_ATTRIBUTES(
        pio_hfat_id             => V_HFAT_ID,
        pi_mode                 => 'NEW',
        pi_hfat_attr_fk         => V_ATTR_ID_STRING,
        pi_hfat_jason_fk        => V_JSON_ID,
        pi_hfat_name            => 'Comments',
        pi_hfat_required_yn     => 'N'
    );

            v_hjdp_id   := null;
        SFB_P0001_PKG.SET_HELP_JSON_DATA_TYPE_PROPERTIES( 
                pio_hjdp_id             => v_hjdp_id
              , pi_mode                 => 'NEW'
              , pi_hjdp_name            => 'Enter your phone number'
              , pi_hjdp_hfat_fk         => V_HFAT_ID
              , pi_hjdp_prop_fk         => v_prop_id_PLACEHOLDER
            ); 

        v_hjdp_id   := null;
        SFB_P0001_PKG.SET_HELP_JSON_DATA_TYPE_PROPERTIES( 
                pio_hjdp_id             => v_hjdp_id
              , pi_mode                 => 'NEW'
              , pi_hjdp_name            => 'textarea'
              , pi_hjdp_hfat_fk         => V_HFAT_ID
              , pi_hjdp_prop_fk         => v_prop_id_ITEMTYPE
            ); 

            v_hjdp_id   := null;
        SFB_P0001_PKG.SET_HELP_JSON_DATA_TYPE_PROPERTIES( 
                pio_hjdp_id             => v_hjdp_id
              , pi_mode                 => 'NEW'
              , pi_hjdp_name            => '8'
              , pi_hjdp_hfat_fk         => V_HFAT_ID
              , pi_hjdp_prop_fk         => v_prop_id_LINES
            ); 

    SFB_P0001_PKG.pr_create_json (
    pi_JSON_ID    => V_JSON_ID
    );

-- ========================================================================================
-- ========================================================================================
-- ========================================================================================
 
-- Formular erstellen: Employee Skills
    V_JSON_ID := SFB_JSON_FORM_PKG.CREATE_ROW(
                    p_json_name           => 'Employee Skills '|| v_counter,
                    p_json_code           => NULL,
                    p_json_remark         => 'Form to collect ualification information'
                ); 
    -- update session
    update SFB_JSON_FORM
       set JSON_USER_SESSION_ID = v('APP_SESSION')
     where JSON_ID = V_JSON_ID
    ;

   -- create ref form
    SFB_HELP_REFRENZ_JSON_FORM_PKG.create_row (   
       p_hrjf_main_json_fk          => v_json_id_emp_form
     , p_hrjf_refrenz_json_fk       => V_JSON_ID
     , p_HRJF_ARRAY_YN              => 'Y'
     , p_hrjf_name                  => 'Qualifications'
    ); 

    -- Set form attributes:
    V_HFAT_ID    := null;
    SFB_P0001_PKG.SET_HELP_FORM_ATTRIBUTES(
        pio_hfat_id             => V_HFAT_ID,
        pi_mode                 => 'NEW',
        pi_hfat_attr_fk         => V_ATTR_ID_string,
        pi_hfat_jason_fk        => V_JSON_ID,
        pi_hfat_name            => 'Skill Name',
        pi_hfat_required_yn     => 'N'
    );

    -- Set form attributes:
    V_HFAT_ID    := null;
    SFB_P0001_PKG.SET_HELP_FORM_ATTRIBUTES(
        pio_hfat_id             => V_HFAT_ID,
        pi_mode                 => 'NEW',
        pi_hfat_attr_fk         => V_ATTR_ID_INTEGER,
        pi_hfat_jason_fk        => V_JSON_ID,
        pi_hfat_name            => 'Years of Experience',
        pi_hfat_required_yn     => 'N'
    );

    -- Set form attributes:
    V_HFAT_ID    := null;
    SFB_P0001_PKG.SET_HELP_FORM_ATTRIBUTES(
        pio_hfat_id             => V_HFAT_ID,
        pi_mode                 => 'NEW',
        pi_hfat_attr_fk         => V_ATTR_ID_BOOLEAN,
        pi_hfat_jason_fk        => V_JSON_ID,
        pi_hfat_name            => 'Certified Developer ',
        pi_hfat_required_yn     => 'N'
    );

    SFB_P0001_PKG.pr_create_json (
    pi_JSON_ID    => V_JSON_ID
    );

-- ========================================================================================
-- ========================================================================================
-- ========================================================================================
    
    -- run final, to get all sub forms
    SFB_P0001_PKG.pr_create_json (
        pi_JSON_ID    => v_json_id_emp_form
    );

end pr_install_example;


end SFB_P0001_PKG;
/