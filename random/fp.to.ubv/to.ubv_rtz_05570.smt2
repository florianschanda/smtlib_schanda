(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.ubv RTZ -normal)
;; This benchmark relies on partial functions.
(declare-const x Float32)
(assert (= x (fp #b1 #b11010111 #b01000101101100011001101)))
;; x should be Float32(0xEBA2D8CD [Rational(-393739591040809760253280256), -393739591040809760253280256.000000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_ubv 32) RTZ x)))
;; y should be unspecified

(declare-const z (_ BitVec 32))
(assert (= z #b11000101111010001110011111010110))
;; z should be 3320375254

(assert (= y z))
(check-sat)
(exit)
