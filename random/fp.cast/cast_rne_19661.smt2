(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; RNE conversion of Float32(+halfpoint) -> Float16
(declare-const x Float32)
(assert (= x (fp #b0 #b10010100 #b11111101010001111011110)))
;; x should be Float32(0x4A7EA3DE [Rational(8344047, 2), 4172023.500000])

(declare-const y Float16)
(assert (= y ((_ to_fp 5 11) RNE x)))
;; y should be Float16(+oo)

(declare-const z Float16)
(assert (= z ((_ to_fp 5 11) #x7C00)))
;; z should be y

(assert (= y z))
(check-sat)
(exit)
