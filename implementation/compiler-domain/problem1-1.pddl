(define (problem problem1_1) (:domain compiler)
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
        (executed_assignment varA valueA assignmentA)
        (executed_assignment varB valueB assignmentB)
        (executed_binary_operation assignmentA assignmentB sumAB assignmentC)
        (executed_assignment varC valueC assignmentC)
    ))
)