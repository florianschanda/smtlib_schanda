(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.ubv RNE +halfpoint)
;; This benchmark relies on partial functions.
(declare-const x Float32)
(assert (= x (fp #b0 #b10010101 #b01100111111001100101100)))
;; x should be Float32(0x4AB3F32C [Rational(5896598), 5896598.000000])

(declare-const y (_ BitVec 8))
(assert (= y ((_ fp.to_ubv 8) RNE x)))
;; y should be unspecified

(declare-const z (_ BitVec 8))
(assert (= z #b10000101))
;; z should be 133

(assert (not (= y z)))
(check-sat)
(exit)
