(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.ubv RTZ -halfpoint)
;; This benchmark relies on partial functions.
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xCA24F55E)))
;; x should be Float32(0xCA24F55E [Rational(-5405359, 2), -2702679.500000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_ubv 64) RTZ x)))
;; y should be unspecified

(declare-const z (_ BitVec 64))
(assert (= z #b1011010001100110000001100001101000011000101011010011000011101010))
;; z should be 12999084083604435178

(assert (= y z))
(check-sat)
(exit)
