(define (domain compiler)

    (:requirements :strips :typing :negative-preconditions)

    (:types
        operation - object
        assignment - object
        variable_name - object
        variable_value - object
    )

    (:predicates
        (variable_info ?var - variable_name ?value - variable_value ?id - assignment)
        (executed_assignment ?var - variable_name ?value - variable_value ?id - assignment)
        (executed_operation ?id - operation)
        (executed_binary_operation ?a - assignment ?b - assignment ?id - operation ?c - assignment)
    )

    (:action assignment
        :parameters (
            ?var - variable_name
            ?value - variable_value
            ?id - assignment
        )
        :precondition (and
            (not (executed_assignment ?var ?value ?id))
        )
        :effect (and
            (variable_info ?var ?value ?id)
            (executed_assignment ?var ?value ?id)
        )
    )

    (:action binary_operation
        :parameters (
            ?varA - variable_name
            ?valueA - variable_value
            ?idA - assignment
            ?varB - variable_name
            ?valueB - variable_value
            ?idB - assignment
            ?idC - assignment
            ?operation_id - operation
        )
        :precondition (and
            (not (executed_operation ?operation_id))
            (variable_info ?varA ?valueA ?idA)
            (variable_info ?varB ?valueB ?idB)
            (not (executed_binary_operation ?idA ?idB ?operation_id ?idC))
            (executed_assignment ?varA ?valueA ?idA)
            (executed_assignment ?varB ?valueB ?idB)
        )
        :effect (and
            (executed_operation ?operation_id)
            (executed_binary_operation ?idA ?idB ?operation_id ?idC)
        )
    )
)