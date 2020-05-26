(define (domain program1)

    (:requirements :strips :typing :negative-preconditions :equality)

    (:types
        operation - object
        variable_name - object
        variable_value - object
    )

    (:predicates
        (variable_value ?variable - variable_name ?value - variable_value)
        (operation_executed ?operation_id - operation)
    )

    (:action assignment
        :parameters (
            ?var - variable_name
            ?value - variable_value
            ?operation_id - operation
        )
        :precondition (and
            (not (operation_executed ?operation_id))
            (variable_value ?var ?value)
        )
        :effect (and
            (operation_executed ?operation_id)
        )
    )

    ; (:action binary_operator
    ;     :parameters (
    ;         ?varA - variable_name
    ;         ?valueA - variable_value
    ;         ?varB - variable_name
    ;         ?valueB - variable_value
    ;         ?varC - variable_name
    ;         ?valueC - variable_value
    ;     )
    ;     :precondition (and 
    ;         (variable_value ?var ?value)
    ;         (variable_value ?var ?value)

    ;     )
    ;     :effect (and )
    ; )
)