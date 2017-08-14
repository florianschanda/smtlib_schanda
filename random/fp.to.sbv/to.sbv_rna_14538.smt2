(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RNA -halfpoint)
(declare-const x Float32)
(assert (= x (fp #b1 #b10010101 #b00010101100010010011000)))
;; x should be Float32(0xCA8AC498 [Rational(-4547148), -4547148.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RNA x)))
;; y should be -4547148

(declare-const z (_ BitVec 64))
(assert (= z #b1111111111111111111111111111111111111111101110101001110110110100))
;; z should be -4547148

(assert (= y z))
(check-sat)
(exit)
