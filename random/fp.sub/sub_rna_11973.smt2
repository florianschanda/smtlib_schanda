(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b0 #b00000100 #b10110000101100001001011)))
;; x should be Float32(0x0258584B [Rational(14178379, 89202980794122492566142873090593446023921664), 0.000000])

(declare-const y Float32)
(assert (= y (fp #b1 #b10110111 #b11000101001110101111011)))
;; y should be Float32(0xDBE29D7B [Rational(-127572992686292992), -127572992686292992.000000])

(declare-const result Float32)
(assert (= result (fp.sub RNA x y)))
(assert (not (= result ((_ to_fp 8 24) #x5BE29D7B))))
(check-sat)
(exit)
