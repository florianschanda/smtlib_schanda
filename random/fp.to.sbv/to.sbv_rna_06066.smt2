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
(assert (= x (fp #b0 #b10100100 #b10100110011111011101010)))
;; x should be Float32(0x52533EEA [Rational(226823405568), 226823405568.000000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_sbv 32) RNA x)))
;; y should be unspecified

(declare-const z (_ BitVec 32))
(assert (= z #b10111100011100010111011111011010))
;; z should be -1133414438

(assert (= y z))
(check-sat)
(exit)
