(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.ubv RTZ +inf)
;; This benchmark relies on partial functions.
(declare-const x Float32)
(assert (= x (_ +oo 8 24)))
;; x should be Float32(+oo)

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_ubv 32) RTZ x)))
;; y should be unspecified

(declare-const z (_ BitVec 32))
(assert (= z #b10001101001110010101010101010011))
;; z should be 2369344851

(assert (= y z))
(check-sat)
(exit)
