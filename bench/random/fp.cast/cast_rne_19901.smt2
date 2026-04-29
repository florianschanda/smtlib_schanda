(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; RNE conversion of Float32(nan) -> Float16
(declare-const x Float32)
(assert (= x (fp #b0 #b11111111 #b00100001110011011111001)))
;; x should be Float32(NaN)

(declare-const y Float16)
(assert (= y ((_ to_fp 5 11) RNE x)))
;; y should be Float16(NaN)

(declare-const z Float16)
(assert (= z (fp #b1 #b11111 #b1111111111)))
;; z should be y

(assert (= y z))
(check-sat)
(exit)
