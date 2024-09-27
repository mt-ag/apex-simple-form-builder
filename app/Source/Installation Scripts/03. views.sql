CREATE OR REPLACE FORCE EDITIONABLE VIEW "SFB_JSON_WITH_ATTRIBUTES_V" ("V_ROWNUM", "JSON_NAME", "JSON_ID", "FIELD_NAME", "ORIGINAL_FIELD_NAME", "ATTRIBUTE_NAME", "REQUIRED_YN", "HFAT_ID") AS 
  select rownum                   as v_rownum
             , JSON_NAME                as JSON_NAME
             , JSON_ID                  as JSON_ID
             , REGEXP_REPLACE(INITCAP(REPLACE(HFAT_NAME, ' ', '_')), '[^A-Za-z0-9]', '')                 as field_name
             , HFAT_NAME                as original_field_name
             , ATTR_RETURN_VALUE        as Attribute_name
             , HFAT_REQUIRED_YN         as required_yn
             , HFAT_ID                  as HFAT_ID
          from SFB_JSON_FORM
          join SFB_HELP_FORM_ATTRIBUTES on (JSON_ID=HFAT_JASON_FK) 
          join SFB_ATTRIBUTES           on (HFAT_ATTR_FK=ATTR_ID) 
          and HFAT_DELETED_YN = 'NO'
          and ATTR_DELETED_YN = 'NO'
       --  where JSON_ID = pi_JSON_ID;

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "SFB_P0001_HELP_FORM_ATTRIBUTES_V" ("URL_LINK", "HFAT_ID", "HFAT_NAME", "HFAT_REQUIRED_YN", "HFAT_ATTR_FK", "HFAT_JASON_FK", "HELP_TEXT") AS 
  select null                     as URL_LINK
     , HFAT_ID                  as HFAT_ID
     , HFAT_NAME                as HFAT_NAME
     , HFAT_REQUIRED_YN         as HFAT_REQUIRED_YN
     , HFAT_ATTR_FK             as HFAT_ATTR_FK
     , HFAT_JASON_FK            as HFAT_JASON_FK
     , HFAT_ATTR_FK             as HELP_TEXT
  from SFB_HELP_FORM_ATTRIBUTES
  where HFAT_DELETED_YN = 'NO';

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "SFB_P0001_HELP_FORM_REFRFORMS_V" ("HRJF_ID", "MAIN_FORM", "REFR_FORM", "HRJF_MAIN_JSON_FK", "HRJF_REFRENZ_JSON_FK", "HRJF_CREATED", "JSON_ID", "TOTAL_FIELD", "FIELD_NAME", "HRJF_NAME") AS 
  select HRJF_ID                    as HRJF_ID
        , JSON_MAIN.JSON_NAME       as MAIN_FORM 
        , JSON_REFR.JSON_NAME       as REFR_FORM
        , HRJF_MAIN_JSON_FK         as HRJF_MAIN_JSON_FK
        , HRJF_REFRENZ_JSON_FK      as HRJF_REFRENZ_JSON_FK
        , HRJF_CREATED              as HRJF_CREATED
        , JSON_REFR.JSON_ID         as JSON_ID
        , count(HFAT_ID)            as total_field
        , LISTAGG(HFAT_NAME, ', ') WITHIN GROUP (ORDER BY HFAT_CREATED) AS Field_name
        , HRJF_NAME                 as HRJF_NAME
     from SFB_HELP_REFRENZ_JSON_FORM
left join SFB_JSON_FORM JSON_MAIN
       on JSON_MAIN.JSON_ID = HRJF_MAIN_JSON_FK
left join SFB_JSON_FORM JSON_REFR
       on JSON_REFR.JSON_ID = HRJF_REFRENZ_JSON_FK
left join SFB_HELP_FORM_ATTRIBUTES  
       on HFAT_JASON_FK = JSON_REFR.JSON_ID 
    where HRJF_DELETED_YN = 'NO'
    group by  HRJF_ID , JSON_MAIN.JSON_NAME , JSON_REFR.JSON_NAME , HRJF_MAIN_JSON_FK , HRJF_REFRENZ_JSON_FK , HRJF_CREATED , JSON_REFR.JSON_ID, HRJF_NAME;

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "SFB_P0001_HELP_JSON_DATA_TYPE_PROPERTIES_V" ("HJDP_ID", "HJDP_NAME", "HJDP_HFAT_FK", "HJDP_PROP_FK", "HELP_LINK") AS 
  select HJDP_ID
     , HJDP_NAME
     , HJDP_HFAT_FK
     , HJDP_PROP_FK 
     , HJDP_PROP_FK as HELP_LINK
  from SFB_HELP_JSON_DATA_TYPE_PROPERTIES
 where HJDP_DELETED_YN = 'NO';

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "SFB_P0100_ATTRIBUTES_V" ("URL_LINK", "ATTR_ID", "ATTR_NAME", "ATTR_RETURN_VALUE", "ATTR_TYPE", "ATTR_REMARK", "ATTR_CREATED", "ATTR_CREATED_BY") AS 
  select null                  as URL_LINK
     , ATTR_ID               as ATTR_ID
     , ATTR_NAME             as ATTR_NAME
     , ATTR_RETURN_VALUE     as ATTR_RETURN_VALUE
     , ATTR_TYPE             as ATTR_TYPE
     , ATTR_REMARK           as ATTR_REMARK
     , ATTR_CREATED          as ATTR_CREATED
     , ATTR_CREATED_BY       as ATTR_CREATED_BY
  from SFB_ATTRIBUTES
  where ATTR_DELETED_YN = 'NO';

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "SFB_P0200_PROPERTIES_V" ("URL_LINK", "PROP_ID", "PROP_NAME", "PROP_RETURN_VALUE", "PROP_TYPE", "PROP_REMARK", "PROP_CREATED", "PROP_CREATED_BY") AS 
  select null                  as URL_LINK
     , PROP_ID               as PROP_ID
     , PROP_NAME             as PROP_NAME
     , PROP_RETURN_VALUE     as PROP_RETURN_VALUE
     , PROP_TYPE             as PROP_TYPE
     , PROP_REMARK           as PROP_REMARK
     , PROP_CREATED          as PROP_CREATED
     , PROP_CREATED_BY       as PROP_CREATED_BY
  from SFB_PROPERTIES
  where PROP_DELETED_YN = 'NO';

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "SFB_P0610_REFRENCED_FORM_V" ("MAIN_JSON_ID", "MAIN_JSON_NAME", "REF_JSON_ID", "REF_JSON_NAME", "HRJF_NAME") AS 
  select -- main json
       main_json.JSON_ID                as main_JSON_ID
     , main_json.JSON_NAME              as main_JSON_NAME
       -- ref json
     , ref_json.JSON_ID                 as ref_JSON_ID
     , ref_json.JSON_NAME               as ref_JSON_NAME
       -- ref table
     , HRJF_NAME                        as HRJF_NAME
  from SFB_JSON_FORM main_json
  join SFB_HELP_REFRENZ_JSON_FORM        on (main_json.JSON_ID = HRJF_MAIN_JSON_FK)
  join SFB_JSON_FORM ref_json            on (ref_json.JSON_ID  = HRJF_REFRENZ_JSON_FK) 
  where HRJF_DELETED_YN = 'NO'
   and ref_json.JSON_DELETED_YN = 'NO';

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "SFB_PROPERTIES_V" ("V_ROWNUM", "PROPERTY_NAME", "PROPERTY_VALUE", "HJDP_HFAT_FK", "PROP_TYPE", "ATTR_NAME") AS 
  select rownum                          as v_rownum
                                , PROP_RETURN_VALUE               as property_name
                                , HJDP_NAME                       as property_value
                                , HJDP_HFAT_FK                    as HJDP_HFAT_FK
                                , PROP_TYPE                       as PROP_TYPE   
                                , ATTR_NAME                       as ATTR_NAME       
                             from SFB_HELP_FORM_ATTRIBUTES
                             join SFB_HELP_JSON_DATA_TYPE_PROPERTIES  on (HFAT_ID = HJDP_HFAT_FK)
                             join SFB_PROPERTIES                      on (PROP_ID = HJDP_PROP_FK)
                             join SFB_ATTRIBUTES                      on (ATTR_ID = HFAT_ATTR_FK)
                             where HFAT_DELETED_YN = 'NO'
                               and HJDP_DELETED_YN = 'NO'
                               and PROP_DELETED_YN = 'NO';
                               /