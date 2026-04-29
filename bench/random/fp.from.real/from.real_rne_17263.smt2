(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; above
(declare-const x Float32)
(assert (= x (fp #b0 #b10010101 #b01001111000001000111111)))
;; x should be Float32(0x4AA7823F [Rational(10977855, 2), 5488927.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNE (/ 1405165533.0 256.0))))
;; w should be Float32(0x4AA78240 [Rational(5488928), 5488928.000000])

(assert (not (distinct x w)))
(check-sat)
(exit)
