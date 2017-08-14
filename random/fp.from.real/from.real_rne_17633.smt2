(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; above
(declare-const x Float32)
(assert (= x (fp #b1 #b01110101 #b10110101000011010010111)))
;; x should be Float32(0xBADA8697 [Rational(-14321303, 8589934592), -0.001667])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNE (/ 91849788053.0 171798691840000.0))))
;; w should be Float32(0x3A0C26D3 [Rational(9184979, 17179869184), 0.000535])

(assert (not (distinct x w)))
(check-sat)
(exit)
