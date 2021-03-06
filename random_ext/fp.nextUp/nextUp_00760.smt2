(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010010 #b10111011111111110011000)))
;; x should be Float32(0x495DFF98 [Rational(1818611, 2), 909305.500000])

(declare-const result Float32)
(assert (= result (fp.nextUp x)))
(assert (not (= result (fp #b0 #b10010010 #b10111011111111110011001))))
(check-sat)
(exit)
