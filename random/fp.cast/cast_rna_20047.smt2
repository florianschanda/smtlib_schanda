(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; RNA conversion of Float32(+subnormal) -> Float128
(declare-const x Float32)
(assert (= x (fp #b0 #b00000000 #b10010111111000101101111)))
;; x should be Float32(0x004BF16F [Rational(4977007, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const y Float128)
(assert (= y ((_ to_fp 15 113) RNA x)))
;; y should be Float128(0x3F802FC5BC0000000000000000000000 [Rational(4977007, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const z Float128)
(assert (= z ((_ to_fp 15 113) #x3F802FC5BC0000000000000000000000)))
;; z should be y

(assert (= y z))
(check-sat)
(exit)
