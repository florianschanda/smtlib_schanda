(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.ubv RTZ nan)
;; This benchmark relies on partial functions.
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x7F88F0A5)))
;; x should be Float32(NaN)

(declare-const y (_ BitVec 8))
(assert (= y ((_ fp.to_ubv 8) RTZ x)))
;; y should be unspecified

(declare-const z (_ BitVec 8))
(assert (= z #b01011000))
;; z should be 88

(assert (not (= y z)))
(check-sat)
(exit)
