(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RNE -halfpoint)
(declare-const x Float32)
(assert (= x (fp #b1 #b10010101 #b00100110011001000010010)))
;; x should be Float32(0xCA933212 [Rational(-4823305), -4823305.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RNE x)))
;; y should be -4823305

(declare-const z (_ BitVec 64))
(assert (= z #b1111111111111111111111111111111111111111101101100110011011110111))
;; z should be -4823305

(assert (= y z))
(check-sat)
(exit)
