# Static-HW-Scheduler
Static scheduler for 2-issue(way/scalar), 5-stage pipeline MIPS processor implemented in Hardware
# BEHAVIOR
It ensures a pair of instructions issued from the instruction memory are not dependent on each other.

For any 2 instructions that are dependent on each other, the 2nd is swapped with a nop, ensuring 
only the first instruction in that order is decoded for that cycle. A signal is generated alongside to
ensure the PC points to the swapped instruction, thus enabling execution IN-ORDER.

For any pair of instructions, if the first is a Jump, Jump and Link, Branch or Jr, the scheduler sets path 2 
to a nop. ensuring program order is preserved. However, if the pair consists of Beq, J, Jal or Jr and another instruction 
which is not of the types discussed, then if there exists no dependency the scheduler issues them both in the 
same cycle with beq, J, JAL or Jr occupying the first way or path
