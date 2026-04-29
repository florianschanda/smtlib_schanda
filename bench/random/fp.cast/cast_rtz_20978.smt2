(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; RTZ conversion of Float32(-normal) -> Float16
(declare-const x Float32)
(assert (= x (fp #b1 #b01101000 #b00001001110010111111110)))
;; x should be Float32(0xB404E5FE [Rational(-4354815, 35184372088832), -0.000000])

(declare-const y Float16)
(assert (= y ((_ to_fp 5 11) RTZ x)))
;; y should be Float16(0x8002 [Rational(-1, 8388608), -0.000000])

(declare-const z Float16)
(assert (= z ((_ to_fp 5 11) #x8002)))
;; z should be y

(assert (= y z))
(check-sat)
(exit)
