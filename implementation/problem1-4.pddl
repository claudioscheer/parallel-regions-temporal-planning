(define (problem problem1_4) (:domain compiler)
    (:objects
        id0 id1 id2 id3 id4 id5 id6 id7 id8 id9 id10 - id
        assignmentA assignmentB assignmentC assignmentI assignmentJ assignmentK - assignment
        multLoop0 multLoop1 - operation
        varA varB varC varI varJ varK - variable_name
        valueA valueB valueC valueI valueJ valueK - variable_value
    )

    (:init
        (executed_instruction id0)
        (variable_info varA valueA assignmentA)
        (variable_info varB valueB assignmentB)
        (variable_info varC valueC assignmentC)

        (assignment_id assignmentA id1)
        (assignment_id assignmentB id2)
        (assignment_id assignmentC id3)
        (assignment_id assignmentI id4)
        (assignment_id assignmentJ id5)
        (assignment_id assignmentK id6)

        (dependency_tree id0 id1)
        (dependency_tree id0 id2)
        (dependency_tree id0 id3)
        (dependency_tree id1 id4)
        (dependency_tree id2 id4)
        (dependency_tree id3 id4)
        (dependency_tree id4 id5)
        (dependency_tree id5 id6)
    )

    (:goal (and
        (executed_assignment varA valueA assignmentA)
        (executed_assignment varB valueB assignmentB)
        (executed_assignment varC valueC assignmentC)
        (executed_assignment varI valueI assignmentI)
        (executed_assignment varJ valueJ assignmentJ)
        (executed_assignment varK valueK assignmentK)
    ))
)