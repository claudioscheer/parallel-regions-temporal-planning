(define (problem problem1) (:domain program2)
    (:objects
        assignmentA assignmentA0 assignmentI0 assignmentConst - assignment
        sumLoop0 - operation
        varConst varA varI - variable_name
        valueConst valueA valueI - variable_value
    )

    (:init
        (variable_info varConst valueConst assignmentConst)
        (variable_info varA valueA assignmentA)
        (variable_info varI valueI assignmentI0)
    )

    (:goal (and
        (executed_assingment assignmentConst)
        (executed_assingment assignmentA)
        (executed_assingment assignmentI0)
        (executed_binary_operation assignmentA assignmentConst sumLoop0 assignmentA0)
        ; (executed_assingment assignmentI1)
        ; (executed_binary_operation assignmentA0 assignmentI1 sumLoop1 assignmentA1)
        ; (executed_assingment assignmentI2)
        ; (executed_binary_operation assignmentA1 assignmentI1 sumLoop2 assignmentA2)
        ; (executed_assingment assignmentI3)
        ; (executed_assingment assignmentX)
    ))
)