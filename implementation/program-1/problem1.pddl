(define (problem problem1) (:domain program1)
    (:objects
        assignmentA assignmentB assignmentC - assignment
        sumAB - operation
        varA varB varC - variable_name
        valueA valueB valueC - variable_value
    )

    (:init
        (variable_info varA valueA assignmentA)
        (variable_info varB valueB assignmentB)
    )

    (:goal (and
        (executed_assignment assignmentA)
        (executed_assignment assignmentB)
        (executed_binary_operation assignmentA assignmentB sumAB assignmentC)
        (executed_assignment assignmentC)
    ))
)