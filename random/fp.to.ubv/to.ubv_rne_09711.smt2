(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.ubv RNE +inf)
;; This benchmark relies on partial functions.
(declare-const x Float32)
(assert (= x (_ +oo 8 24)))
;; x should be Float32(+oo)

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_ubv 64) RNE x)))
;; y should be unspecified

(declare-const z (_ BitVec 64))
(assert (= z #b1011101100001000101100100011000000100110101100001111111000001100))
;; z should be 13477217804783517196

(assert (= y z))
(check-sat)
(exit)
