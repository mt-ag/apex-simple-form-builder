create or replace package SFB_P0101_PKG as

PROCEDURE GET_ATTRIBUTES (  
    pio_attr_id             IN OUT  SFB_ATTRIBUTES.ATTR_ID%TYPE  
  , po_attr_name            OUT     SFB_ATTRIBUTES.ATTR_NAME%TYPE 
  , po_attr_return_value    OUT     SFB_ATTRIBUTES.ATTR_RETURN_VALUE%TYPE 
  , po_attr_type            OUT     SFB_ATTRIBUTES.ATTR_TYPE%TYPE 
  , po_attr_remark          OUT     SFB_ATTRIBUTES.ATTR_REMARK%TYPE 
  --, po_attr_created         OUT ATTRIBUTES.ATTR_CREATED%TYPE 
  --, po_attr_created_by      OUT ATTRIBUTES.ATTR_CREATED_BY%TYPE 
  --, po_attr_updated         OUT ATTRIBUTES.ATTR_UPDATED%TYPE 
  --, po_attr_updated_by      OUT ATTRIBUTES.ATTR_UPDATED_BY%TYPE 
  --, po_attr_valid_from      OUT ATTRIBUTES.ATTR_VALID_FROM%TYPE 
  --, po_attr_valid_to        OUT ATTRIBUTES.ATTR_VALID_TO%TYPE 
  --, po_attr_deleted_yn      OUT ATTRIBUTES.ATTR_DELETED_YN%TYPE
   ); 


   PROCEDURE SET_ATTRIBUTES (  
      pio_attr_id          IN OUT SFB_ATTRIBUTES.ATTR_ID%TYPE      
    , pi_mode              IN varchar2 default null   
    , pi_attr_name         IN SFB_ATTRIBUTES.ATTR_NAME%TYPE default null  
    , pi_attr_return_value IN SFB_ATTRIBUTES.ATTR_RETURN_VALUE%TYPE default null  
    , pi_attr_type         IN SFB_ATTRIBUTES.ATTR_TYPE%TYPE default null  
    , pi_attr_remark       IN SFB_ATTRIBUTES.ATTR_REMARK%TYPE default null 
    --, pi_attr_created      IN ATTRIBUTES.ATTR_CREATED%TYPE default null 
    --, pi_attr_created_by   IN ATTRIBUTES.ATTR_CREATED_BY%TYPE default null 
    --, pi_attr_updated      IN ATTRIBUTES.ATTR_UPDATED%TYPE default null 
    --, pi_attr_updated_by   IN ATTRIBUTES.ATTR_UPDATED_BY%TYPE default null 
    --, pi_attr_valid_from   IN ATTRIBUTES.ATTR_VALID_FROM%TYPE default null 
    --, pi_attr_valid_to     IN ATTRIBUTES.ATTR_VALID_TO%TYPE default null 
    , pi_attr_deleted_yn   IN SFB_ATTRIBUTES.ATTR_DELETED_YN%TYPE default null
    );



end SFB_P0101_PKG;
/
create or replace package body SFB_P0101_PKG as

PROCEDURE GET_ATTRIBUTES (  
    pio_attr_id             IN OUT  SFB_ATTRIBUTES.ATTR_ID%TYPE  
  , po_attr_name            OUT SFB_ATTRIBUTES.ATTR_NAME%TYPE 
  , po_attr_return_value    OUT SFB_ATTRIBUTES.ATTR_RETURN_VALUE%TYPE 
  , po_attr_type            OUT SFB_ATTRIBUTES.ATTR_TYPE%TYPE 
  , po_attr_remark          OUT SFB_ATTRIBUTES.ATTR_REMARK%TYPE 
  --, po_attr_created         OUT ATTRIBUTES.ATTR_CREATED%TYPE 
  --, po_attr_created_by      OUT ATTRIBUTES.ATTR_CREATED_BY%TYPE 
  --, po_attr_updated         OUT ATTRIBUTES.ATTR_UPDATED%TYPE 
  --, po_attr_updated_by      OUT ATTRIBUTES.ATTR_UPDATED_BY%TYPE 
  --, po_attr_valid_from      OUT ATTRIBUTES.ATTR_VALID_FROM%TYPE 
  --, po_attr_valid_to        OUT ATTRIBUTES.ATTR_VALID_TO%TYPE 
  --, po_attr_deleted_yn      OUT ATTRIBUTES.ATTR_DELETED_YN%TYPE
   )
   IS

    V_ATTR_ID                   SFB_ATTRIBUTES.ATTR_ID%TYPE   := pio_attr_id; 
    V_ATTR_RESULT               SFB_ATTRIBUTES%ROWTYPE; 

   BEGIN
 
    -- read row 
    V_ATTR_RESULT := SFB_ATTRIBUTES_PKG.read_row( 
                        p_attr_id   => V_ATTR_ID 
                     ); 

   -- Update Single row 
     po_attr_name          := V_ATTR_RESULT.attr_name;
     po_attr_return_value  := V_ATTR_RESULT.attr_return_value;                                        
     po_attr_type          := V_ATTR_RESULT.attr_type;                                
     po_attr_remark        := V_ATTR_RESULT.attr_remark;                                    
     --po_attr_created       := V_ATTR_RESULT.attr_created;                                    
     --po_attr_created_by    := V_ATTR_RESULT.attr_created_by;                                        
     --po_attr_updated       := V_ATTR_RESULT.attr_updated;                                    
     --po_attr_updated_by    := V_ATTR_RESULT.attr_updated_by;                                        
     --po_attr_valid_from    := V_ATTR_RESULT.attr_valid_from;                                        
     --po_attr_valid_to      := V_ATTR_RESULT.attr_valid_to;                                    
     --po_attr_deleted_yn    := V_ATTR_RESULT.attr_deleted_yn;                                        

   END GET_ATTRIBUTES;


  PROCEDURE SET_ATTRIBUTES (  
      pio_attr_id          IN OUT SFB_ATTRIBUTES.ATTR_ID%TYPE      
    , pi_mode              IN varchar2 default null   
    , pi_attr_name         IN SFB_ATTRIBUTES.ATTR_NAME%TYPE default null  
    , pi_attr_return_value IN SFB_ATTRIBUTES.ATTR_RETURN_VALUE%TYPE default null  
    , pi_attr_type         IN SFB_ATTRIBUTES.ATTR_TYPE%TYPE default null  
    , pi_attr_remark       IN SFB_ATTRIBUTES.ATTR_REMARK%TYPE default null  
    --, pi_attr_created      IN ATTRIBUTES.ATTR_CREATED%TYPE default null 
    --, pi_attr_created_by   IN ATTRIBUTES.ATTR_CREATED_BY%TYPE default null 
    --, pi_attr_updated      IN ATTRIBUTES.ATTR_UPDATED%TYPE default null 
    --, pi_attr_updated_by   IN ATTRIBUTES.ATTR_UPDATED_BY%TYPE default null 
    --, pi_attr_valid_from   IN ATTRIBUTES.ATTR_VALID_FROM%TYPE default null 
    --, pi_attr_valid_to     IN ATTRIBUTES.ATTR_VALID_TO%TYPE default null 
    , pi_attr_deleted_yn   IN SFB_ATTRIBUTES.ATTR_DELETED_YN%TYPE default null
    )
    IS

    V_ATTR_ID               SFB_ATTRIBUTES.ATTR_ID%TYPE   := pio_attr_id; 
    V_ATTR_RESULT           SFB_ATTRIBUTES%ROWTYPE; 

    BEGIN

        IF pi_mode = 'NEW' THEN

            V_ATTR_ID := SFB_ATTRIBUTES_PKG.CREATE_ROW(
                  p_attr_name           => pi_attr_name                                     
                , p_attr_return_value   => pi_attr_return_value                                             
                , p_attr_type           => pi_attr_type                                     
                , p_attr_remark         => pi_attr_remark                                                                                 
            );

            pio_attr_id := V_ATTR_ID;

        ELSIF  pi_mode = 'EDIT' THEN
        
            -- read row 
            V_ATTR_RESULT := SFB_ATTRIBUTES_PKG.read_row( 
                                p_attr_id   => V_ATTR_ID 
                             ); 

            -- Update Single row 
            V_ATTR_RESULT.attr_name             := pi_attr_name;                                                  
            V_ATTR_RESULT.attr_return_value     := pi_attr_return_value;                                                                                          
            V_ATTR_RESULT.attr_type             := pi_attr_type;                                                                                  
            V_ATTR_RESULT.attr_remark           := pi_attr_remark;      

            -- update row 
                SFB_ATTRIBUTES_PKG.update_row( 
                    p_row => V_ATTR_RESULT 
                ); 

            pio_attr_id := V_ATTR_ID;


        ELSIF  pi_mode = 'DELETE' THEN
        
            -- read row 
            V_ATTR_RESULT := SFB_ATTRIBUTES_PKG.read_row( 
                                p_attr_id   => V_ATTR_ID 
                             ); 

            -- Update Single row 
            V_ATTR_RESULT.attr_deleted_yn       := 'YES';                                                                                     
            V_ATTR_RESULT.attr_remark           := pi_attr_remark || ' . ' ||'Attribute is Deleted.';  


            -- update row 
                SFB_ATTRIBUTES_PKG.update_row( 
                    p_row => V_ATTR_RESULT 
                ); 

            pio_attr_id := V_ATTR_ID;

        END IF;

        
            pio_attr_id := V_ATTR_ID;



    NULL;
    END SET_ATTRIBUTES;





   
end SFB_P0101_PKG;
/