(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; RTN conversion of Float32(-subnormal) -> Float128
(declare-const x Float32)
(assert (= x (fp #b1 #b00000000 #b11100011000100110011111)))
;; x should be Float32(0x8071899F [Rational(-7440799, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const y Float128)
(assert (= y ((_ to_fp 15 113) RTN x)))
;; y should be Float128(0xBF80C6267C0000000000000000000000 [Rational(-7440799, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const z Float128)
(assert (= z ((_ to_fp 15 113) #xBF80C6267C0000000000000000000000)))
;; z should be y

(assert (= y z))
(check-sat)
(exit)
