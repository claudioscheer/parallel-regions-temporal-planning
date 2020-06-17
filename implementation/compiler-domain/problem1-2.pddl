(define (problem problem1_2) (:domain compiler)
    (:objects
        assignmentConst assignmentA assignmentA0 assignmentA1 assignmentA2 - assignment
        sumLoop0 sumLoop1 sumLoop2 - operation
        varConst varA - variable_name
        valueConst valueA - variable_value
    )

    (:init
        (variable_info varConst valueConst assignmentConst)
        (variable_info varA valueA assignmentA)
    )

    (:goal (and
        (executed_assignment varConst valueConst assignmentConst)
        (executed_assignment varA valueA assignmentA)
        (executed_binary_operation assignmentA assignmentConst sumLoop0 assignmentA0)
        (executed_assignment varA valueA assignmentA0)
        (executed_binary_operation assignmentA0 assignmentConst sumLoop1 assignmentA1)
        (executed_assignment varA valueA assignmentA1)
        (executed_binary_operation assignmentA1 assignmentConst sumLoop2 assignmentA2)
        (executed_assignment varA valueA assignmentA2)
    ))
)