(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.ubv RTP -sbv_8_bound)
;; This benchmark relies on partial functions.
(declare-const x Float32)
(assert (= x (fp #b1 #b10000110 #b00000001000000000000000)))
;; x should be Float32(0xC3008000 [Rational(-257, 2), -128.500000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_ubv 32) RTP x)))
;; y should be unspecified

(declare-const z (_ BitVec 32))
(assert (= z #b00000001010011101010010111011101))
;; z should be 21931485

(assert (not (= y z)))
(check-sat)
(exit)
