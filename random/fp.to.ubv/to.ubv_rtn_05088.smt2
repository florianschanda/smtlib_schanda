(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.ubv RTN +normal)
;; This benchmark relies on partial functions.
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x5EE65BB6)))
;; x should be Float32(0x5EE65BB6 [Rational(8299530481360175104), 8299530481360175104.000000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_ubv 32) RTN x)))
;; y should be unspecified

(declare-const z (_ BitVec 32))
(assert (= z #b11111000111101111101110110110000))
;; z should be 4176993712

(assert (= y z))
(check-sat)
(exit)
