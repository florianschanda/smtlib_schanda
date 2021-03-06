(set-info :smt-lib-version 2.6)
(set-logic QF_FPLRA)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010011 #b01010000000111011001100)))
;; x should be Float32(0x49A80ECC [Rational(2753459, 2), 1376729.500000])

(declare-const y Real)
(assert (= y (fp.to_real x)))
;; y should be Rational(2753459, 2)

(assert (= y (/ 2753459.0 2.0)))
(check-sat)
(exit)
