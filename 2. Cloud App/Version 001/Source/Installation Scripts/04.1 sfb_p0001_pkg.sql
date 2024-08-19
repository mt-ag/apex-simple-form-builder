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

begin

    -- loop all properties
    for l_attributes in (select property_name          as property_name
                              , property_value         as property_value
                           from SFB_PROPERTIES_V
                          where HJDP_HFAT_FK           = pi_HFAT_ID 
                            and PROP_TYPE = 'JSON'
                          order by HJDP_HFAT_FK ASC
                        )
    loop

        -- save variable
        v_propertiy_name            := l_attributes.property_name;
        v_property_value            := l_attributes.property_value;     


        -- set komma, if not null
        if v_json_string is not null then 
            v_json_string   := v_json_string|| ', ';
        end if;

        if v_propertiy_name = 'enum' then 

            -- replace comma '","', 
            v_property_value := '["' || REPLACE(TRIM(v_property_value), ', ', '","') || '"]';
            
            -- join the string
            v_json_string   := v_json_string||'"'||v_propertiy_name||'" :'||v_property_value||'';

        else

            -- join the string
            v_json_string   := v_json_string||'"'||v_propertiy_name||'" : "'||v_property_value||'"';

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

        

        -- join the string
        v_json_string_apex   := v_json_string_apex||'"'||v_propertiy_name||'": "'||v_property_value||'"';
 
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
     "'||v_field_name||'":'||v_line_space||'{ '||v_Attribute_name||' '||v_properties_string||'}';
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
        
        -- set komma, if not null
        if v_json_string is not null then 
            v_json_string   := v_json_string|| ', ';
        end if;

        -- reset variable
        v_bracket := null;
        
        if v_rownum = v_max_loop then 
            v_bracket := '}';
        end if;

        -- join the string
       -- v_json_string   := v_json_string||'"'||v_REF_JSON_NAME||'_'||v_rownum||'" : { "$ref": "#/$defs/'||v_REF_JSON_NAME_UNDERLINE||'_'||v_rownum||'"}
        v_json_string   := v_json_string||'"'||v_HRJF_NAME||'" : { "$ref": "#/$defs/'||v_REF_JSON_NAME_UNDERLINE||'_'||v_rownum||'"}
        '||v_bracket;

        
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


end SFB_P0001_PKG;
/