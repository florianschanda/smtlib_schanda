(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RTN -halfpoint)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xCA62D048)))
;; x should be Float32(0xCA62D048 [Rational(-3716114), -3716114.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RTN x)))
;; y should be -3716114

(declare-const z (_ BitVec 64))
(assert (= z #b1111111111111111111111111111111111111111110001110100101111101110))
;; z should be -3716114

(assert (= y z))
(check-sat)
(exit)
