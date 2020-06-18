#!/bin/bash

python2 ../../planner/temporal-planning/bin/plan.py tempo-2 domain.pddl $1 --no-validate

# Remove trash files.
rm dom.pddl ins.pddl output output.sas sas_plan.1 sas_plan.2 tdom.pddl tins.pddl tmp_sas_plan.1 tmp_sas_plan.2