(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RNE +ubv_8_bound)
;; This benchmark relies on partial functions.
(declare-const x Float32)
(assert (= x (fp #b0 #b10000110 #b11111101000000000000000)))
;; x should be Float32(0x437E8000 [Rational(509, 2), 254.500000])

(declare-const y (_ BitVec 8))
(assert (= y ((_ fp.to_sbv 8) RNE x)))
;; y should be unspecified

(declare-const z (_ BitVec 8))
(assert (= z #b00110110))
;; z should be 54

(assert (= y z))
(check-sat)
(exit)
