--create table nd_type_attribute (
--  id            number(8)        not null primary key,
--  identifier_1  varchar2(30)     not null,              
--  --  identifier_1 might be:
--  --     o collection variable
--  --     o cursor variable
--  --     o db table or view
--  --     o object
--  --     o record variable
--  --     o scalar variable
--  -- 
--  identifier_2  varchar2(30)         null
--  --  identifier_2 is only used if identifier_1 is either a db table/view or a record
--  --  variable.
--  --  If identifier_1 is a db table/view, identifier_2 is the name of a column within
--  --  this table.
--  --  If identifier_1 is a record variable, identifier_2 is 'field'.
--);
