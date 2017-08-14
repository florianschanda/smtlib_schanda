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
(assert (= x (fp #b1 #b10001011 #b01100001011010111011011)))
;; x should be Float32(0xC5B0B5DB [Rational(-11580891, 2048), -5654.731934])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_ubv 64) RTN x)))
;; y should be unspecified

(declare-const z (_ BitVec 64))
(assert (= z #b1000000011011111110111111101110110010000001110101010001100110101))
;; z should be 9286387099361780533

(assert (not (= y z)))
(check-sat)
(exit)
