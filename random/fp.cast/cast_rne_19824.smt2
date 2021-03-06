(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; RNE conversion of Float32(-maxsub) -> Float64
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x807FFFFF)))
;; x should be Float32(0x807FFFFF [Rational(-8388607, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const y Float64)
(assert (= y ((_ to_fp 11 53) RNE x)))
;; y should be Float64(0xB80FFFFFC0000000 [Rational(-8388607, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const z Float64)
(assert (= z (fp #b1 #b01110000000 #b1111111111111111111111000000000000000000000000000000)))
;; z should be y

(assert (= y z))
(check-sat)
(exit)
