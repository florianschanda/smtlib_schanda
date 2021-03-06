(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RTN -halfpoint)
(declare-const x Float32)
(assert (= x (fp #b1 #b10010100 #b11000101101000001000110)))
;; x should be Float32(0xCA62D046 [Rational(-7432227, 2), -3716113.500000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_sbv 32) RTN x)))
;; y should be -3716114

(declare-const z (_ BitVec 32))
(assert (= z #b11111111110001110100101111101110))
;; z should be -3716114

(assert (= y z))
(check-sat)
(exit)
