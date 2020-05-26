(define (problem problem1) (:domain program1)
    (:objects
        sumAB assignmentA assignmentB assignmentC - operation
        varA varB varC - variable_name
        valueA valueB valueC - variable_value
    )

    (:init
        (variable_value varA valueA)
        (variable_value varB valueB)
    )

    (:goal (and
        (operation_executed assignmentA)
        (operation_executed assignmentB)
        (operation_executed assignmentC)
    ))
)