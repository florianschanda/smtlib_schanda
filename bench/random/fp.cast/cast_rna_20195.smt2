(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; RNA conversion of Float32(nan) -> Float16
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xFFA85ADE)))
;; x should be Float32(NaN)

(declare-const y Float16)
(assert (= y ((_ to_fp 5 11) RNA x)))
;; y should be Float16(NaN)

(declare-const z Float16)
(assert (= z (_ NaN 5 11)))
;; z should be y

(assert (= y z))
(check-sat)
(exit)
