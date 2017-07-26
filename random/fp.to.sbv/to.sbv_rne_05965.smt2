(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RNE nan)
;; This benchmark relies on partial functions.
(declare-const x Float32)
(assert (= x (_ NaN 8 24)))
;; x should be Float32(NaN)

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RNE x)))
;; y should be unspecified

(declare-const z (_ BitVec 64))
(assert (= z #b1110101000010000000110110011111101100100011111011010110100001110))
;; z should be -1580733510124196594

(assert (not (= y z)))
(check-sat)
(exit)
