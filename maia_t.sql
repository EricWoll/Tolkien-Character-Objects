-- maia_t Sub-Object

--DROP TYPE maia_t;

CREATE OR REPLACE
    TYPE maia_t UNDER STUDENT.BASE_T
        ( name      VARCHAR2(30)
        , genus     VARCHAR2(30)
        , CONSTRUCTOR FUNCTION maia_t
            ( oid        NUMBER
            , oname     VARCHAR2
            , name      VARCHAR2
            , genus     VARCHAR2 )
            RETURN SELF AS RESULT
        , OVERRIDING MEMBER FUNCTION get_name RETURN VARCHAR2
        , OVERRIDING MEMBER FUNCTION to_string RETURN VARCHAR2
        , MEMBER FUNCTION get_genus RETURN VARCHAR2
        , MEMBER PROCEDURE set_name (name VARCHAR2)
        , MEMBER PROCEDURE set_genus (genus VARCHAR2) )
        INSTANTIABLE FINAL;
/

CREATE OR REPLACE
    TYPE BODY maia_t IS
    
        CONSTRUCTOR FUNCTION maia_t
                ( oid        NUMBER
                , oname     VARCHAR2
                , name      VARCHAR2
                , genus     VARCHAR2 )
                RETURN SELF AS RESULT IS
        BEGIN
            self.oid := oid;
            self.oname := oname;
            self.name := name;
            self.genus := genus;
            RETURN;
        END maia_t;
        
        OVERRIDING MEMBER FUNCTION get_name RETURN VARCHAR2 IS
        BEGIN
            RETURN self.name;
        END get_name;
        
        OVERRIDING MEMBER FUNCTION to_string RETURN VARCHAR2 IS
        BEGIN
            RETURN (self AS base_t).to_string||'['||self.name||','||self.genus||']';
        END to_string;
        
        MEMBER FUNCTION get_genus RETURN VARCHAR2 IS
        BEGIN
            RETURN self.genus;
        END get_genus;
        
        MEMBER PROCEDURE set_name (name VARCHAR2) IS
        BEGIN
            self.name := name;
        END set_name;
        
        MEMBER PROCEDURE set_genus (genus VARCHAR2) Is
        BEGIN
            self.genus := genus;
        END set_genus;
END;
/