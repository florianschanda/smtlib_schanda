(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b1 #b00000000 #b00110011000111011000101)))
;; x should be Float32(0x80198EC5 [Rational(-1674949, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const y Float32)
(assert (= y (fp #b1 #b10010101 #b11100110101100001001001)))
;; y should be Float32(0xCAF35849 [Rational(-15947849, 2), -7973924.500000])

(declare-const z Float32)
(assert (= z (fp #b1 #b11111111 #b00000000000000000000000)))
;; z should be Float32(-oo)

(declare-const result Float32)
(assert (= result (fp.fma RNE x y z)))
(assert (= result (_ -oo 8 24)))
(check-sat)
(exit)
