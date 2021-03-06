create table nd_function_definition (
  id                          number(8)   not null primary key,
  function_heading                        not null references nd_function_heading,
  -- TODO_0087: following four fields also in nd_function_declaration
  deterministic_              number(1)       null check (deterministic_   in (1)),
  pipelined_                  number(1)       null check (pipelined_       in (1)),
  parallel_enable_            number(1)       null check (parallel_enable_ in (1)),
  result_cache_               number(1)       null check (result_cache_    in (1)),
  --
  relies_on_clause                            null references nd_relies_on_clause, -- TODO_0088
  declare_section                             null references nd_declare_section,
  body_                                   not null references nd_body
);
