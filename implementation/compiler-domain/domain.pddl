(define (domain compiler)

    (:requirements :strips :typing :negative-preconditions :universal-preconditions :disjunctive-preconditions)

    (:types
        id - object
        operation - object
        assignment - object
        variable_name - object
        variable_value - object
    )

    (:predicates
        (assignment_id ?assignment - assignment ?id - id)
        (operation_id ?operation - operation ?id - id)
        (dependency_tree ?parent - id ?child - id)
        (executed_instruction ?id - id)

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
            ?instruction_id - id
        )
        :precondition (and
            (assignment_id ?id ?instruction_id)
            (not (executed_assignment ?var ?value ?id))
            (forall (?parent - id)
                (or
                    (not (dependency_tree ?parent ?instruction_id))
                    (executed_instruction ?parent)
                )
            )
        )
        :effect (and
            (variable_info ?var ?value ?id)
            (executed_instruction ?instruction_id)
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
            ?instruction_id - id
        )
        :precondition (and
            (operation_id ?operation_id ?instruction_id)
            (forall (?parent - id)
                (or
                    (not (dependency_tree ?parent ?instruction_id))
                    (executed_instruction ?parent)
                )
            )
            (not (executed_operation ?operation_id))
            (variable_info ?varA ?valueA ?idA)
            (variable_info ?varB ?valueB ?idB)
            (not (executed_binary_operation ?idA ?idB ?operation_id ?idC))
            (executed_assignment ?varA ?valueA ?idA)
            (executed_assignment ?varB ?valueB ?idB)
        )
        :effect (and
            (executed_instruction ?instruction_id)
            (executed_operation ?operation_id)
            (executed_binary_operation ?idA ?idB ?operation_id ?idC)
        )
    )
)