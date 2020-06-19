(define (problem problem1_1) (:domain compiler)
    (:objects
        id0 id1 id2 id3 id4 - id
        assignmentA assignmentB assignmentC - assignment
        sumAB - operation
    )

    (:init
        (executed_instruction id0)

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
        (executed_assignment assignmentA)
        (executed_assignment assignmentB)
        (executed_binary_operation assignmentA assignmentB sumAB assignmentC)
        (executed_assignment assignmentC)
    ))
)