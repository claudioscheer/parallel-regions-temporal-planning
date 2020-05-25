(define (domain compiler)

    (:requirements :strips :typing :negative-preconditions :equality)

    (:types
        operation - object
        variable_name - object
        variable_value - object
        id - object
    )

    (:predicates
        (variable_value ?variable - variable_name ?value - variable_value ?id - id)
        (operation_executed ?operation_id - operation ?id - id)
    )

    (:action assignment
        :parameters (?var - variable_name ?value - variable_value ?operation_id - operation ?id_variable_value - id ?id_assignment - id)
        :precondition (and
            (not (operation_executed ?operation_id ?id_assignment))
            (variable_value ?var ?value ?id_variable_value)
            (= ?id_variable_value ?id_assignment)
        )
        :effect (and (operation_executed ?operation_id ?id_assignment))
    )
)