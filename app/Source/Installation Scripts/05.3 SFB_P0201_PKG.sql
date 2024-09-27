create or replace package SFB_P0201_PKG as


PROCEDURE GET_PROPERTIES(  
    pio_prop_id            IN OUT SFB_PROPERTIES.PROP_ID%TYPE  
  , po_prop_name           OUT SFB_PROPERTIES.PROP_NAME%TYPE 
  , po_prop_return_value   OUT SFB_PROPERTIES.PROP_RETURN_VALUE%TYPE 
  , po_prop_type           OUT SFB_PROPERTIES.PROP_TYPE%TYPE
  , po_prop_remark         OUT SFB_PROPERTIES.PROP_REMARK%TYPE
  , po_PROP_HELP_TEXT      OUT SFB_PROPERTIES.PROP_HELP_TEXT%TYPE
);


   PROCEDURE SET_PROPERTIES (  
      pio_prop_id          IN OUT SFB_PROPERTIES.prop_ID%TYPE      
    , pi_mode              IN varchar2 default null   
    , pi_prop_name         IN SFB_PROPERTIES.prop_NAME%TYPE default null  
    , pi_prop_return_value IN SFB_PROPERTIES.prop_RETURN_VALUE%TYPE default null  
    , pi_prop_type         IN SFB_PROPERTIES.prop_TYPE%TYPE default null  
    , pi_prop_remark       IN SFB_PROPERTIES.prop_REMARK%TYPE default null 
    , pi_prop_deleted_yn   IN SFB_PROPERTIES.prop_DELETED_YN%TYPE default null
    , pi_PROP_HELP_TEXT    IN SFB_PROPERTIES.PROP_HELP_TEXT%TYPE default null
    );

end SFB_P0201_PKG;
/


create or replace package body SFB_P0201_PKG as

PROCEDURE GET_PROPERTIES(  
    pio_prop_id             IN OUT SFB_PROPERTIES.PROP_ID%TYPE  
  , po_prop_name            OUT SFB_PROPERTIES.PROP_NAME%TYPE 
  , po_prop_return_value    OUT SFB_PROPERTIES.PROP_RETURN_VALUE%TYPE 
  , po_prop_type            OUT SFB_PROPERTIES.PROP_TYPE%TYPE
  , po_prop_remark          OUT SFB_PROPERTIES.PROP_REMARK%TYPE
  , po_PROP_HELP_TEXT      OUT SFB_PROPERTIES.PROP_HELP_TEXT%TYPE
)
IS 

    V_PORP_ID                   SFB_PROPERTIES.PROP_ID%TYPE   := pio_prop_id; 
    V_PORP_RESULT               SFB_PROPERTIES%ROWTYPE; 


BEGIN


    -- read row 
    V_PORP_RESULT := SFB_PROPERTIES_PKG.read_row( 
                        p_prop_id   => V_PORP_ID 
                     ); 

   -- Update Single row 
     po_prop_name          := V_PORP_RESULT.prop_name;
     po_prop_return_value  := V_PORP_RESULT.prop_return_value;                                        
     po_prop_type          := V_PORP_RESULT.prop_type;                                
     po_prop_remark        := V_PORP_RESULT.prop_remark;    
     po_PROP_HELP_TEXT     := V_PORP_RESULT.PROP_HELP_TEXT;    


NULL;
END GET_PROPERTIES;





  PROCEDURE SET_PROPERTIES (  
      pio_prop_id          IN OUT SFB_PROPERTIES.prop_ID%TYPE      
    , pi_mode              IN varchar2 default null   
    , pi_prop_name         IN SFB_PROPERTIES.prop_NAME%TYPE default null  
    , pi_prop_return_value IN SFB_PROPERTIES.prop_RETURN_VALUE%TYPE default null  
    , pi_prop_type         IN SFB_PROPERTIES.prop_TYPE%TYPE default null  
    , pi_prop_remark       IN SFB_PROPERTIES.prop_REMARK%TYPE default null  
    , pi_prop_deleted_yn   IN SFB_PROPERTIES.prop_DELETED_YN%TYPE default null
    , pi_PROP_HELP_TEXT    IN SFB_PROPERTIES.PROP_HELP_TEXT%TYPE default null
    )
    IS

    V_prop_ID               SFB_PROPERTIES.prop_ID%TYPE   := pio_prop_id; 
    V_prop_RESULT           SFB_PROPERTIES%ROWTYPE; 

    BEGIN
        IF pi_mode = 'NEW' THEN

            V_prop_ID := SFB_PROPERTIES_PKG.CREATE_ROW(
                  p_prop_name           => pi_prop_name                                     
                , p_prop_return_value   => pi_prop_return_value                                             
                , p_prop_type           => pi_prop_type                                     
                , p_prop_remark         => pi_prop_remark                                                                                 
                , p_PROP_HELP_TEXT      => pi_PROP_HELP_TEXT                                                                                   
            );

            pio_prop_id := V_prop_ID;

            update SFB_PROPERTIES 
               set PROP_HELP_TEXT = pi_PROP_HELP_TEXT
             where prop_id = V_prop_ID
            ;

        ELSIF  pi_mode = 'EDIT' THEN
        
            -- read row 
            V_prop_RESULT := SFB_PROPERTIES_PKG.read_row( 
                                p_prop_id   => V_prop_ID 
                             ); 

            -- Update Single row 
            V_prop_RESULT.prop_name             := pi_prop_name;                                                  
            V_prop_RESULT.prop_return_value     := pi_prop_return_value;                                                                                          
            V_prop_RESULT.prop_type             := pi_prop_type;                                                                                  
            V_prop_RESULT.prop_remark           := pi_prop_remark;       
            V_prop_RESULT.PROP_HELP_TEXT        := pi_PROP_HELP_TEXT;       

            -- update row 
                SFB_PROPERTIES_PKG.update_row( 
                    p_row => V_prop_RESULT 
                ); 

            pio_prop_id := V_prop_ID;

            update SFB_PROPERTIES 
               set PROP_HELP_TEXT = pi_PROP_HELP_TEXT
             where prop_id = V_prop_ID
            ;


        ELSIF  pi_mode = 'DELETE' THEN
        
            -- read row 
            V_prop_RESULT := SFB_PROPERTIES_PKG.read_row( 
                                p_prop_id   => V_prop_ID 
                             ); 

            -- Update Single row 
            V_prop_RESULT.prop_deleted_yn       := 'YES';                                                                                     
            V_prop_RESULT.prop_remark           := pi_prop_remark || ' . ' ||'propibute is Deleted.';  


            -- update row 
                SFB_PROPERTIES_PKG.update_row( 
                    p_row => V_prop_RESULT 
                ); 

            pio_prop_id := V_prop_ID;

        END IF;

        
            pio_prop_id := V_prop_ID;



    NULL;
    END SET_PROPERTIES;
    

end SFB_P0201_PKG;
/