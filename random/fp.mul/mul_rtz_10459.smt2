(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010100 #b10001000101111010101110)))
;; x should be Float32(0x4A445EAE [Rational(6434647, 2), 3217323.500000])

(declare-const y Float32)
(assert (= y (_ +zero 8 24)))
;; y should be Float32(+zero)

(declare-const result Float32)
(assert (= result (fp.mul RTZ x y)))
(assert (= result (fp #b0 #b00000000 #b00000000000000000000000)))
(check-sat)
(exit)
