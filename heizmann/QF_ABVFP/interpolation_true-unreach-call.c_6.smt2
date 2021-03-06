(set-info :smt-lib-version 2.6)
(set-logic QF_ABVFP)
(set-info :source |
Generated by the tool Ultimate Automizer [1,2] which implements 
an automata theoretic approach [3] to software verification.

This SMT script belongs to a set of SMT scripts that was generated by 
applying Ultimate Automizer to benchmarks [4] from the SV-COMP 2017 [5,6].

This script might _not_ contain all SMT commands that are used by 
Ultimate Automizer. In order to satisfy the restrictions of
the SMT-COMP we have to drop e.g., the commands for getting
values (resp. models), unsatisfiable cores and interpolants.

2017-05-01, Matthias Heizmann (heizmann@informatik.uni-freiburg.de)


[1] https://ultimate.informatik.uni-freiburg.de/automizer/
[2] Matthias Heizmann, Yu-Wen Chen, Daniel Dietsch, Marius Greitschus, 
Alexander Nutz, Betim Musa, Claus Schätzle, Christian Schilling, 
Frank Schüssele, Andreas Podelski:
Ultimate Automizer with an On-Demand Construction of Floyd-Hoare 
Automata - (Competition Contribution). TACAS (2) 2017: 394-398
[3] Matthias Heizmann, Jochen Hoenicke, Andreas Podelski: Software Model 
Checking for People Who Love Automata. CAV 2013:36-52
[4] https://github.com/sosy-lab/sv-benchmarks
[5] Dirk Beyer: Software Verification with Validation of Results - 
(Report on SV-COMP 2017). TACAS (2) 2017: 331-349
[6] https://sv-comp.sosy-lab.org/2017/
|)
(set-info :license "https://creativecommons.org/licenses/by/4.0/")
(set-info :category "industrial")
(set-info :status unknown)
(declare-fun v_main_~min~6_1_const_662436068 () (Array (_ BitVec 32) (_ FloatingPoint 8 24)))
(declare-fun v_main_~min~6_6_const_662435615 () (Array (_ BitVec 32) (_ FloatingPoint 8 24)))
(declare-fun v_main_~max~6_3_const_308384016 () (Array (_ BitVec 32) (_ FloatingPoint 8 24)))
(declare-fun v_main_~max~6_8_const_308384011 () (Array (_ BitVec 32) (_ FloatingPoint 8 24)))
(declare-fun v_main_~t~6_3_const_1276941788 () (_ FloatingPoint 8 24))
(declare-fun |v_main_#t~nondet0_2_const_417031406| () (_ FloatingPoint 8 24))
(declare-fun v_main_~i~6_3_const_-2080320849 () (_ BitVec 32))
(assert (let ((v_main_~min~6_1 v_main_~min~6_1_const_662436068) (v_main_~min~6_6 v_main_~min~6_6_const_662435615) (v_main_~max~6_3 v_main_~max~6_3_const_308384016) (v_main_~max~6_8 v_main_~max~6_8_const_308384011) (v_main_~t~6_3 v_main_~t~6_3_const_1276941788) (|v_main_#t~nondet0_2| |v_main_#t~nondet0_2_const_417031406|) (v_main_~i~6_3 v_main_~i~6_3_const_-2080320849)) (and (= v_main_~min~6_1 (store (store (store (store (store v_main_~min~6_6 (_ bv0 32) ((_ to_fp 8 24) RNE (_ bv5 32))) (_ bv1 32) ((_ to_fp 8 24) RNE (_ bv10 32))) (_ bv2 32) ((_ to_fp 8 24) RNE (_ bv12 32))) (_ bv3 32) ((_ to_fp 8 24) RNE (_ bv30 32))) (_ bv4 32) ((_ to_fp 8 24) RNE (_ bv150 32)))) (= v_main_~max~6_3 (store (store (store (store (store v_main_~max~6_8 (_ bv0 32) ((_ to_fp 8 24) RNE (_ bv10 32))) (_ bv1 32) ((_ to_fp 8 24) RNE (_ bv12 32))) (_ bv2 32) ((_ to_fp 8 24) RNE (_ bv30 32))) (_ bv3 32) ((_ to_fp 8 24) RNE (_ bv150 32))) (_ bv4 32) ((_ to_fp 8 24) RNE (_ bv300 32)))) (= v_main_~t~6_3 |v_main_#t~nondet0_2|) (fp.geq v_main_~t~6_3 (select v_main_~min~6_1 (_ bv0 32))) (fp.leq v_main_~t~6_3 (select v_main_~max~6_3 (_ bv4 32))) (= v_main_~i~6_3 (_ bv0 32)))))
(check-sat)
(exit)
