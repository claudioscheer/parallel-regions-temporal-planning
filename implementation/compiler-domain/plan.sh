#!/bin/bash

python2 ../../planner/temporal-planning/bin/plan.py tempo-2 domain.pddl $1 --no-validate

# Remove trash files.
rm dom.pddl ins.pddl output output.sas tdom.pddl tins.pddl #sas_plan.* tmp_sas_plan.*