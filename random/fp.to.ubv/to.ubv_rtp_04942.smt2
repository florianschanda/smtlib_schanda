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

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_ubv 64) RTP x)))
;; y should be unspecified

(declare-const z (_ BitVec 64))
(assert (= z #b0100101100110111011101001101101101010111010001101111010110010100))
;; z should be 5419929161974609300

(assert (= y z))
(check-sat)
(exit)
