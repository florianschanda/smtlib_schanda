(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010010 #b01011001001001101001000)))
;; x should be Float32(0x492C9348 [Rational(1413737, 2), 706868.500000])

(declare-const y Float32)
(assert (= y (fp #b0 #b11111111 #b00000000000000000000000)))
;; y should be Float32(+oo)

(declare-const z Float32)
(assert (= z (fp #b0 #b10010101 #b10101101111111111000001)))
;; z should be Float32(0x4AD6FFC1 [Rational(14090177, 2), 7045088.500000])

(declare-const result Float32)
(assert (= result (fp.fma RNE x y z)))
(assert (= result (_ +oo 8 24)))
(check-sat)
(exit)
