#!/bin/bash

rm -f dom.pddl ins.pddl output output.sas tdom.pddl tins.pddl sas_plan.* tmp_sas_plan.*
python2 ../planner/temporal-planning/bin/plan.py $1 domain.pddl $2 --no-validate --time 30
rm -f dom.pddl ins.pddl output output.sas tdom.pddl tins.pddl #sas_plan.* tmp_sas_plan.*