DECLARE
    V_JSON_ID               NUMBER;
    V_ATTR_ID_string        NUMBER;
    V_ATTR_ID_boolean       NUMBER;
    V_ATTR_ID_integer       NUMBER; 
    v_prop_id_dd            NUMBER; 
    v_prop_id_date          NUMBER; 
    V_HFAT_ID               NUMBER;
    v_hjdp_id               number;
    v_counter               number null;
    v_json_id_emp_form      number;

BEGIN

    -- Attribute für 'String' holen
    SELECT ATTR_ID INTO V_ATTR_ID_string
    FROM SFB_ATTRIBUTES
    WHERE lower(ATTR_NAME) = 'string';  

    -- Attribute für 'integer' holen
    SELECT ATTR_ID INTO V_ATTR_ID_integer
    FROM SFB_ATTRIBUTES
    WHERE lower(ATTR_NAME) = 'integer';    
    
    -- Attribute für 'Boolean' holen für die Checkbox
    SELECT ATTR_ID INTO V_ATTR_ID_boolean
    FROM SFB_ATTRIBUTES
    WHERE lower(ATTR_NAME) = 'boolean';

    select PROP_ID 
      into v_prop_id_dd 
      from SFB_PROPERTIES 
     where lower(PROP_NAME) = lower('Dropdown List') 
    ; 

    select PROP_ID 
      into v_prop_id_date 
      from SFB_PROPERTIES 
     where lower(PROP_NAME) = lower('Format') 
      and lower(PROP_TYPE)  = 'json'
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
        pi_hfat_attr_fk         => V_ATTR_ID_string,
        pi_hfat_jason_fk        => V_JSON_ID,
        pi_hfat_name            => 'Employee Name',
        pi_hfat_required_yn     => 'Y' -- 'Employee Name' ist ein Pflichtfeld
    );

    V_HFAT_ID    := null;
    -- Formularattribute setzen
    SFB_P0001_PKG.SET_HELP_FORM_ATTRIBUTES(
        pio_hfat_id             => V_HFAT_ID,
        pi_mode                 => 'NEW',
        pi_hfat_attr_fk         => V_ATTR_ID_string,
        pi_hfat_jason_fk        => V_JSON_ID,
        pi_hfat_name            => 'Job Title',
        pi_hfat_required_yn     => 'Y' -- 'Employee Name' ist ein Pflichtfeld
    );

    v_hjdp_id   := null;
    SFB_P0001_PKG.SET_HELP_JSON_DATA_TYPE_PROPERTIES( 
            pio_hjdp_id             => v_hjdp_id
          , pi_mode                 => 'NEW'
          , pi_hjdp_name            => 'Software Engineer, Project Manager, Data Analyst, Human Resources Manager, Marketing Director'
          , pi_hjdp_hfat_fk         => V_HFAT_ID
          , pi_hjdp_prop_fk         => v_prop_id_dd
        ); 

    -- Weitere wichtige Spalten hinzufügen
    -- Hier setzen wir angenommene Attribute für E-Mail und Telefonnummer
    V_HFAT_ID    := null;
    SFB_P0001_PKG.SET_HELP_FORM_ATTRIBUTES(
        pio_hfat_id             => V_HFAT_ID, -- Angenommene neue ID für nächstes Attribut
        pi_mode                 => 'NEW',
        pi_hfat_attr_fk         => V_ATTR_ID_string, -- Angenommen, es ist derselbe Typ wie für den Namen
        pi_hfat_jason_fk        => V_JSON_ID,
        pi_hfat_name            => 'Employee Email',
        pi_hfat_required_yn     => 'Y'
    );

    V_HFAT_ID    := null;
    SFB_P0001_PKG.SET_HELP_FORM_ATTRIBUTES(
        pio_hfat_id             => V_HFAT_ID, -- Angenommene neue ID für das dritte Attribut
        pi_mode                 => 'NEW',
        pi_hfat_attr_fk         => V_ATTR_ID_string, -- AngeNommen, es ist derselbe Typ wie für den Namen
        pi_hfat_jason_fk        => V_JSON_ID,
        pi_hfat_name            => 'Employee Phone Number',
        pi_hfat_required_yn     => 'N'
    );

    V_HFAT_ID    := null;
    -- Formularattribute für die Checkbox setzen
    SFB_P0001_PKG.SET_HELP_FORM_ATTRIBUTES(
        pio_hfat_id             => V_HFAT_ID,
        pi_mode                 => 'NEW',
        pi_hfat_attr_fk         => V_ATTR_ID_boolean,
        pi_hfat_jason_fk        => V_JSON_ID,
        pi_hfat_name            => 'Accept Terms and Conditions',
        pi_hfat_required_yn     => 'Y'
    );
    
    V_HFAT_ID    := null;
SFB_P0001_PKG.SET_HELP_FORM_ATTRIBUTES(
    pio_hfat_id             => V_HFAT_ID,
    pi_mode                 => 'NEW',
    pi_hfat_attr_fk         => V_ATTR_ID_string,
    pi_hfat_jason_fk        => V_JSON_ID,
    pi_hfat_name            => 'Department',
    pi_hfat_required_yn     => 'N'
);

V_HFAT_ID    := null;
SFB_P0001_PKG.SET_HELP_FORM_ATTRIBUTES(
    pio_hfat_id             => V_HFAT_ID,
    pi_mode                 => 'NEW',
    pi_hfat_attr_fk         => V_ATTR_ID_string,
    pi_hfat_jason_fk        => V_JSON_ID,
    pi_hfat_name            => 'Position',
    pi_hfat_required_yn     => 'Y'
);

V_HFAT_ID    := null;
SFB_P0001_PKG.SET_HELP_FORM_ATTRIBUTES(
    pio_hfat_id             => V_HFAT_ID,
    pi_mode                 => 'NEW',
    pi_hfat_attr_fk         => V_ATTR_ID_string,
    pi_hfat_jason_fk        => V_JSON_ID,
    pi_hfat_name            => 'Start Date',
    pi_hfat_required_yn     => 'Y'
);

    v_hjdp_id   := null;
    SFB_P0001_PKG.SET_HELP_JSON_DATA_TYPE_PROPERTIES( 
            pio_hjdp_id             => v_hjdp_id
          , pi_mode                 => 'NEW'
          , pi_hjdp_name            => 'date'
          , pi_hjdp_hfat_fk         => V_HFAT_ID
          , pi_hjdp_prop_fk         => v_prop_id_date
        ); 

V_HFAT_ID    := null;
SFB_P0001_PKG.SET_HELP_FORM_ATTRIBUTES(
    pio_hfat_id             => V_HFAT_ID,
    pi_mode                 => 'NEW',
    pi_hfat_attr_fk         => V_ATTR_ID_integer,
    pi_hfat_jason_fk        => V_JSON_ID,
    pi_hfat_name            => 'Salary',
    pi_hfat_required_yn     => 'N'
);

V_HFAT_ID    := null;
SFB_P0001_PKG.SET_HELP_FORM_ATTRIBUTES(
    pio_hfat_id             => V_HFAT_ID,
    pi_mode                 => 'NEW',
    pi_hfat_attr_fk         => V_ATTR_ID_string,
    pi_hfat_jason_fk        => V_JSON_ID,
    pi_hfat_name            => 'Emergency Contact',
    pi_hfat_required_yn     => 'N'
);

V_HFAT_ID    := null;
SFB_P0001_PKG.SET_HELP_FORM_ATTRIBUTES(
    pio_hfat_id             => V_HFAT_ID,
    pi_mode                 => 'NEW',
    pi_hfat_attr_fk         => V_ATTR_ID_string,
    pi_hfat_jason_fk        => V_JSON_ID,
    pi_hfat_name            => 'Employee Status',
    pi_hfat_required_yn     => 'Y'
); 

V_HFAT_ID    := null;
SFB_P0001_PKG.SET_HELP_FORM_ATTRIBUTES(
    pio_hfat_id             => V_HFAT_ID,
    pi_mode                 => 'NEW',
    pi_hfat_attr_fk         => V_ATTR_ID_string,
    pi_hfat_jason_fk        => V_JSON_ID,
    pi_hfat_name            => 'Location',
    pi_hfat_required_yn     => 'N'
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
        pi_hfat_attr_fk         => V_ATTR_ID_string,
        pi_hfat_jason_fk        => V_JSON_ID,
        pi_hfat_name            => 'Feedback Type',
        pi_hfat_required_yn     => 'Y'
    );

 -- Set form attributes: Feedback Description
    V_HFAT_ID    := null;
    SFB_P0001_PKG.SET_HELP_FORM_ATTRIBUTES(
        pio_hfat_id             => V_HFAT_ID,
        pi_mode                 => 'NEW',
        pi_hfat_attr_fk         => V_ATTR_ID_string,
        pi_hfat_jason_fk        => V_JSON_ID,
        pi_hfat_name            => 'Feedback Description',
        pi_hfat_required_yn     => 'Y'
    );

    -- Set form attributes: Feedback Date
    V_HFAT_ID    := null;
    SFB_P0001_PKG.SET_HELP_FORM_ATTRIBUTES(
        pio_hfat_id             => V_HFAT_ID,
        pi_mode                 => 'NEW',
        pi_hfat_attr_fk         => V_ATTR_ID_string,
        pi_hfat_jason_fk        => V_JSON_ID,
        pi_hfat_name            => 'Feedback Date',
        pi_hfat_required_yn     => 'Y'
    );

    v_hjdp_id   := null;
    SFB_P0001_PKG.SET_HELP_JSON_DATA_TYPE_PROPERTIES( 
            pio_hjdp_id             => v_hjdp_id
          , pi_mode                 => 'NEW'
          , pi_hjdp_name            => 'date'
          , pi_hjdp_hfat_fk         => V_HFAT_ID
          , pi_hjdp_prop_fk         => v_prop_id_date
        ); 

    -- Set form attributes: Feedback Rating
    V_HFAT_ID    := null;
    SFB_P0001_PKG.SET_HELP_FORM_ATTRIBUTES(
        pio_hfat_id             => V_HFAT_ID,
        pi_mode                 => 'NEW',
        pi_hfat_attr_fk         => V_ATTR_ID_integer,
        pi_hfat_jason_fk        => V_JSON_ID,
        pi_hfat_name            => 'Feedback Rating',
        pi_hfat_required_yn     => 'N'
    );

    SFB_P0001_PKG.pr_create_json (
    pi_JSON_ID    => V_JSON_ID
    );


-- ========================================================================================
-- ========================================================================================
-- ========================================================================================



 -- Formular erstellen: Address Form
    V_JSON_ID := SFB_JSON_FORM_PKG.CREATE_ROW(
                    p_json_name           => 'Address Form '|| v_counter,
                    p_json_code           => NULL,
                    p_json_remark         => 'Form to collect address information'
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
     , p_hrjf_name                  => 'Home Address'
    );  

       -- create ref form
    SFB_HELP_REFRENZ_JSON_FORM_PKG.create_row (   
       p_hrjf_main_json_fk          => v_json_id_emp_form
     , p_hrjf_refrenz_json_fk       => V_JSON_ID
     , p_hrjf_name                  => 'Work Address'
    );  


    -- Set form attributes: Street
    V_HFAT_ID    := null;
    SFB_P0001_PKG.SET_HELP_FORM_ATTRIBUTES(
        pio_hfat_id             => V_HFAT_ID,
        pi_mode                 => 'NEW',
        pi_hfat_attr_fk         => V_ATTR_ID_string,
        pi_hfat_jason_fk        => V_JSON_ID,
        pi_hfat_name            => 'Street',
        pi_hfat_required_yn     => 'Y'
    );

    -- Set form attributes: City
    V_HFAT_ID    := null;
    SFB_P0001_PKG.SET_HELP_FORM_ATTRIBUTES(
        pio_hfat_id             => V_HFAT_ID,
        pi_mode                 => 'NEW',
        pi_hfat_attr_fk         => V_ATTR_ID_string,
        pi_hfat_jason_fk        => V_JSON_ID,
        pi_hfat_name            => 'City',
        pi_hfat_required_yn     => 'Y'
    );

    -- Set form attributes: Postal Code
    V_HFAT_ID    := null;
    SFB_P0001_PKG.SET_HELP_FORM_ATTRIBUTES(
        pio_hfat_id             => V_HFAT_ID,
        pi_mode                 => 'NEW',
        pi_hfat_attr_fk         => V_ATTR_ID_string,
        pi_hfat_jason_fk        => V_JSON_ID,
        pi_hfat_name            => 'Postal Code',
        pi_hfat_required_yn     => 'Y'
    );

    -- Set form attributes: Country
    V_HFAT_ID    := null;
    SFB_P0001_PKG.SET_HELP_FORM_ATTRIBUTES(
        pio_hfat_id             => V_HFAT_ID,
        pi_mode                 => 'NEW',
        pi_hfat_attr_fk         => V_ATTR_ID_string,
        pi_hfat_jason_fk        => V_JSON_ID,
        pi_hfat_name            => 'Country',
        pi_hfat_required_yn     => 'Y'
    );

    -- Set form attributes: Additional Information
    V_HFAT_ID    := null;
    SFB_P0001_PKG.SET_HELP_FORM_ATTRIBUTES(
        pio_hfat_id             => V_HFAT_ID,
        pi_mode                 => 'NEW',
        pi_hfat_attr_fk         => V_ATTR_ID_string,
        pi_hfat_jason_fk        => V_JSON_ID,
        pi_hfat_name            => 'Additional Information',
        pi_hfat_required_yn     => 'N'
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
     , p_hrjf_name                  => 'Expense Reimbursement Account'
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

    -- Set form attributes: Account Number
    V_HFAT_ID    := null;
    SFB_P0001_PKG.SET_HELP_FORM_ATTRIBUTES(
        pio_hfat_id             => V_HFAT_ID,
        pi_mode                 => 'NEW',
        pi_hfat_attr_fk         => V_ATTR_ID_string,
        pi_hfat_jason_fk        => V_JSON_ID,
        pi_hfat_name            => 'Account Number',
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
        pi_hfat_required_yn     => 'Y'
    );

    -- Set form attributes: BIC
    V_HFAT_ID    := null;
    SFB_P0001_PKG.SET_HELP_FORM_ATTRIBUTES(
        pio_hfat_id             => V_HFAT_ID,
        pi_mode                 => 'NEW',
        pi_hfat_attr_fk         => V_ATTR_ID_string,
        pi_hfat_jason_fk        => V_JSON_ID,
        pi_hfat_name            => 'BIC',
        pi_hfat_required_yn     => 'Y'
    );

    -- Set form attributes: Additional Banking Information
    V_HFAT_ID    := null;
    SFB_P0001_PKG.SET_HELP_FORM_ATTRIBUTES(
        pio_hfat_id             => V_HFAT_ID,
        pi_mode                 => 'NEW',
        pi_hfat_attr_fk         => V_ATTR_ID_string,
        pi_hfat_jason_fk        => V_JSON_ID,
        pi_hfat_name            => 'Additional Banking Information',
        pi_hfat_required_yn     => 'N'
    );


    SFB_P0001_PKG.pr_create_json (
    pi_JSON_ID    => V_JSON_ID
    );


    -- run final, to get all sub forms
    SFB_P0001_PKG.pr_create_json (
        pi_JSON_ID    => v_json_id_emp_form
    );
END;
