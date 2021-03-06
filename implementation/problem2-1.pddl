(define (problem problem2_1) (:domain compiler)
    (:objects
        id0 id1 id2 id3 - id
        assignmentA assignmentC - assignment
        sumAA - operation
    )

    (:init
        (executed_instruction id0)

        (assignment_id assignmentA id1)
        (operation_id sumAA id2)
        (assignment_id assignmentC id3)
        
        (dependency_tree id0 id1)
        (dependency_tree id1 id2)
        (dependency_tree id2 id3)
    )

    (:goal (and
        (executed_assignment assignmentA)
        (executed_binary_operation assignmentA assignmentA sumAA assignmentC)
        (executed_assignment assignmentC)
    ))
)