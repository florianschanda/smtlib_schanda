(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; above
(declare-const x Float32)
(assert (= x (fp #b0 #b10010101 #b11100011011000011000101)))
;; x should be Float32(0x4AF1B0C5 [Rational(15839429, 2), 7919714.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNE (/ 2027446979.0 256.0))))
;; w should be Float32(0x4AF1B0C6 [Rational(7919715), 7919715.000000])

(assert (not (distinct x w)))
(check-sat)
(exit)
