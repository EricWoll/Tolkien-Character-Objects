-- base_t Object

DROP TYPE base_t;

CREATE OR REPLACE
    TYPE base_t IS OBJECT
        ( oid        NUMBER
        , oname     VARCHAR2(30)
        , CONSTRUCTOR FUNCTION base_t
            ( oid        NUMBER
            , oname     VARCHAR2 )
            RETURN SELF AS RESULT
        , MEMBER FUNCTION get_oname RETURN VARCHAR2
        , MEMBER FUNCTION get_name RETURN VARCHAR2
        , MEMBER FUNCTION to_string RETURN VARCHAR2
        , MEMBER PROCEDURE set_oname (oname VARCHAR2) )
    INSTANTIABLE NOT FINAL;
/

CREATE OR REPLACE
    TYPE BODY base_t IS
        
        CONSTRUCTOR FUNCTION base_t
            ( oid        NUMBER
            , oname     VARCHAR2 )
        RETURN SELF AS RESULT IS
        BEGIN
            self.oid := oid;
            self.oname := oname;
            RETURN;
        END base_t;
        
        MEMBER FUNCTION get_oname RETURN VARCHAR2 IS
        BEGIN
            RETURN self.oname;
        END get_oname;
        
        MEMBER FUNCTION get_name RETURN VARCHAR2 IS
        BEGIN
            RETURN 'Default Name';
        END get_name;
        
        MEMBER FUNCTION to_string RETURN VARCHAR2 IS
        BEGIN
            RETURN '['||self.oid||','||self.oname||']';
        END to_string;
        
        MEMBER PROCEDURE set_oname (oname VARCHAR2) IS
        BEGIN
            self.oname := oname;
        END set_oname;
    
    END;
        