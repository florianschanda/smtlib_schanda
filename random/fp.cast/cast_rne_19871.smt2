(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; RNE conversion of Float32(-subnormal) -> Float16
(declare-const x Float32)
(assert (= x (fp #b1 #b00000000 #b00100111110110100011000)))
;; x should be Float32(0x8013ED18 [Rational(-163235, 89202980794122492566142873090593446023921664), -0.000000])

(declare-const y Float16)
(assert (= y ((_ to_fp 5 11) RNE x)))
;; y should be Float16(-zero)

(declare-const z Float16)
(assert (= z ((_ to_fp 5 11) #x8000)))
;; z should be y

(assert (= y z))
(check-sat)
(exit)
