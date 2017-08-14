(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; RTN conversion of Float32(+halfpoint) -> Float128
(declare-const x Float32)
(assert (= x (fp #b0 #b10010100 #b11101110110111001001110)))
;; x should be Float32(0x4A776E4E [Rational(8107815, 2), 4053907.500000])

(declare-const y Float128)
(assert (= y ((_ to_fp 15 113) RTN x)))
;; y should be Float128(0x4014EEDC9C0000000000000000000000 [Rational(8107815, 2), 4053907.500000])

(declare-const z Float128)
(assert (= z ((_ to_fp 15 113) #x4014EEDC9C0000000000000000000000)))
;; z should be y

(assert (= y z))
(check-sat)
(exit)
