(define (problem program1) (:domain compiler)
    (:objects
        sumAB assignmentA assignmentB assignmentC - operation
        varA varB varC - variable_name
        valueA valueB valueC - variable_value
        id1 id2 id3 - id
    )

    (:init
        (variable_value varA valueA id1)
        (variable_value varB valueB id2)
        (variable_value varC valueC id3)
    )

    (:goal (and
        (operation_executed assignmentA id1)
        (operation_executed assignmentB id2)
        (operation_executed assignmentC id3)
    ))
)
