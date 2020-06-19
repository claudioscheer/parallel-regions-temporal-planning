(define (problem problem1_1) (:domain compiler)
    (:objects
        id0 id1 id2 id3 id4 - id
        assignmentA assignmentB assignmentC - assignment
        sumAB - operation
        varA varB varC - variable_name
        valueA valueB valueC - variable_value
    )

    (:init
        (executed_instruction id0)
        (variable_info varA valueA assignmentA)
        (variable_info varB valueB assignmentB)

        (assignment_id assignmentA id1)
        (assignment_id assignmentB id2)
        (operation_id sumAB id3)
        (assignment_id assignmentC id4)
        
        (dependency_tree id0 id1)
        (dependency_tree id0 id2)
        (dependency_tree id1 id3)
        (dependency_tree id2 id3)
        (dependency_tree id3 id4)
    )

    (:goal (and
        (executed_assignment varA valueA assignmentA)
        (executed_assignment varB valueB assignmentB)
        (executed_binary_operation assignmentA assignmentB sumAB assignmentC)
        (executed_assignment varC valueC assignmentC)
    ))
)