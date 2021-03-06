(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b1 #b10010011 #b11000100111011110000100)))
;; x should be Float32(0xC9E27784 [Rational(-3710433, 2), -1855216.500000])

(declare-const y Float32)
(assert (= y (fp #b1 #b11111111 #b00000000000000000000000)))
;; y should be Float32(-oo)

(declare-const z Float32)
(assert (= z (fp #b0 #b00000000 #b10011100010100100110100)))
;; z should be Float32(0x004E2934 [Rational(1280589, 178405961588244985132285746181186892047843328), 0.000000])

(declare-const result Float32)
(assert (= result (fp.fma RNE x y z)))
(assert (not (= result (fp #b0 #b11111111 #b00000000000000000000000))))
(check-sat)
(exit)
