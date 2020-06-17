(define (problem problem2_1) (:domain compiler)
    (:objects
        assignmentA assignmentC - assignment
        sumAA - operation
        varA varC - variable_name
        valueA valueC - variable_value
    )

    (:init
        (variable_info varA valueA assignmentA)
    )

    (:goal (and
        (executed_assignment varA valueA assignmentA)
        (executed_binary_operation assignmentA assignmentA sumAA assignmentC)
        (executed_assignment varC valueC assignmentC)
    ))
)