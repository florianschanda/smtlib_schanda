(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; above
(declare-const x Float32)
(assert (= x (fp #b1 #b00000000 #b01010111011111001100100)))
;; x should be Float32(0x802BBE64 [Rational(-716697, 178405961588244985132285746181186892047843328), -0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTN (- (/ 8220038521.0 3568119231764899702645714923623737840956866560000.0)))))
;; w should be Float32(0x801915E8 [Rational(-205501, 89202980794122492566142873090593446023921664), -0.000000])

(assert (not (distinct x w)))
(check-sat)
(exit)
