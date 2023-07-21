-- silvan_t Sub-Object

--DROP TYPE silvan_t;

CREATE OR REPLACE
    TYPE silvan_t UNDER STUDENT.ELF_T
        ( elfkind   VARCHAR(30)
        , CONSTRUCTOR FUNCTION silvan_t
            ( oid        NUMBER
            , oname     VARCHAR2
            , name      VARCHAR2
            , genus     VARCHAR2
            , elfkind   VARCHAR2 )
            RETURN SELF AS RESULT
        , OVERRIDING MEMBER FUNCTION to_string RETURN VARCHAR2
        , MEMBER FUNCTION get_elfkind RETURN VARCHAR2
        , MEMBER PROCEDURE set_elfkind (elfkind VARCHAR2) )
        INSTANTIABLE FINAL;
/

CREATE OR REPLACE
    TYPE BODY silvan_t IS
    
        CONSTRUCTOR FUNCTION silvan_t
                ( oid        NUMBER
                , oname     VARCHAR2
                , name      VARCHAR2
                , genus     VARCHAR2
                , elf_kind  VARCHAR2 )
                RETURN SELF AS RESULT IS
        BEGIN
            self.oid := oid;
            self.oname := oname;
            self.name := name;
            self.genus := genus;
            self.elfkind := elfkind;
            RETURN;
        END silvan_t;
        
        OVERRIDING MEMBER FUNCTION to_string RETURN VARCHAR2 IS
        BEGIN
            RETURN (self AS elf_t).to_string||'['||self.elfkind||']';
        END to_string;
        
        MEMBER FUNCTION get_elfkind RETURN VARCHAR2 IS
        BEGIN
            RETURN self.elfkind;
        END get_elfkind;
        
        MEMBER PROCEDURE set_elfkind (name VARCHAR2) IS
        BEGIN
            self.elfkind := elfkind;
        END set_elfkind;
        
END;
/