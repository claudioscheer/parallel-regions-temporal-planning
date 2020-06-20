(define (domain compiler)

    (:requirements :strips :typing :negative-preconditions :universal-preconditions :disjunctive-preconditions :durative-actions)

    (:types
        id - object
        operation - object
        assignment - object
    )

    (:predicates
        (assignment_id ?assignment - assignment ?id - id)
        (operation_id ?operation - operation ?id - id)
        (dependency_tree ?parent - id ?child - id)
        (executed_instruction ?id - id)

        (executed_assignment ?id - assignment)
        (executed_operation ?id - operation)
        (executed_binary_operation ?a - assignment ?b - assignment ?id - operation ?c - assignment)
    )

    (:durative-action assignment
        :parameters (
            ?instruction_id - id
            ?id - assignment
        )
        :duration (= ?duration 1)
        :condition (and
            (at start (assignment_id ?id ?instruction_id))
            (at start (not (executed_assignment ?id)))
            (at start (forall (?parent - id)
                (or
                    (not (dependency_tree ?parent ?instruction_id))
                    (executed_instruction ?parent)
                )
            ))
        )
        :effect (and
            (at end (executed_instruction ?instruction_id))
            (at end (executed_assignment ?id))
        )
    )

    (:durative-action binary_operation
        :parameters (
            ?instruction_id - id
            ?idA - assignment
            ?idB - assignment
            ?operation_id - operation
            ?idC - assignment
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
            (at start (not (executed_binary_operation ?idA ?idB ?operation_id ?idC)))
            (at start (executed_assignment ?idA))
            (at start (executed_assignment ?idB))
        )
        :effect (and
            (at end (executed_instruction ?instruction_id))
            (at end (executed_operation ?operation_id))
            (at end (executed_binary_operation ?idA ?idB ?operation_id ?idC))
        )
    )
)