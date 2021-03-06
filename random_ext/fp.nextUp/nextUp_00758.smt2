(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010100 #b11010101001111010001110)))
;; x should be Float32(0x4A6A9E8E [Rational(7688007, 2), 3844003.500000])

(declare-const result Float32)
(assert (= result (fp.nextUp x)))
(assert (= result (fp #b0 #b10010100 #b11010101001111010001111)))
(check-sat)
(exit)
