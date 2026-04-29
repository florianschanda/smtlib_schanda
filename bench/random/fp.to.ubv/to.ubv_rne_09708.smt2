(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.ubv RNE +halfpoint)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010101 #b10100001110110101001100)))
;; x should be Float32(0x4AD0ED4C [Rational(6846118), 6846118.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_ubv 64) RNE x)))
;; y should be 6846118

(declare-const z (_ BitVec 64))
(assert (= z #b0000000000000000000000000000000000000000011010000111011010100110))
;; z should be 6846118

(assert (= y z))
(check-sat)
(exit)
