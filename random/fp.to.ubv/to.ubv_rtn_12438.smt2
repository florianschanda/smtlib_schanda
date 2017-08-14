(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.ubv RTN -normal)
;; This benchmark relies on partial functions.
(declare-const x Float32)
(assert (= x (fp #b1 #b01111110 #b00000000000001011001000)))
;; x should be Float32(0xBF0002C8 [Rational(-1048665, 2097152), -0.500042])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_ubv 64) RTN x)))
;; y should be unspecified

(declare-const z (_ BitVec 64))
(assert (= z #b1001011011000101100011110010111100110001110001001100001100001010))
;; z should be 10864247108962403082

(assert (= y z))
(check-sat)
(exit)
