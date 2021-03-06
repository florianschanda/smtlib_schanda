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
(assert (= x ((_ to_fp 8 24) #x7EED6D5F)))
;; x should be Float32(0x7EED6D5F [Rational(157797461093758852499201186187599413248), 157797461093758852499201186187599413248.000000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_ubv 32) RTN x)))
;; y should be unspecified

(declare-const z (_ BitVec 32))
(assert (not (= y z)))
(check-sat)
(exit)
