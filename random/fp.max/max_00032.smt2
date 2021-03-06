(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010101 #b00111101001101000000011)))
;; x should be Float32(0x4A9E9A03 [Rational(10394115, 2), 5197057.500000])

(declare-const y Float32)
(assert (= y (fp #b0 #b00000000 #b00000000000000000000000)))
;; y should be Float32(+zero)

(declare-const result Float32)
(assert (= result (fp.max x y)))
(assert (not (= result (fp #b0 #b10010101 #b00111101001101000000011))))
(check-sat)
(exit)
