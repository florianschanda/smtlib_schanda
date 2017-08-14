(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RNA +normal)
;; This benchmark relies on partial functions.
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x7C19C245)))
;; x should be Float32(0x7C19C245 [Rational(3193446694248602141866822638610939904), 3193446694248602141866822638610939904.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RNA x)))
;; y should be unspecified

(declare-const z (_ BitVec 64))
(assert (= z #b1100011111111011100000111100011101011111100000110101111000100101))
;; z should be -4036487748683342299

(assert (not (= y z)))
(check-sat)
(exit)
