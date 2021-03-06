(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RTP +ubv_8_bound)
;; This benchmark relies on partial functions.
(declare-const x Float32)
(assert (= x (fp #b0 #b10000110 #b11111110000000000000000)))
;; x should be Float32(0x437F0000 [Rational(255), 255.000000])

(declare-const y (_ BitVec 8))
(assert (= y ((_ fp.to_sbv 8) RTP x)))
;; y should be unspecified

(declare-const z (_ BitVec 8))
(assert (= z #b00100010))
;; z should be 34

(assert (= y z))
(check-sat)
(exit)
