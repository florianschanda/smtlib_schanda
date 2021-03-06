(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b1 #b00000000 #b00000000000000000000000)))
;; x should be Float32(-zero)

(declare-const y Float32)
(assert (= y (fp #b0 #b10010011 #b10100000001011000001100)))
;; y should be Float32(0x49D0160C [Rational(3409283, 2), 1704641.500000])

(declare-const result Float32)
(assert (= result (fp.div RTZ x y)))
(assert (not (= result (fp #b1 #b00000000 #b00000000000000000000000))))
(check-sat)
(exit)
