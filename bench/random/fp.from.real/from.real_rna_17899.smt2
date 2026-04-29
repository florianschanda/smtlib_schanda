(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; above
(declare-const x Float32)
(assert (= x (fp #b0 #b00101111 #b01110110100110111110101)))
;; x should be Float32(0x17BB4DF5 [Rational(12275189, 10141204801825835211973625643008), 0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNA (/ 245503793521.0 202824096036516704239472512860160000.0))))
;; w should be Float32(0x17BB4DF6 [Rational(6137595, 5070602400912917605986812821504), 0.000000])

(assert (not (distinct x w)))
(check-sat)
(exit)
