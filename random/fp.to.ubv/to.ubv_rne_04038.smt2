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
(assert (= x (fp #b0 #b10010101 #b00110011001010111110100)))
;; x should be Float32(0x4A9995F4 [Rational(5032698), 5032698.000000])

(declare-const y (_ BitVec 8))
(assert (= y ((_ fp.to_ubv 8) RNE x)))
;; y should be unspecified

(declare-const z (_ BitVec 8))
(assert (= y z))
(check-sat)
(exit)
