(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RNA -halfpoint)
(declare-const x Float32)
(assert (= x (fp #b1 #b10010101 #b00010101100010010010110)))
;; x should be Float32(0xCA8AC496 [Rational(-4547147), -4547147.000000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_sbv 32) RNA x)))
;; y should be -4547147

(declare-const z (_ BitVec 32))
(assert (= z #b11111111101110101001110110110101))
;; z should be -4547147

(assert (= y z))
(check-sat)
(exit)
