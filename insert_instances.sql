INSERT INTO tolkien
VALUES
    (
      (STUDENT.MAN_T(1, 'Man', 'Boromir', 'Men'))
    , (STUDENT.MAN_T(2, 'Man', 'Faramir', 'Men'))
    , (STUDENT.HOBBIT_T(3, 'Hobbit', 'Bilbo', 'Hobbits'))
    , (STUDENT.HOBBIT_T(4, 'Hobbit', 'Frodo', 'Hobbits'))
    , (STUDENT.HOBBIT_T(5, 'Hobbit', 'Merry', 'Hobbits'))
    , (STUDENT.HOBBIT_T(6, 'Hobbit', 'Pippin', 'Hobbits'))
    , (STUDENT.HOBBIT_T(7, 'Hobbit', 'Samwise', 'Hobbits'))
    , (STUDENT.DWARF_T(8, 'Dwarf', 'Gimli', 'Dwarves'))
    , (STUDENT.NOLDOR_T(9, 'Elf', 'Feanor', 'Elves', 'Noldor'))
    , (STUDENT.NOLDOR_T(10, 'Elf', 'Tauriel', 'Elves', 'Silvan'))
    , (STUDENT.NOLDOR_T(11, 'Elf', 'Earwen', 'Elves', 'Teleri'))
    , (STUDENT.NOLDOR_T(12, 'Elf', 'Celeborn', 'Elves', 'Teleri'))
    , (STUDENT.NOLDOR_T(13, 'Elf', 'Thranduil', 'Elves', 'Sindar'))
    , (STUDENT.NOLDOR_T(14, 'Elf', 'Legolas', 'Elves', 'Sindar'))
    , (STUDENT.ORC_T(15, 'Orc', 'Azog the Defiler', 'Orcs'))
    , (STUDENT.ORC_T(16, 'Orc', 'Bolg', 'Orcs'))
    , (STUDENT.MAIA_T(17, 'Maia', 'Gandalf the Grey', 'Maiar'))
    , (STUDENT.MAIA_T(18, 'Maia', 'Radagast the Brown', 'Maiar'))
    , (STUDENT.MAIA_T(19, 'Maia', 'Saruman the White', 'Maiar'))
    , (STUDENT.GOBLIN_T(20, 'Goblin', 'The Great Goblin', 'Goblins'))
    , (STUDENT.MAN_T(21, 'Man', 'Aragorn', 'Men'))
    );

-- Don't know which one works.....

INSERT ALL
    INTO tolkien(tolkien_character) VALUES ( STUDENT.MAN_T(1, 'Man', 'Boromir', 'Men'))
    INTO tolkien(tolkien_character) VALUES ( STUDENT.MAN_T(2, 'Man', 'Faramir', 'Men'))
    INTO tolkien(tolkien_character) VALUES ( STUDENT.HOBBIT_T(3, 'Hobbit', 'Bilbo', 'Hobbits'))
    INTO tolkien(tolkien_character) VALUES ( STUDENT.HOBBIT_T(4, 'Hobbit', 'Frodo', 'Hobbits'))
    INTO tolkien(tolkien_character) VALUES ( STUDENT.HOBBIT_T(5, 'Hobbit', 'Merry', 'Hobbits'))
    INTO tolkien(tolkien_character) VALUES ( STUDENT.HOBBIT_T(6, 'Hobbit', 'Pippin', 'Hobbits'))
    INTO tolkien(tolkien_character) VALUES ( STUDENT.HOBBIT_T(7, 'Hobbit', 'Samwise', 'Hobbits'))
    INTO tolkien(tolkien_character) VALUES ( STUDENT.DWARF_T(8, 'Dwarf', 'Gimli', 'Dwarves'))
    INTO tolkien(tolkien_character) VALUES ( STUDENT.NOLDOR_T(9, 'Elf', 'Feanor', 'Elves', 'Noldor'))
    INTO tolkien(tolkien_character) VALUES ( STUDENT.NOLDOR_T(10, 'Elf', 'Tauriel', 'Elves', 'Silvan'))
    INTO tolkien(tolkien_character) VALUES ( STUDENT.NOLDOR_T(11, 'Elf', 'Earwen', 'Elves', 'Teleri'))
    INTO tolkien(tolkien_character) VALUES ( STUDENT.NOLDOR_T(12, 'Elf', 'Celeborn', 'Elves', 'Teleri'))
    INTO tolkien(tolkien_character) VALUES ( STUDENT.NOLDOR_T(13, 'Elf', 'Thranduil', 'Elves', 'Sindar'))
    INTO tolkien(tolkien_character) VALUES ( STUDENT.NOLDOR_T(14, 'Elf', 'Legolas', 'Elves', 'Sindar'))
    INTO tolkien(tolkien_character) VALUES ( STUDENT.ORC_T(15, 'Orc', 'Azog the Defiler', 'Orcs'))
    INTO tolkien(tolkien_character) VALUES ( STUDENT.ORC_T(16, 'Orc', 'Bolg', 'Orcs'))
    INTO tolkien(tolkien_character) VALUES ( STUDENT.MAIA_T(17, 'Maia', 'Gandalf the Grey', 'Maiar'))
    INTO tolkien(tolkien_character) VALUES ( STUDENT.MAIA_T(18, 'Maia', 'Radagast the Brown', 'Maiar'))
    INTO tolkien(tolkien_character) VALUES ( STUDENT.MAIA_T(19, 'Maia', 'Saruman the White', 'Maiar'))
    INTO tolkien(tolkien_character) VALUES ( STUDENT.GOBLIN_T(20, 'Goblin', 'The Great Goblin', 'Goblins'))
    INTO tolkien(tolkien_character) VALUES ( STUDENT.MAN_T(21, 'Man', 'Aragorn', 'Men'))

SELECT 1 FROM DUAL;