(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.ubv RTP -halfpoint)
;; This benchmark relies on partial functions.
(declare-const x Float32)
(assert (= x (fp #b1 #b10010010 #b10111100110000111001000)))
;; x should be Float32(0xC95E61C8 [Rational(-1821753, 2), -910876.500000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_ubv 64) RTP x)))
;; y should be unspecified

(declare-const z (_ BitVec 64))
(assert (= z #b1101001100101001110100111100001000111101010011111110001100000100))
;; z should be 15215925647253693188

(assert (= y z))
(check-sat)
(exit)
