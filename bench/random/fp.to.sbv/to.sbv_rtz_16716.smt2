(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RTZ -halfpoint)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xCAB1187E)))
;; x should be Float32(0xCAB1187E [Rational(-5803071), -5803071.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RTZ x)))
;; y should be -5803071

(declare-const z (_ BitVec 64))
(assert (= z #b1111111111111111111111111111111111111111101001110111001111000001))
;; z should be -5803071

(assert (= y z))
(check-sat)
(exit)
