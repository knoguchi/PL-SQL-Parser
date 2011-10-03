--create table nd_boolean_factor (
--  boolean_term    not null references nd_boolean_term,
--  not_    number(1)    check (not_   in (1)),
--  -----
--  true_   number(1)    check (true_  in (1)),
--  false_  number(1)    check (false_ in (1)),
--  null_   number(1)    check (null_  in (1)),
--  -----
--  plsql_identifier     references nd_plsql_identifier,
--  boolean_expression   references nd_boolean_expression,
--  relation             references nd_relation,
--  -----
--  check (
--         ( -- The factor is not a boolean literal (TRUE, FALSE or NULL):
--             (  true_ is     null and false_ is     null and null_ is     null ) 
--             and  -- In which case either plsql_identifier or boolean_expression or relation 
--                  -- must be set:
--             (  
--                ( plsql_identifier is not null and boolean_expression is     null and relation is     null) or
--                ( plsql_identifier is     null and boolean_expression is not null and relation is     null) or
--                ( plsql_identifier is     null and boolean_expression is     null and relation is not null)
--             )                                                                         
--         )
--         or  -- the factor is a boolean literal
--         (
--          (  true_ is not null and false_ is     null and null_ is     null ) or
--          (  true_ is     null and false_ is not null and null_ is     null ) or
--          (  true_ is     null and false_ is not null and null_ is not null )
--         ) and (
--           --       in which case neither plsql_identifier nor boolean_expression must
--           --       be set
--           plsql_identifier is null and boolean_expression is null and relation is null
--         )
--  )
--);
