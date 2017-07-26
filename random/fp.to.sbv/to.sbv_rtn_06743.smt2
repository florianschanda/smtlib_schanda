(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RTN +normal)
;; This benchmark relies on partial functions.
(declare-const x Float32)
(assert (= x (fp #b0 #b11011111 #b01000011001100111001101)))
;; x should be Float32(0x6FA199CD [Rational(100026040633533165211377205248), 100026040633533165211377205248.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RTN x)))
;; y should be unspecified

(declare-const z (_ BitVec 64))
(assert (= z #b0111111010000000001101001110110111111010100110100110000000101010))
;; z should be 9115343842514198570

(assert (= y z))
(check-sat)
(exit)
