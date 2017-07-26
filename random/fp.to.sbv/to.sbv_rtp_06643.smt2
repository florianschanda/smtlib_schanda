(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RTP nan)
;; This benchmark relies on partial functions.
(declare-const x Float32)
(assert (= x (fp #b1 #b11111111 #b11101000110100011000010)))
;; x should be Float32(NaN)

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RTP x)))
;; y should be unspecified

(declare-const z (_ BitVec 64))
(assert (= z #b1001111011011101010000110010010001001110110100001001110010111100))
;; z should be -6999364422643704644

(assert (not (= y z)))
(check-sat)
(exit)
