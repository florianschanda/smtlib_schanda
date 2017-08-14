(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RTZ -normal)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xCA9CAE92)))
;; x should be Float32(0xCA9CAE92 [Rational(-5134153), -5134153.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RTZ x)))
;; y should be -5134153

(declare-const z (_ BitVec 64))
(assert (= z #b1111111111111111111111111111111111111111101100011010100010110111))
;; z should be -5134153

(assert (= y z))
(check-sat)
(exit)
