(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; below
(declare-const x Float32)
(assert (= x (fp #b1 #b10010100 #b00011010011110010010010)))
;; x should be Float32(0xCA0D3C92 [Rational(-4628041, 2), -2314020.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTN (- (/ 37024331.0 16.0)))))
;; w should be Float32(0xCA0D3C93 [Rational(-9256083, 4), -2314020.750000])

(assert (not (distinct x w)))
(check-sat)
(exit)
