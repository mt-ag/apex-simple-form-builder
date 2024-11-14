create or replace package SFB_P0610_PKG as

PROCEDURE pr_delete_form(  
    pi_JSON_ID            IN OUT SFB_JSON_FORM.JSON_ID%TYPE   
);
 
end SFB_P0610_PKG;
/
create or replace package body SFB_P0610_PKG as

PROCEDURE pr_delete_form(  
    pi_JSON_ID            IN OUT SFB_JSON_FORM.JSON_ID%TYPE   
)

is

    v_json_id               number;
    v_HFAT_ID               number;
    v_HJDP_ID               number;

begin

    -- delete properties
    for delete_form in (select json_id      as JSON_ID
                             , HFAT_ID      as HFAT_ID
                             , HJDP_ID      as HJDP_ID
                          from SFB_JSON_FORM
                          left join SFB_HELP_FORM_ATTRIBUTES           on (json_id = HFAT_JASON_FK)
                          left join SFB_HELP_JSON_DATA_TYPE_PROPERTIES on (HFAT_ID = HJDP_HFAT_FK)
                         where json_id = pi_JSON_ID
                           and HJDP_ID is not null
                        )
    loop

        -- save ids
        v_json_id       := delete_form.JSON_ID;
        v_HFAT_ID       := delete_form.HFAT_ID;
        v_HJDP_ID       := delete_form.HJDP_ID;

        delete from SFB_HELP_JSON_DATA_TYPE_PROPERTIES 
         where HJDP_ID = v_HJDP_ID
        ;

    end loop;

    -- delete attributes
    for delete_form in (select json_id      as JSON_ID
                             , HFAT_ID      as HFAT_ID
                             , HJDP_ID      as HJDP_ID
                          from SFB_JSON_FORM
                          left join SFB_HELP_FORM_ATTRIBUTES           on (json_id = HFAT_JASON_FK)
                          left join SFB_HELP_JSON_DATA_TYPE_PROPERTIES on (HFAT_ID = HJDP_HFAT_FK)
                         where json_id = pi_JSON_ID
                           and HFAT_ID is not null
                        )
    loop

        -- save ids
        v_json_id       := delete_form.JSON_ID;
        v_HFAT_ID       := delete_form.HFAT_ID;
        v_HJDP_ID       := delete_form.HJDP_ID;

        delete from SFB_HELP_FORM_ATTRIBUTES 
         where HFAT_ID = v_HFAT_ID
        ;

    end loop;

    -- delete own refrenced forms
    delete from SFB_HELP_REFRENZ_JSON_FORM 
     where HRJF_MAIN_JSON_FK = pi_JSON_ID
    ; 

    -- delete from other references
    delete from SFB_HELP_REFRENZ_JSON_FORM 
     where HRJF_REFRENZ_JSON_FK = pi_JSON_ID
    ; 

    -- delete form
    delete from SFB_JSON_FORM 
     where JSON_ID = pi_JSON_ID
    ;

end pr_delete_form;
 
end SFB_P0610_PKG;
/