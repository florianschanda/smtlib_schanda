(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RTZ -normal)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xCA9CAE94)))
;; x should be Float32(0xCA9CAE94 [Rational(-5134154), -5134154.000000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_sbv 32) RTZ x)))
;; y should be -5134154

(declare-const z (_ BitVec 32))
(assert (= z #b11111111101100011010100010110110))
;; z should be -5134154

(assert (= y z))
(check-sat)
(exit)
