(define (problem problem1_3) (:domain compiler)
    (:objects
        assignmentA assignmentA0 assignmentA1 assignmentA2 assignmentI assignmentI0 assignmentI1 - assignment
        multLoop0 multLoop1 multLoop2 - operation
        varI varA - variable_name
        valueI valueA - variable_value
    )

    (:init
        (variable_info varA valueA assignmentA)
        (variable_info varI valueI assignmentI)
    )

    (:goal (and
        (executed_assignment varA valueA assignmentA)
        (executed_assignment varI valueI assignmentI)
        (executed_binary_operation assignmentA assignmentI multLoop0 assignmentA0)
        (executed_assignment varA valueA assignmentA0)
        (executed_assignment varI valueI assignmentI0)
        (executed_binary_operation assignmentA0 assignmentI0 multLoop1 assignmentA1)
        (executed_assignment varA valueA assignmentA1)
        (executed_assignment varI valueI assignmentI1)
        (executed_binary_operation assignmentA1 assignmentI1 multLoop2 assignmentA2)
        (executed_assignment varA valueA assignmentA2)
    ))
)