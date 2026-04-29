(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; below
(declare-const x Float32)
(assert (= x (fp #b1 #b01110101 #b10110101000011010010111)))
;; x should be Float32(0xBADA8697 [Rational(-14321303, 8589934592), -0.001667])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNE (- (/ 28642607049.0 17179869184000.0)))))
;; w should be Float32(0xBADA8698 [Rational(-1790163, 1073741824), -0.001667])

(assert (not (distinct x w)))
(check-sat)
(exit)
