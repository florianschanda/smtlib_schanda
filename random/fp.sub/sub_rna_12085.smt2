(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b1 #b10010101 #b10101000111101000011011)))
;; x should be Float32(0xCAD47A1B [Rational(-13924891, 2), -6962445.500000])

(declare-const y Float32)
(assert (= y (fp #b1 #b11111111 #b10101011011111010000101)))
;; y should be Float32(NaN)

(declare-const result Float32)
(assert (= result (fp.sub RNA x y)))
(assert (not (= result (fp #b1 #b11111111 #b11111111111111111111111))))
(check-sat)
(exit)
