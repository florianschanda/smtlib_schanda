(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; below
(declare-const x Float32)
(assert (= x (fp #b0 #b10010101 #b01111011111000111110101)))
;; x should be Float32(0x4ABDF1F5 [Rational(12448245, 2), 6224122.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTN (/ 15177975.0 16.0))))
;; w should be Float32(0x496798F7 [Rational(15177975, 16), 948623.437500])

(assert (not (distinct x w)))
(check-sat)
(exit)
