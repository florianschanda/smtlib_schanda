(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b0 #b00000000 #b00000000000000000000000)))
;; x should be Float32(+zero)

(declare-const y Float32)
(assert (= y (_ +oo 8 24)))
;; y should be Float32(+oo)

(declare-const z Float32)
(assert (= z (fp #b0 #b10010100 #b11111011111010101100010)))
;; z should be Float32(0x4A7DF562 [Rational(8321713, 2), 4160856.500000])

(declare-const result Float32)
(assert (= result (fp.fma RTZ x y z)))
(assert (= result (_ NaN 8 24)))
(check-sat)
(exit)
