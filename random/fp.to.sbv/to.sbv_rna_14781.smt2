(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RNA nan)
;; This benchmark relies on partial functions.
(declare-const x Float32)
(assert (= x (_ NaN 8 24)))
;; x should be Float32(NaN)

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RNA x)))
;; y should be unspecified

(declare-const z (_ BitVec 64))
(assert (= z #b0100000000110101110111101010001000001110100111010100011000101101))
;; z should be 4626848979804309037

(assert (not (= y z)))
(check-sat)
(exit)
