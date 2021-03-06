(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x00800000)))
;; x should be Float32(0x00800000 [Rational(1, 85070591730234615865843651857942052864), 0.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #xBEE4CF59)))
;; y should be Float32(0xBEE4CF59 [Rational(-14995289, 33554432), -0.446894])

(declare-const z Float32)
(assert (= z (fp #b1 #b10011011 #b10111110010001001000011)))
;; z should be Float32(0xCDDF2243 [Rational(-467945568), -467945568.000000])

(declare-const result Float32)
(assert (= result (fp.fma RNA x y z)))
(assert (= result (fp #b1 #b10011011 #b10111110010001001000011)))
(check-sat)
(exit)
