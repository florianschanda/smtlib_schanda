(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; inside interval
(declare-const x Float32)
(assert (= x (fp #b1 #b01100111 #b01101100011110001010101)))
;; x should be Float32(0xB3B63C55 [Rational(-11942997, 140737488355328), -0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNA (- (/ 84041373187057072170679.0 990352031428304219919299379200.0)))))
;; w should be Float32(0xB3B63C55 [Rational(-11942997, 140737488355328), -0.000000])

(assert (not (= x w)))
(check-sat)
(exit)
