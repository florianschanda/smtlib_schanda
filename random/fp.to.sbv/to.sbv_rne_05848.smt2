(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RNE -inf)
;; This benchmark relies on partial functions.
(declare-const x Float32)
(assert (= x (_ -oo 8 24)))
;; x should be Float32(-oo)

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RNE x)))
;; y should be unspecified

(declare-const z (_ BitVec 64))
(assert (= z #b1101100001000111000101110110010001001000000011010000001000101110))
;; z should be -2862293318697680338

(assert (= y z))
(check-sat)
(exit)
