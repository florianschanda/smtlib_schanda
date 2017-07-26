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
(assert (= x ((_ to_fp 8 24) #xEC6B28F1)))
;; x should be Float32(0xEC6B28F1 [Rational(-1137163631736297623465754624), -1137163631736297623465754624.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_ubv 64) RTN x)))
;; y should be unspecified

(declare-const z (_ BitVec 64))
(assert (= z #b0110101111111100101011000111111110011101000100001011101001010110))
;; z should be 7781283920285317718

(assert (= y z))
(check-sat)
(exit)
