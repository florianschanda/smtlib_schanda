(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RTN -halfpoint)
;; This benchmark relies on partial functions.
(declare-const x Float32)
(assert (= x (fp #b1 #b10010100 #b01111111010000011111000)))
;; x should be Float32(0xCA3FA0F8 [Rational(-3139646), -3139646.000000])

(declare-const y (_ BitVec 8))
(assert (= y ((_ fp.to_sbv 8) RTN x)))
;; y should be unspecified

(declare-const z (_ BitVec 8))
(assert (= z #b11100011))
;; z should be -29

(assert (= y z))
(check-sat)
(exit)
