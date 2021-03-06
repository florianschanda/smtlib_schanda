(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RTZ -halfpoint)
(declare-const x Float32)
(assert (= x (fp #b1 #b10010101 #b01100010001100001111101)))
;; x should be Float32(0xCAB1187D [Rational(-11606141, 2), -5803070.500000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_sbv 32) RTZ x)))
;; y should be -5803070

(declare-const z (_ BitVec 32))
(assert (= z #b11111111101001110111001111000010))
;; z should be -5803070

(assert (= y z))
(check-sat)
(exit)
