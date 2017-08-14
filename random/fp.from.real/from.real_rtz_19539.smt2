(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; above
(declare-const x Float32)
(assert (= x (fp #b1 #b01101110 #b10010001110000110001000)))
;; x should be Float32(0xB748E188 [Rational(-1645617, 137438953472), -0.000012])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTZ (/ 4743027163.0 687194767360000.0))))
;; w should be Float32(0x36E797D6 [Rational(7588843, 1099511627776), 0.000007])

(assert (not (distinct x w)))
(check-sat)
(exit)
