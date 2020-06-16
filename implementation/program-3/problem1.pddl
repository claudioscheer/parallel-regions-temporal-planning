(define (problem problem1) (:domain program3)
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
        (executed_assingment assignmentConst)
        (executed_assingment assignmentA)
        (executed_binary_operation assignmentA assignmentConst sumLoop0 assignmentA0)
        (executed_assingment assignmentA0)
        (executed_binary_operation assignmentA0 assignmentConst sumLoop1 assignmentA1)
        (executed_assingment assignmentA1)
        (executed_binary_operation assignmentA1 assignmentConst sumLoop2 assignmentA2)
        (executed_assingment assignmentA2)
    ))
)