(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; RNE conversion of Float32(-minsub) -> Float64
(declare-const x Float32)
(assert (= x (fp #b1 #b00000000 #b00000000000000000000001)))
;; x should be Float32(0x80000001 [Rational(-1, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const y Float64)
(assert (= y ((_ to_fp 11 53) RNE x)))
;; y should be Float64(0xB6A0000000000000 [Rational(-1, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const z Float64)
(assert (= z (fp #b1 #b01101101010 #b0000000000000000000000000000000000000000000000000000)))
;; z should be y

(assert (= y z))
(check-sat)
(exit)
