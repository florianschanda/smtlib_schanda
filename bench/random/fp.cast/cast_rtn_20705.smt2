(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; RTN conversion of Float32(-normal) -> Float16
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xA31B24C2)))
;; x should be Float32(0xA31B24C2 [Rational(-5083745, 604462909807314587353088), -0.000000])

(declare-const y Float16)
(assert (= y ((_ to_fp 5 11) RTN x)))
;; y should be Float16(0x8001 [Rational(-1, 16777216), -0.000000])

(declare-const z Float16)
(assert (= z (fp #b1 #b00000 #b0000000001)))
;; z should be y

(assert (= y z))
(check-sat)
(exit)
