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
(declare-fun v_SIN_0_180_~dx~6_1_const_-1340491821 () (_ FloatingPoint 11 53))
(declare-fun v_SIN_0_180_~i_dx~6_1_const_-254235255 () (_ FloatingPoint 11 53))
(declare-fun v_SIN_0_180_~v_sup~6_1_const_44060434 () (_ FloatingPoint 11 53))
(declare-fun v_SIN_0_180_~v_inf~6_1_const_556230413 () (_ FloatingPoint 11 53))
(declare-fun |v_SIN_0_180_#res_1_const_1400502704| () (_ FloatingPoint 11 53))
(declare-fun v_SIN_0_180_~x_1_const_1979114837 () (_ FloatingPoint 11 53))
(declare-fun |v_SIN_0_180_#in~x_1_const_-1909298069| () (_ FloatingPoint 11 53))
(declare-fun v_SIN_0_180_~i~6_1_const_1241247057 () (_ BitVec 32))
(declare-fun v_~T_366_const_-2089468878 () (Array (_ BitVec 32) (_ FloatingPoint 11 53)))
(assert (let ((v_SIN_0_180_~dx~6_1 v_SIN_0_180_~dx~6_1_const_-1340491821) (v_SIN_0_180_~i_dx~6_1 v_SIN_0_180_~i_dx~6_1_const_-254235255) (v_SIN_0_180_~v_sup~6_1 v_SIN_0_180_~v_sup~6_1_const_44060434) (v_SIN_0_180_~v_inf~6_1 v_SIN_0_180_~v_inf~6_1_const_556230413) (|v_SIN_0_180_#res_1| |v_SIN_0_180_#res_1_const_1400502704|) (v_SIN_0_180_~x_1 v_SIN_0_180_~x_1_const_1979114837) (|v_SIN_0_180_#in~x_1| |v_SIN_0_180_#in~x_1_const_-1909298069|) (v_SIN_0_180_~i~6_1 v_SIN_0_180_~i~6_1_const_1241247057) (v_~T_366 v_~T_366_const_-2089468878)) (and (= v_SIN_0_180_~x_1 |v_SIN_0_180_#in~x_1|) (= v_SIN_0_180_~dx~6_1 (fp.mul RNE ((_ to_fp 11 53) RNE (_ bv2 32)) v_SIN_0_180_~x_1)) (= v_SIN_0_180_~i~6_1 ((_ fp.to_sbv 32) RTZ v_SIN_0_180_~dx~6_1)) (= v_SIN_0_180_~i_dx~6_1 ((_ to_fp 11 53) RNE v_SIN_0_180_~i~6_1)) (= v_SIN_0_180_~v_inf~6_1 (select v_~T_366 v_SIN_0_180_~i~6_1)) (= v_SIN_0_180_~v_sup~6_1 (select v_~T_366 (bvadd v_SIN_0_180_~i~6_1 (_ bv1 32)))) (= |v_SIN_0_180_#res_1| (fp.add RNE v_SIN_0_180_~v_inf~6_1 (fp.mul RNE (fp.sub RNE v_SIN_0_180_~dx~6_1 v_SIN_0_180_~i_dx~6_1) (fp.sub RNE v_SIN_0_180_~v_sup~6_1 v_SIN_0_180_~v_inf~6_1)))))))
(check-sat)
(exit)
