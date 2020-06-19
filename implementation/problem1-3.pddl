(define (problem problem1_3) (:domain compiler)
    (:objects
        id0 id1 id2 id3 id4 id5 id6 id7 id8 id9 id10 - id
        assignmentA assignmentA0 assignmentA1 assignmentA2 assignmentI assignmentI0 assignmentI1 - assignment
        multLoop0 multLoop1 multLoop2 - operation
    )

    (:init
        (executed_instruction id0)

        (assignment_id assignmentA id1)
        (assignment_id assignmentI id2)
        (operation_id multLoop0 id3)
        (assignment_id assignmentA0 id4)
        (assignment_id assignmentI0 id5)
        (operation_id multLoop1 id6)
        (assignment_id assignmentA1 id7)
        (assignment_id assignmentI1 id8)
        (operation_id multLoop2 id9)
        (assignment_id assignmentA2 id10)

        (dependency_tree id0 id1)
        (dependency_tree id0 id2)
        (dependency_tree id1 id3)
        (dependency_tree id2 id3)
        (dependency_tree id3 id4)
        (dependency_tree id3 id5)
        (dependency_tree id4 id6)
        (dependency_tree id5 id6)
        (dependency_tree id6 id7)
        (dependency_tree id6 id8)
        (dependency_tree id7 id9)
        (dependency_tree id8 id9)
        (dependency_tree id9 id10)
    )

    (:goal (and
        (executed_assignment assignmentA)
        (executed_assignment assignmentI)
        (executed_binary_operation assignmentA assignmentI multLoop0 assignmentA0)
        (executed_assignment assignmentA0)
        (executed_assignment assignmentI0)
        (executed_binary_operation assignmentA0 assignmentI0 multLoop1 assignmentA1)
        (executed_assignment assignmentA1)
        (executed_assignment assignmentI1)
        (executed_binary_operation assignmentA1 assignmentI1 multLoop2 assignmentA2)
        (executed_assignment assignmentA2)
    ))
)