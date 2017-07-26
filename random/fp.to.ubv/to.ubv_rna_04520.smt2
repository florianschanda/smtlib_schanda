(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.ubv RNA -halfpoint)
;; This benchmark relies on partial functions.
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xCAC2EA97)))
;; x should be Float32(0xCAC2EA97 [Rational(-12774039, 2), -6387019.500000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_ubv 64) RNA x)))
;; y should be unspecified

(declare-const z (_ BitVec 64))
(assert (= z #b1101100011101110000000110100011110011010111100001010000100111101))
;; z should be 15631434962726592829

(assert (= y z))
(check-sat)
(exit)
