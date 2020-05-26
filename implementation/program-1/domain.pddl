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
        (executed_binary_operation ?id - operation)
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
            ?operation_id_A - assignment
            ?varB - variable_name
            ?valueB - variable_value
            ?operation_id_B - assignment
            ?varC - variable_name
            ?valueC - variable_value
            ?operation_id_C - assignment
            ?operation_id - operation
        )
        :precondition (and
            (not (= ?operation_id_A ?operation_id_B))
            ; This should be reviewed, because It disable to add the same variable, for example.
            (not (= ?varC ?varA))
            (not (= ?varC ?varB))
            (not (= ?valueC ?valueB))
            (not (= ?valueC ?valueA))
            (variable_info ?varA ?valueA ?operation_id_A)
            (variable_info ?varB ?valueB ?operation_id_B)
            (not (variable_info ?varC ?valueC ?operation_id_C))
            (not (executed_binary_operation ?operation_id))
            (executed_assingment ?operation_id_A)
            (executed_assingment ?operation_id_B)
        )
        :effect (and 
            (variable_info ?varC ?valueC ?operation_id_C)
            (executed_binary_operation ?operation_id)
        )
    )
)