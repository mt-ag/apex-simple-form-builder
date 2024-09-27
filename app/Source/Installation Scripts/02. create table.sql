  CREATE TABLE "SFB_JSON_FORM" 
   (	"JSON_ID" NUMBER DEFAULT "SFB_JSON_SEQ"."NEXTVAL" NOT NULL ENABLE, 
	"JSON_NAME" VARCHAR2(4000) NOT NULL ENABLE, 
	"JSON_CODE" CLOB, 
	"JSON_REMARK" VARCHAR2(4000), 
	"JSON_USER_SESSION_ID" NUMBER, 
	"JSON_CREATED" TIMESTAMP (6) DEFAULT sysdate NOT NULL ENABLE, 
	"JSON_CREATED_BY" VARCHAR2(4000) DEFAULT ( coalesce(sys_context('apex$session', 'app_user'), 
                                                           sys_context('userenv', 'os_user'), 
                                                           sys_context('userenv', 'session_user')) ) NOT NULL ENABLE, 
	"JSON_UPDATED" TIMESTAMP (6) DEFAULT sysdate NOT NULL ENABLE, 
	"JSON_UPDATED_BY" VARCHAR2(4000) DEFAULT ( coalesce(sys_context('apex$session', 'app_user'), 
                                                           sys_context('userenv', 'os_user'), 
                                                           sys_context('userenv', 'session_user')) ) NOT NULL ENABLE, 
	"JSON_VALID_FROM" TIMESTAMP (6) DEFAULT sysdate NOT NULL ENABLE, 
	"JSON_VALID_TO" TIMESTAMP (6) DEFAULT TO_DATE('31.12.2999', 'DD.MM.YYYY') NOT NULL ENABLE, 
	"JSON_DELETED_YN" VARCHAR2(4) DEFAULT 'NO' NOT NULL ENABLE, 
	 CONSTRAINT "JSON_FORM_PK" PRIMARY KEY ("JSON_ID")
  USING INDEX  ENABLE, 
	 CONSTRAINT "JSON_NAME_UNQ" UNIQUE ("JSON_NAME")
  USING INDEX  ENABLE
   ) ;

  CREATE TABLE "SFB_ATTRIBUTES" 
   (	"ATTR_ID" NUMBER DEFAULT "SFB_ATTR_SEQ"."NEXTVAL" NOT NULL ENABLE, 
	"ATTR_NAME" VARCHAR2(4000) NOT NULL ENABLE, 
	"ATTR_RETURN_VALUE" VARCHAR2(4000) NOT NULL ENABLE, 
	"ATTR_TYPE" VARCHAR2(4000) DEFAULT 'type', 
	"ATTR_REMARK" VARCHAR2(4000), 
	"ATTR_HELP_TEXT" CLOB default 'No help text is available at the moment, but it will be updated shortly.', 
	"ATTR_CREATED" TIMESTAMP (6) DEFAULT sysdate NOT NULL ENABLE, 
	"ATTR_CREATED_BY" VARCHAR2(4000) DEFAULT ( coalesce(sys_context('apex$session', 'app_user'), 
                                                           sys_context('userenv', 'os_user'), 
                                                           sys_context('userenv', 'session_user')) ) NOT NULL ENABLE, 
	"ATTR_UPDATED" TIMESTAMP (6) DEFAULT sysdate NOT NULL ENABLE, 
	"ATTR_UPDATED_BY" VARCHAR2(4000) DEFAULT ( coalesce(sys_context('apex$session', 'app_user'), 
                                                           sys_context('userenv', 'os_user'), 
                                                           sys_context('userenv', 'session_user')) ) NOT NULL ENABLE, 
	"ATTR_VALID_FROM" TIMESTAMP (6) DEFAULT sysdate NOT NULL ENABLE, 
	"ATTR_VALID_TO" TIMESTAMP (6) DEFAULT TO_DATE('31.12.2999', 'DD.MM.YYYY') NOT NULL ENABLE, 
	"ATTR_DELETED_YN" VARCHAR2(4) DEFAULT 'NO' NOT NULL ENABLE, 
	 CONSTRAINT "JSON_DATA_TYPE_PK" PRIMARY KEY ("ATTR_ID")
  USING INDEX  ENABLE, 
	 CONSTRAINT "ATTR_NAME_UNQ" UNIQUE ("ATTR_NAME")
  USING INDEX  ENABLE
   ) ;

  CREATE TABLE "SFB_HELP_ATTRIBUTES_PROPERTIES_REL" 
   (	"HEAP_ID" NUMBER DEFAULT "SFB_HEAP_SEQ"."NEXTVAL" NOT NULL ENABLE, 
	"HEAP_PROP_FK" NUMBER NOT NULL ENABLE, 
	"HEAP_ATTR_FK" NUMBER NOT NULL ENABLE, 
	"HEAP_REMARK" VARCHAR2(4000), 
	"HEAP_CREATED" TIMESTAMP (6) DEFAULT sysdate NOT NULL ENABLE, 
	"HEAP_CREATED_BY" VARCHAR2(4000) DEFAULT ( coalesce(sys_context('apex$session', 'app_user'), 
                                                           sys_context('userenv', 'os_user'), 
                                                           sys_context('userenv', 'session_user')) ) NOT NULL ENABLE, 
	"HEAP_UPDATED" TIMESTAMP (6) DEFAULT sysdate NOT NULL ENABLE, 
	"HEAP_UPDATED_BY" VARCHAR2(4000) DEFAULT ( coalesce(sys_context('apex$session', 'app_user'), 
                                                           sys_context('userenv', 'os_user'), 
                                                           sys_context('userenv', 'session_user')) ) NOT NULL ENABLE, 
	"HEAP_VALID_FROM" TIMESTAMP (6) DEFAULT sysdate NOT NULL ENABLE, 
	"HEAP_VALID_TO" TIMESTAMP (6) DEFAULT TO_DATE('31.12.2999', 'DD.MM.YYYY') NOT NULL ENABLE, 
	"HEAP_DELETED_YN" VARCHAR2(4) DEFAULT 'NO' NOT NULL ENABLE, 
	 CONSTRAINT "SFB_HELP_ATTRIBUTES_PROPERTIES_REL_CON_PK" PRIMARY KEY ("HEAP_ID")
  USING INDEX  ENABLE
   ) ;

  CREATE TABLE "SFB_HELP_FORM_ATTRIBUTES" 
   (	"HFAT_ID" NUMBER DEFAULT "SFB_HFAT_SEQ"."NEXTVAL" NOT NULL ENABLE, 
	"HFAT_REQUIRED_YN" VARCHAR2(4) DEFAULT 'N', 
	"HFAT_REMARK" VARCHAR2(4000), 
	"HFAT_CREATED" TIMESTAMP (6) DEFAULT sysdate NOT NULL ENABLE, 
	"HFAT_CREATED_BY" VARCHAR2(4000) DEFAULT ( coalesce(sys_context('apex$session', 'app_user'), 
                                                           sys_context('userenv', 'os_user'), 
                                                           sys_context('userenv', 'session_user')) ) NOT NULL ENABLE, 
	"HFAT_UPDATED" TIMESTAMP (6) DEFAULT sysdate NOT NULL ENABLE, 
	"HFAT_UPDATED_BY" VARCHAR2(4000) DEFAULT ( coalesce(sys_context('apex$session', 'app_user'), 
                                                           sys_context('userenv', 'os_user'), 
                                                           sys_context('userenv', 'session_user')) ) NOT NULL ENABLE, 
	"HFAT_VALID_FROM" TIMESTAMP (6) DEFAULT sysdate NOT NULL ENABLE, 
	"HFAT_VALID_TO" TIMESTAMP (6) DEFAULT TO_DATE('31.12.2999', 'DD.MM.YYYY') NOT NULL ENABLE, 
	"HFAT_DELETED_YN" VARCHAR2(4) DEFAULT 'NO' NOT NULL ENABLE, 
	"HFAT_ATTR_FK" NUMBER NOT NULL ENABLE, 
	"HFAT_JASON_FK" NUMBER NOT NULL ENABLE, 
	"HFAT_NAME" VARCHAR2(4000), 
	 CONSTRAINT "HELP_FORM_ATTRIBUTES_PK" PRIMARY KEY ("HFAT_ID")
  USING INDEX  ENABLE
   ) ;

  CREATE TABLE "SFB_HELP_JSON_DATA_TYPE_PROPERTIES" 
   (	"HJDP_ID" NUMBER DEFAULT "SFB_HJDP_SEQ"."NEXTVAL" NOT NULL ENABLE, 
	"HJDP_NAME" VARCHAR2(4000), 
	"HJDP_REMARK" VARCHAR2(4000), 
	"HJDP_CREATED" TIMESTAMP (6) DEFAULT sysdate NOT NULL ENABLE, 
	"HJDP_CREATED_BY" VARCHAR2(4000) DEFAULT ( coalesce(sys_context('apex$session', 'app_user'), 
                                                           sys_context('userenv', 'os_user'), 
                                                           sys_context('userenv', 'session_user')) ) NOT NULL ENABLE, 
	"HJDP_UPDATED" TIMESTAMP (6) DEFAULT sysdate NOT NULL ENABLE, 
	"HJDP_UPDATED_BY" VARCHAR2(4000) DEFAULT ( coalesce(sys_context('apex$session', 'app_user'), 
                                                           sys_context('userenv', 'os_user'), 
                                                           sys_context('userenv', 'session_user')) ) NOT NULL ENABLE, 
	"HJDP_VALID_FROM" TIMESTAMP (6) DEFAULT sysdate NOT NULL ENABLE, 
	"HJDP_VALID_TO" TIMESTAMP (6) DEFAULT TO_DATE('31.12.2999', 'DD.MM.YYYY') NOT NULL ENABLE, 
	"HJDP_DELETED_YN" VARCHAR2(4) DEFAULT 'NO' NOT NULL ENABLE, 
	"HJDP_HFAT_FK" NUMBER NOT NULL ENABLE, 
	"HJDP_PROP_FK" NUMBER NOT NULL ENABLE, 
	 CONSTRAINT "SFB_HELP_JSON_DATA_TYPE_PROPERTIES_CON_PK" PRIMARY KEY ("HJDP_ID")
  USING INDEX  ENABLE
   ) ;

  CREATE TABLE "SFB_HELP_REFRENZ_JSON_FORM" 
   (	"HRJF_ID" NUMBER DEFAULT "SFB_HRJF_SEQ"."NEXTVAL" NOT NULL ENABLE, 
	"HRJF_MAIN_JSON_FK" NUMBER NOT NULL ENABLE, 
	"HRJF_REFRENZ_JSON_FK" NUMBER NOT NULL ENABLE, 
	"HRJF_REMARK" VARCHAR2(4000), 
	"HRJF_CREATED" TIMESTAMP (6) DEFAULT sysdate NOT NULL ENABLE, 
	"HRJF_CREATED_BY" VARCHAR2(4000) DEFAULT ( coalesce(sys_context('apex$session', 'app_user'), 
                                                           sys_context('userenv', 'os_user'), 
                                                           sys_context('userenv', 'session_user')) ) NOT NULL ENABLE, 
	"HRJF_UPDATED" TIMESTAMP (6) DEFAULT sysdate NOT NULL ENABLE, 
	"HRJF_UPDATED_BY" VARCHAR2(4000) DEFAULT ( coalesce(sys_context('apex$session', 'app_user'), 
                                                           sys_context('userenv', 'os_user'), 
                                                           sys_context('userenv', 'session_user')) ) NOT NULL ENABLE, 
	"HRJF_VALID_FROM" TIMESTAMP (6) DEFAULT sysdate NOT NULL ENABLE, 
	"HRJF_VALID_TO" TIMESTAMP (6) DEFAULT TO_DATE('31.12.2999', 'DD.MM.YYYY') NOT NULL ENABLE, 
	"HRJF_DELETED_YN" VARCHAR2(4) DEFAULT 'NO' NOT NULL ENABLE, 
	"HRJF_NAME" VARCHAR2(4000) NOT NULL ENABLE, 
	"HRJF_ARRAY_YN" VARCHAR2(1) DEFAULT 'N', 
	 CONSTRAINT "HELP_REFRENZ_JSON_FORM_CON" UNIQUE ("HRJF_MAIN_JSON_FK", "HRJF_REFRENZ_JSON_FK") DISABLE, 
	 CONSTRAINT "SFB_HELP_REFRENZ_JSON_FORM_CON_PK" PRIMARY KEY ("HRJF_ID")
  USING INDEX  ENABLE
   ) ;

  CREATE TABLE "SFB_PROPERTIES" 
   (	"PROP_ID" NUMBER DEFAULT "SFB_PROP_SEQ"."NEXTVAL" NOT NULL ENABLE, 
	"PROP_NAME" VARCHAR2(2000) NOT NULL ENABLE, 
	"PROP_RETURN_VALUE" VARCHAR2(4000) NOT NULL ENABLE, 
	"PROP_TYPE" VARCHAR2(2000) NOT NULL ENABLE, 
	"PROP_REMARK" VARCHAR2(4000), 
	"PROP_HELP_TEXT" CLOB default 'No help text is available at the moment, but it will be updated shortly.', 
	"PROP_CREATED" TIMESTAMP (6) DEFAULT sysdate NOT NULL ENABLE, 
	"PROP_CREATED_BY" VARCHAR2(4000) DEFAULT ( coalesce(sys_context('apex$session', 'app_user'), 
                                                           sys_context('userenv', 'os_user'), 
                                                           sys_context('userenv', 'session_user')) ) NOT NULL ENABLE, 
	"PROP_UPDATED" TIMESTAMP (6) DEFAULT sysdate NOT NULL ENABLE, 
	"PROP_UPDATED_BY" VARCHAR2(4000) DEFAULT ( coalesce(sys_context('apex$session', 'app_user'), 
                                                           sys_context('userenv', 'os_user'), 
                                                           sys_context('userenv', 'session_user')) ) NOT NULL ENABLE, 
	"PROP_VALID_FROM" TIMESTAMP (6) DEFAULT sysdate NOT NULL ENABLE, 
	"PROP_VALID_TO" TIMESTAMP (6) DEFAULT TO_DATE('31.12.2999', 'DD.MM.YYYY') NOT NULL ENABLE, 
	"PROP_DELETED_YN" VARCHAR2(4) DEFAULT 'NO' NOT NULL ENABLE, 
	 CONSTRAINT "PROPERTIES_PK" PRIMARY KEY ("PROP_ID")
  USING INDEX  ENABLE, 
	 CONSTRAINT "PROP_NAME_ADV" UNIQUE ("PROP_NAME", "PROP_TYPE")
  USING INDEX  ENABLE
   ) ;

  ALTER TABLE "SFB_HELP_FORM_ATTRIBUTES" ADD CONSTRAINT "HELP_FORM_ATTRIBUTES_ATTRIBUTES_FK" FOREIGN KEY ("HFAT_ATTR_FK")
	  REFERENCES "SFB_ATTRIBUTES" ("ATTR_ID") ENABLE;
  ALTER TABLE "SFB_HELP_FORM_ATTRIBUTES" ADD CONSTRAINT "HELP_FORM_ATTRIBUTES_JSON_FORM_FK" FOREIGN KEY ("HFAT_JASON_FK")
	  REFERENCES "SFB_JSON_FORM" ("JSON_ID") ENABLE;

  ALTER TABLE "SFB_HELP_JSON_DATA_TYPE_PROPERTIES" ADD CONSTRAINT "HELP_JSON_DATA_TYPE_PROPERTIES_HELP_FORM_ATTRIBUTES_FK" FOREIGN KEY ("HJDP_HFAT_FK")
	  REFERENCES "SFB_HELP_FORM_ATTRIBUTES" ("HFAT_ID") ENABLE;
  ALTER TABLE "SFB_HELP_JSON_DATA_TYPE_PROPERTIES" ADD CONSTRAINT "HELP_JSON_DATA_TYPE_PROPERTIES_PROPERTIES_FK" FOREIGN KEY ("HJDP_PROP_FK")
	  REFERENCES "SFB_PROPERTIES" ("PROP_ID") ENABLE;

  ALTER TABLE "SFB_HELP_REFRENZ_JSON_FORM" ADD CONSTRAINT "HELP_REFRENZ_JSON_FORM_FK" FOREIGN KEY ("HRJF_MAIN_JSON_FK")
	  REFERENCES "SFB_JSON_FORM" ("JSON_ID") ENABLE;
  ALTER TABLE "SFB_HELP_REFRENZ_JSON_FORM" ADD CONSTRAINT "HRJF_REFRENZ_JSON_FK" FOREIGN KEY ("HRJF_REFRENZ_JSON_FK")
	  REFERENCES "SFB_JSON_FORM" ("JSON_ID") ENABLE;



      CREATE TABLE SFB_HELP_TEXT 
   (	
	HETE_ID NUMBER DEFAULT SFB_HETE_SEQ.NEXTVAL NOT NULL ENABLE, 
	HETE_TEXT CLOB NOT NULL, 
	HETE_TEXT_SQL CLOB , 
	HETE_CREATED TIMESTAMP (6) DEFAULT sysdate NOT NULL ENABLE, 
	HETE_CREATED_BY VARCHAR2(4000) DEFAULT ( coalesce(sys_context('apex$session', 'app_user'), 
                                                           sys_context('userenv', 'os_user'), 
                                                           sys_context('userenv', 'session_user')) ) NOT NULL ENABLE, 
	HETE_UPDATED TIMESTAMP (6) DEFAULT sysdate NOT NULL ENABLE, 
	HETE_UPDATED_BY VARCHAR2(4000) DEFAULT ( coalesce(sys_context('apex$session', 'app_user'), 
                                                           sys_context('userenv', 'os_user'), 
                                                           sys_context('userenv', 'session_user')) ) NOT NULL ENABLE, 
	HETE_VALID_FROM TIMESTAMP (6) DEFAULT sysdate NOT NULL ENABLE, 
	HETE_VALID_TO TIMESTAMP (6) DEFAULT TO_DATE('31.12.2999', 'DD.MM.YYYY') NOT NULL ENABLE, 
	HETE_DELETED_YN VARCHAR2(4) DEFAULT 'NO' NOT NULL ENABLE
);