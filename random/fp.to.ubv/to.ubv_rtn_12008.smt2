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
(assert (= x (fp #b0 #b11111101 #b11011010110110101011111)))
;; x should be Float32(0x7EED6D5F [Rational(157797461093758852499201186187599413248), 157797461093758852499201186187599413248.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_ubv 64) RTN x)))
;; y should be unspecified

(declare-const z (_ BitVec 64))
(assert (= z #b0011010000011101101101101011101010111000010100010000001110000010))
;; z should be 3755358577369351042

(assert (= y z))
(check-sat)
(exit)
