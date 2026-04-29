(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RTN +normal)
(declare-const x Float32)
(assert (= x (fp #b1 #b01111101 #b11111111111110010011110)))
;; x should be Float32(0xBEFFFC9E [Rational(-8388175, 16777216), -0.499974])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_sbv 32) RTN x)))
;; y should be -1

(declare-const z (_ BitVec 32))
(assert (= z #b11111111111111111111111111111111))
;; z should be -1

(assert (= y z))
(check-sat)
(exit)
