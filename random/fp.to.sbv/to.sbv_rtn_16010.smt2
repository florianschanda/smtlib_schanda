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
(assert (= x (fp #b1 #b10010101 #b00010000111011110010110)))
;; x should be Float32(0xCA887796 [Rational(-4471755), -4471755.000000])

(declare-const y (_ BitVec 8))
(assert (= y ((_ fp.to_sbv 8) RTN x)))
;; y should be unspecified

(declare-const z (_ BitVec 8))
(assert (= z #b00010100))
;; z should be 20

(assert (not (= y z)))
(check-sat)
(exit)
