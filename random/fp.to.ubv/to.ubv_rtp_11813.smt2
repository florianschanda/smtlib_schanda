(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.ubv RTP nan)
;; This benchmark relies on partial functions.
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xFFC66E93)))
;; x should be Float32(NaN)

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_ubv 32) RTP x)))
;; y should be unspecified

(declare-const z (_ BitVec 32))
(assert (= z #b11100111010110010110001110000011))
;; z should be 3881395075

(assert (not (= y z)))
(check-sat)
(exit)
