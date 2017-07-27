(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; RTN conversion of Float32(+halfpoint) -> Float128
(declare-const x Float32)
(assert (= x (fp #b0 #b10010100 #b00111000010101101000010)))
;; x should be Float32(0x4A1C2B42 [Rational(5117345, 2), 2558672.500000])

(declare-const y Float128)
(assert (= y ((_ to_fp 15 113) RTN x)))
;; y should be Float128(0x40143856840000000000000000000000 [Rational(5117345, 2), 2558672.500000])

(declare-const z Float128)
(assert (= z ((_ to_fp 15 113) #x40143856840000000000000000000000)))
;; z should be y

(assert (= y z))
(check-sat)
(exit)
