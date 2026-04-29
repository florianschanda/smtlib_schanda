(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; above
(declare-const x Float32)
(assert (= x (fp #b1 #b01011010 #b10011001000100000110101)))
;; x should be Float32(0xAD4C8835 [Rational(-13404213, 1152921504606846976), -0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNE (/ 24785727891.0 2882303761517117440000.0))))
;; w should be Float32(0x2D1747B3 [Rational(9914291, 1152921504606846976), 0.000000])

(assert (not (distinct x w)))
(check-sat)
(exit)
