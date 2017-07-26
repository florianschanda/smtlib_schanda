(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RNA nan)
;; This benchmark relies on partial functions.
(declare-const x Float32)
(assert (= x (fp #b0 #b11111111 #b01110011010111110101110)))
;; x should be Float32(NaN)

(declare-const y (_ BitVec 8))
(assert (= y ((_ fp.to_sbv 8) RNA x)))
;; y should be unspecified

(declare-const z (_ BitVec 8))
(assert (= z #b11011000))
;; z should be -40

(assert (= y z))
(check-sat)
(exit)
