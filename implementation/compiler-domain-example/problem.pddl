(define (problem pb_program1) (:domain program1)
(:objects varA varB varC - varname
          valueA valueB valueC - varvalue
          sum1 assignment1 - opid
)

(:init
    ;todo: put the initial state's facts and numeric values here
    (var-value varA valueA)
    (var-value varB valueB)
    (var-value varC valueC)
)

(:goal (and (op-executed assignment1)
            (op-executed sum1)
    ;todo: put the goal condition here
))

;un-comment the following line if metric is needed
;(:metric minimize (???))
)
