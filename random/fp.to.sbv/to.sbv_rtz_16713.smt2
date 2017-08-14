(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RTZ -halfpoint)
(declare-const x Float32)
(assert (= x (fp #b1 #b10010101 #b01100010001100001111110)))
;; x should be Float32(0xCAB1187E [Rational(-5803071), -5803071.000000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_sbv 32) RTZ x)))
;; y should be -5803071

(declare-const z (_ BitVec 32))
(assert (= z #b11111111101001110111001111000001))
;; z should be -5803071

(assert (= y z))
(check-sat)
(exit)
