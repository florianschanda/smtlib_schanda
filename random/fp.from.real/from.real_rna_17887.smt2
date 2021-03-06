(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; above
(declare-const x Float32)
(assert (= x (fp #b0 #b10101110 #b11001010010000011110101)))
;; x should be Float32(0x576520F5 [Rational(251929712132096), 251929712132096.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNA 251929720520706.0)))
;; w should be Float32(0x576520F6 [Rational(251929728909312), 251929728909312.000000])

(assert (not (distinct x w)))
(check-sat)
(exit)
