(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RNA -inf)
;; This benchmark relies on partial functions.
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xFF800000)))
;; x should be Float32(-oo)

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_sbv 32) RNA x)))
;; y should be unspecified

(declare-const z (_ BitVec 32))
(assert (= z #b11100110110110011010100101101110))
;; z should be -421942930

(assert (not (= y z)))
(check-sat)
(exit)
