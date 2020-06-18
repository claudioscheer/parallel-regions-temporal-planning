(define (domain compiler)

    (:requirements :strips :typing :negative-preconditions :universal-preconditions :disjunctive-preconditions :durative-actions)

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

    (:durative-action assignment
        :parameters (
            ?var - variable_name
            ?value - variable_value
            ?id - assignment
            ?instruction_id - id
        )
        :duration (= ?duration 1)
        :condition (and
            (at start (assignment_id ?id ?instruction_id))
            (at start (not (executed_assignment ?var ?value ?id)))
            (at start (forall (?parent - id)
                (or
                    (not (dependency_tree ?parent ?instruction_id))
                    (executed_instruction ?parent)
                )
            ))
        )
        :effect (and
            (at end (variable_info ?var ?value ?id))
            (at end (executed_instruction ?instruction_id))
            (at end (executed_assignment ?var ?value ?id))
        )
    )

    (:durative-action binary_operation
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
        :duration (= ?duration 1)
        :condition (and
            (at start (operation_id ?operation_id ?instruction_id))
            (at start (forall (?parent - id)
                (or
                    (not (dependency_tree ?parent ?instruction_id))
                    (executed_instruction ?parent)
                )
            ))
            (at start (not (executed_operation ?operation_id)))
            (at start (variable_info ?varA ?valueA ?idA))
            (at start (variable_info ?varB ?valueB ?idB))
            (at start (not (executed_binary_operation ?idA ?idB ?operation_id ?idC)))
            (at start (executed_assignment ?varA ?valueA ?idA))
            (at start (executed_assignment ?varB ?valueB ?idB))
        )
        :effect (and
            (at end (executed_instruction ?instruction_id))
            (at end (executed_operation ?operation_id))
            (at end (executed_binary_operation ?idA ?idB ?operation_id ?idC))
        )
    )
)