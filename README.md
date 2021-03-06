USER STORIES

As a person,
So that I can use a bike,
I'd like a docking station to release a bike.
=> CREATE DOCKING STATION CLASS AND RELEASE A BIKE METHOD, TO BE USED ON A NEW INSTANCE OF DOCKING STATION CLASS

As a person,
So that I can use a good bike,
I'd like to see if a bike is working
=> CREATE BIKE CLASS AND IS WORKING METHOD, TO BE USED ON A NEW INSTANCE OF BIKE CLASS

As a member of the public
So I can return bikes I've hired
I want to dock my bike at the docking station
=> ADD DOCK BIKE METHOD (IE STORE DATA INTO AN INSTANCE VARIABLE SO CAN BE USED ELSEWHERE) TO DOCKING STATION CLASS

As a member of the public
So I can decide whether to use the docking station
I want to see a bike that has been docked
=> ADD BIKE METHOD (TO READ DOCKED BIKE DATA VIA INSTANCE VARIABLE, REFACTOR TO USE ATTR_READER) TO DOCKING STATION CLASS

As a member of the public,
So that I am not confused and charged unnecessarily,
I'd like docking stations not to release bikes when there are none available.
=> RELEASE A BIKE METHOD UPDATED TO REFERENCE INSTANCE VARIABLE OF BIKES VS BIKES.NEW (AS THIS CREATES INFINITE SUPPLY) AND TO INCLUDE FAIL MESSAGE IF NO BIKES AVAILABLE

As a maintainer of the system,
So that I can control the distribution of bikes,
I want a docking station to have a default capacity of 20 bikes.
=> SET A CONSTANT VARIABLE TO THE DEFAULT CAPACITY (E.G. 20) + REMOVE MAGIC NUMBERS FROM CODE + TESTS

As a system maintainer,
So that busy areas can be served more effectively,
I want to be able to specify a larger capacity when necessary.
=> REVIEW THIS!!

As a member of the public,
So that I reduce the chance of getting a broken bike in future,
I'd like to report a bike as broken when I return it.
=> CREATE REPORT_BROKEN (STORE VAR AS BROKEN) AND BROKEN? (READ DATA AS BROKEN) METHODS IN BIKE CLASS

As a maintainer of the system,
So that I can manage broken bikes and not disappoint users,
I'd like docking stations not to release broken bikes.

As a maintainer of the system,
So that I can manage broken bikes and not disappoint users,
I'd like docking stations to accept returning bikes (broken or not).
