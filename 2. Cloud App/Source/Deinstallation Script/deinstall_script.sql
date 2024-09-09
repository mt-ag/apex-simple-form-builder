prompt -- Deinstall Supporting Objects
drop sequence SFB_ATTR_SEQ;
drop sequence SFB_HEAP_SEQ;
drop sequence SFB_HFAT_SEQ;
drop sequence SFB_HJDP_SEQ;
drop sequence SFB_HRJF_SEQ;
drop sequence SFB_JSON_SEQ;
drop sequence SFB_PROP_SEQ;

drop table SFB_HELP_ATTRIBUTES_PROPERTIES_REL CASCADE CONSTRAINTS;
drop table SFB_HELP_JSON_DATA_TYPE_PROPERTIES CASCADE CONSTRAINTS;
drop table SFB_HELP_FORM_ATTRIBUTES CASCADE CONSTRAINTS;
drop table SFB_HELP_REFRENZ_JSON_FORM CASCADE CONSTRAINTS;
drop table SFB_JSON_FORM CASCADE CONSTRAINTS;
drop table SFB_PROPERTIES CASCADE CONSTRAINTS;
drop table SFB_ATTRIBUTES CASCADE CONSTRAINTS;


drop view SFB_JSON_WITH_ATTRIBUTES_V;
drop view SFB_P0001_HELP_FORM_ATTRIBUTES_V;
drop view SFB_P0001_HELP_FORM_REFRFORMS_V;
drop view SFB_P0001_HELP_JSON_DATA_TYPE_PROPERTIES_V;
drop view SFB_P0100_ATTRIBUTES_V;
drop view SFB_P0200_PROPERTIES_V;
drop view SFB_P0610_REFRENCED_FORM_V;
drop view SFB_PROPERTIES_V;

drop package SBF_P0201_PKG;
drop package SBF_P0610_PKG;
drop package SFB_ATTRIBUTES_PKG;
drop package SFB_HELP_ATTRIBUTES_PROPERTIES_REL_PKG;
drop package SFB_HELP_FORM_ATTRIBUTES_PKG;
drop package SFB_HELP_JSON_DATA_TYPE_PROPERTIES_PKG;
drop package SFB_HELP_REFRENZ_JSON_FORM_PKG;
drop package SFB_JSON_FORM_PKG;
drop package SFB_P0101_PKG;
drop package SFB_PROPERTIES_PKG;  
drop package SFB_P0001_PKG;  

prompt  ...done