(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x930C4868)))
;; x should be Float32(0x930C4868 [Rational(-1149197, 649037107316853453566312041152512), -0.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #xCA25125E)))
;; y should be Float32(0xCA25125E [Rational(-5409071, 2), -2704535.500000])

(declare-const result Float32)
(assert (= result (fp.div RNA x y)))
(assert (not (= result (fp #b0 #b00010000 #b10110011000111001101101))))
(check-sat)
(exit)
