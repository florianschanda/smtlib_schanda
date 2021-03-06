(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x8D8F26CD)))
;; x should be Float32(0x8D8F26CD [Rational(-9381581, 10633823966279326983230456482242756608), -0.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #xED42A91F)))
;; y should be Float32(0xED42A91F [Rational(-3765284172638549038883405824), -3765284172638549038883405824.000000])

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #x80565D57)))
;; z should be Float32(0x80565D57 [Rational(-5659991, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const result Float32)
(assert (= result (fp.fma RTZ x y z)))
(assert (= result (fp #b0 #b01110110 #b10110011011001111110010)))
(check-sat)
(exit)
