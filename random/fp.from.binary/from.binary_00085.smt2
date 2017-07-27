(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.from.binary -normal)
;; binary interchange -> float
(declare-const x (_ BitVec 32))
(assert (= x #b10010010001001110001111100111011))
;; x should be 92271f3b

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) x)))
;; y should be Float32(0x92271F3B [Rational(-10952507, 20769187434139310514121985316880384), -0.000000])

(assert (not (= y (fp #b1 #b00100100 #b01001110001111100111011))))
(check-sat)
(exit)
