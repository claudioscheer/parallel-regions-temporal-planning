(define (domain program1)

    (:requirements :strips :typing :negative-preconditions :equality)

    (:types
        operation - object
        assignment - object
        variable_name - object
        variable_value - object
    )

    (:predicates
        (variable_info ?variable - variable_name ?value - variable_value ?assignment_operation - assignment)
        (executed_assingment ?id - assignment)
        (executed_binary_operation ?a - assignment ?b - assignment ?id - operation ?c - assignment)
    )

    (:action assignment
        :parameters (
            ?var - variable_name
            ?value - variable_value
            ?operation_id - assignment
        )
        :precondition (and
            (not (executed_assingment ?operation_id))
            (variable_info ?var ?value ?operation_id)
        )
        :effect (and
            (executed_assingment ?operation_id)
        )
    )

    (:action binary_operation
        :parameters (
            ?varA - variable_name
            ?valueA - variable_value
            ?opA - assignment
            ?varB - variable_name
            ?valueB - variable_value
            ?opB - assignment
            ?varC - variable_name
            ?valueC - variable_value
            ?opC - assignment
            ?operation_id - operation
        )
        :precondition (and
            (variable_info ?varA ?valueA ?opA)
            (variable_info ?varB ?valueB ?opB)
            (not (executed_binary_operation ?opA ?opB ?operation_id ?opC))
            (executed_assingment ?opA)
            (executed_assingment ?opB)
        )
        :effect (and 
            (variable_info ?varC ?valueC ?opC)
            (executed_binary_operation ?opA ?opB ?operation_id ?opC)
        )
    )
)