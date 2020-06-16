(define (problem problem2) (:domain program1)
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
        (executed_assignment assignmentA)
        (executed_binary_operation assignmentA assignmentA sumAA assignmentC)
        (executed_assignment assignmentC)
    ))
)