-- noldor_t Sub-Object

--DROP TYPE noldor_t;

CREATE OR REPLACE
    TYPE noldor_t UNDER STUDENT.ELF_T
        ( elfkind   VARCHAR2(30)
        , CONSTRUCTOR FUNCTION noldor_t
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
    TYPE BODY noldor_t IS
    
        CONSTRUCTOR FUNCTION noldor_t
                ( oid        NUMBER
                , oname     VARCHAR2
                , name      VARCHAR2
                , genus     VARCHAR2
                , elfkind   VARCHAR2 )
                RETURN SELF AS RESULT IS
        BEGIN
            self.oid := oid;
            self.oname := oname;
            self.name := name;
            self.genus := genus;
            self.elfkind := elfkind;
            RETURN;
        END noldor_t;
        
        OVERRIDING MEMBER FUNCTION to_string RETURN VARCHAR2 IS
        BEGIN
            RETURN (self AS elf_t).to_string||'['||self.elfkind||']';
        END to_string;
        
        MEMBER FUNCTION get_elfkind RETURN VARCHAR2 IS
        BEGIN
            RETURN self.elfkind;
        END get_elfkind;
        
        MEMBER PROCEDURE set_elfkind (elfkind VARCHAR2) Is
        BEGIN
            self.elfkind := elfkind;
        END set_elfkind;
END;
/