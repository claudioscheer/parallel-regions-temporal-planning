;Header and description

; Program is C := A + B

(define (domain program1)

;remove requirements that are not needed
(:requirements :typing :negative-preconditions)

(:types ;todo: enumerate types and their hierarchy here, e.g. car truck bus - vehicle
    varname - object
    varvalue - object
    opid - object
)

; un-comment following line if constants are needed
;(:constants )

(:predicates ;todo: define predicates here
  (var-value ?var-name ?var-value)
  (op-executed ?opid - opid)
)


(:functions ;todo: define numeric functions here
)

;define actions here

(:action binary_op
    :parameters (?var-name1 - varname ?var-value1 - varvalue 
                 ?var-name2 - varname ?var-value2 - varvalue
                 ?var-name3 - varname ?var-value3 - varvalue
                 ?opid - opid)
    :precondition (and (var-value ?var-name1 ?var-value1) (not (op-executed ?opid)))
    :effect (and (var-value ?var-name1 ?var-value1) (op-executed ?opid))
)

(:action assignment
    :parameters (?var-name - varname ?var-value - varvalue ?opid - opid)
    :precondition (and (var-value ?var-name ?var-value) (op-executed ?opid))
    :effect (and (op-executed ?opid))
)



)