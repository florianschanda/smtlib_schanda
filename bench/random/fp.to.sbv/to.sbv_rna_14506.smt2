(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.sbv RNA -halfpoint)
(declare-const x Float32)
(assert (= x (fp #b1 #b10010101 #b00101001100011011001101)))
;; x should be Float32(0xCA94C6CD [Rational(-9750221, 2), -4875110.500000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_sbv 32) RNA x)))
;; y should be -4875111

(declare-const z (_ BitVec 32))
(assert (= z #b11111111101101011001110010011001))
;; z should be -4875111

(assert (not (= y z)))
(check-sat)
(exit)
