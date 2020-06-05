(define (problem problem2) (:domain program1)
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
        (executed_assingment assignmentA)
        (executed_assingment assignmentB)
        (executed_binary_operation assignmentA assignmentA sumAB assignmentC)
        (executed_assingment assignmentC)
    ))
)