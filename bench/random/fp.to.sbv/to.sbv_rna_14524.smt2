(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RNA -halfpoint)
(declare-const x Float32)
(assert (= x (fp #b1 #b10010100 #b11000100001001110001010)))
;; x should be Float32(0xCA62138A [Rational(-7408069, 2), -3704034.500000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_sbv 32) RNA x)))
;; y should be -3704035

(declare-const z (_ BitVec 32))
(assert (= z #b11111111110001110111101100011101))
;; z should be -3704035

(assert (= y z))
(check-sat)
(exit)
