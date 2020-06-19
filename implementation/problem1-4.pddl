(define (problem problem1_4) (:domain compiler)
    (:objects
        id0 id1 id2 id3 id4 id5 id6 - id
        assignmentA assignmentB assignmentC assignmentI assignmentJ assignmentK - assignment
    )

    (:init
        (executed_instruction id0)

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
        (executed_assignment assignmentA)
        (executed_assignment assignmentB)
        (executed_assignment assignmentC)
        (executed_assignment assignmentI)
        (executed_assignment assignmentJ)
        (executed_assignment assignmentK)
    ))
)