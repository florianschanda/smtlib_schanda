(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.ubv RTZ +halfpoint)
;; This benchmark relies on partial functions.
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x4AB41FE5)))
;; x should be Float32(0x4AB41FE5 [Rational(11804645, 2), 5902322.500000])

(declare-const y (_ BitVec 8))
(assert (= y ((_ fp.to_ubv 8) RTZ x)))
;; y should be unspecified

(declare-const z (_ BitVec 8))
(assert (= z #b01001011))
;; z should be 75

(assert (not (= y z)))
(check-sat)
(exit)
