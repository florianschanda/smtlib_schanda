(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RTP -inf)
;; This benchmark relies on partial functions.
(declare-const x Float32)
(assert (= x (_ -oo 8 24)))
;; x should be Float32(-oo)

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RTP x)))
;; y should be unspecified

(declare-const z (_ BitVec 64))
(assert (= z #b1110100011010010010101001000100011000010000100111110010110111010))
;; z should be -1670179565452663366

(assert (not (= y z)))
(check-sat)
(exit)
