(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; below
(declare-const x Float32)
(assert (= x (fp #b0 #b10110011 #b10001110101000100011101)))
;; x should be Float32(0x59C7511D [Rational(7012838170165248), 7012838170165248.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNA 5275712462072945.0)))
;; w should be Float32(0x5995F1DC [Rational(5275712340623360), 5275712340623360.000000])

(assert (not (distinct x w)))
(check-sat)
(exit)
