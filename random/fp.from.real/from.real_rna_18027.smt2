(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; inside interval
(declare-const x Float32)
(assert (= x (fp #b1 #b10010100 #b01001001001010011000110)))
;; x should be Float32(0xCA2494C6 [Rational(-5392995, 2), -2696497.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNA (- (/ 4314396151.0 1600.0)))))
;; w should be Float32(0xCA2494C6 [Rational(-5392995, 2), -2696497.500000])

(assert (not (= x w)))
(check-sat)
(exit)
