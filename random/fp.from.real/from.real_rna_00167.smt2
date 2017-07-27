(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; above
(declare-const x Float32)
(assert (= x (fp #b1 #b10001010 #b00000110001100000000000)))
;; x should be Float32(0xC5031800 [Rational(-4195, 2), -2097.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNA (- (/ 123481543917.0 81920000.0)))))
;; w should be Float32(0xC4BC6AFA [Rational(-6174077, 4096), -1507.343018])

(assert (not (distinct x w)))
(check-sat)
(exit)
