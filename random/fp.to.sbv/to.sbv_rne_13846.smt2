(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RNE -normal)
;; This benchmark relies on partial functions.
(declare-const x Float32)
(assert (= x (fp #b1 #b11100011 #b10010110000110101001010)))
;; x should be Float32(0xF1CB0D4A [Rational(-2010928719504248687492721541120), -2010928719504248687492721541120.000000])

(declare-const y (_ BitVec 8))
(assert (= y ((_ fp.to_sbv 8) RNE x)))
;; y should be unspecified

(declare-const z (_ BitVec 8))
(assert (not (= y z)))
(check-sat)
(exit)
