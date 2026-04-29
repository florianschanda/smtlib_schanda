(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; above
(declare-const x Float32)
(assert (= x (fp #b0 #b10010101 #b11011010101100011101111)))
;; x should be Float32(0x4AED58EF [Rational(15554799, 2), 7777399.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTZ 7777401.0)))
;; w should be Float32(0x4AED58F2 [Rational(7777401), 7777401.000000])

(assert (not (distinct x w)))
(check-sat)
(exit)
