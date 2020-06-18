(define (problem problem1_2) (:domain compiler)
    (:objects
        id0 id1 id2 id3 id4 id5 id6 id7 id8 - id
        assignmentS assignmentS0 assignmentS1 assignmentS2 assignmentArray - assignment
        sum0 sum1 sum2 - operation
        varS varArray - variable_name
        valueS valueArray - variable_value
    )

    (:init
        (executed_instruction id0)
        (variable_info varS valueS assignmentS)
        (variable_info varArray valueArray assignmentArray)

        (assignment_id assignmentS id1)
        (assignment_id assignmentArray id2)
        (operation_id sum0 id3)
        (assignment_id assignmentS0 id4)
        (operation_id sum1 id5)
        (assignment_id assignmentS1 id6)
        (operation_id sum2 id7)
        (assignment_id assignmentS2 id8)

        (dependency_tree id0 id1)
        (dependency_tree id0 id2)
        (dependency_tree id1 id3)
        (dependency_tree id2 id3)
        (dependency_tree id3 id4)
        (dependency_tree id1 id5)
        (dependency_tree id2 id5)
        (dependency_tree id5 id6)
        (dependency_tree id1 id7)
        (dependency_tree id2 id7)
        (dependency_tree id7 id8)
    )

    (:goal (and
        (executed_assignment varS valueS assignmentS)
        (executed_assignment varArray valueArray assignmentArray)
        (executed_binary_operation assignmentS assignmentArray sum0 assignmentS0)
        (executed_assignment varS valueS assignmentS0)
        (executed_binary_operation assignmentS assignmentArray sum1 assignmentS1)
        (executed_assignment varS valueS assignmentS1)
        (executed_binary_operation assignmentS assignmentArray sum2 assignmentS2)
        (executed_assignment varS valueS assignmentS2)
    ))
)