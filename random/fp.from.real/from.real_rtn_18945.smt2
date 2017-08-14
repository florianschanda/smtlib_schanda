(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; above
(declare-const x Float32)
(assert (= x (fp #b1 #b10001000 #b01001001110000000000000)))
;; x should be Float32(0xC424E000 [Rational(-1319, 2), -659.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTN (- (/ 25411604817.0 40960000.0)))))
;; w should be Float32(0xC41B19A2 [Rational(-5082321, 8192), -620.400513])

(assert (not (distinct x w)))
(check-sat)
(exit)
