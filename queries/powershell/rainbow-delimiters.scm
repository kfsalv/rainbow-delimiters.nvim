;;;(_
;;;  "(" @delimiter
;;;  ")" @delimiter @sentinel) @container
;;;
;;;(_
;;;  "[" @delimiter
;;;  "]" @delimiter @sentinel) @container
;;;
;;;(_
;;;  "{" @delimiter
;;;  "}" @delimiter @sentinel) @container
;;;
;;;(_
;;;  (_
;;;    "[" @delimiter)
;;;  (_)*
;;;  "]" @delimiter @sentinel) @container


(parenthesized_expression
  "(" @delimiter
  ")" @delimiter @sentinel) @container

(function_statement
  (function_parameter_declaration
  	"(" @delimiter
  	")" @delimiter)?
  "{" @delimiter
  "}" @delimiter @sentinel) @container

(argument_list
  "(" @delimiter
  ")" @delimiter @sentinel) @container

(if_statement
  "(" @delimiter
  ")" @delimiter @sentinel) @container

(elseif_clause
  "(" @delimiter
  ")" @delimiter @sentinel) @container

(foreach_statement
  "(" @delimiter
  ")" @delimiter @sentinel) @container

(for_statement
  "(" @delimiter
  ")" @delimiter @sentinel) @container

(while_statement
  "(" @delimiter
  ")" @delimiter @sentinel) @container

(param_block
  "(" @delimiter
  ")" @delimiter @sentinel) @container

(do_statement
  "(" @delimiter
  ")" @delimiter @sentinel) @container

(script_block_expression
  "{" @delimiter
  "}" @delimiter @sentinel) @container

(statement_block
  "{" @delimiter
  "}" @delimiter @sentinel) @container

(switch_condition
  "(" @delimiter
  ")" @delimiter @sentinel) @container

(switch_body
  "{" @delimiter
  "}" @delimiter @sentinel) @container

(class_statement
  "{" @delimiter
  "}" @delimiter @sentinel) @container

(class_method_definition
  (
  	"(" @delimiter
  	")" @delimiter)
  "{" @delimiter
  "}" @delimiter @sentinel) @container

(enum_statement
  "{" @delimiter
  "}" @delimiter @sentinel) @container

(element_access
  "[" @delimiter
  "]" @delimiter @sentinel) @container


; inner () in new color as outer [] like VSCode
(attribute
  "[" @delimiter
  "]" @delimiter @sentinel) @container

(attribute
  "(" @delimiter
  ")" @delimiter @sentinel) @container


; inner () in same color as outer []
;(attribute
;  "[" @delimiter
;  (
;  	"(" @delimiter
;  	")" @delimiter)
;  "]" @delimiter @sentinel) @container


(type_literal
  "[" @delimiter
  "]" @delimiter @sentinel) @container

;(type_spec
;  (array_type_name
;    "[" @delimiter)*
;  (generic_type_name
;    "[" @delimiter)*
;  (generic_type_arguments)*
;  "]" @delimiter @sentinel) @container

; type_spec array
(type_spec
  (array_type_name
    "[" @delimiter)
  "]" @delimiter @sentinel) @container

; type_spec generics
(type_spec
  (generic_type_name
    "[" @delimiter)
  (generic_type_arguments)
  "]" @delimiter @sentinel) @container
