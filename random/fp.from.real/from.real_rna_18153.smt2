(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; above
(declare-const x Float32)
(assert (= x (fp #b1 #b01010101 #b01010001000111001111001)))
;; x should be Float32(0xAAA88E79 [Rational(-11046521, 36893488147419103232), -0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNA (- (/ 23842594641.0 368934881474191032320000.0)))))
;; w should be Float32(0xA991860E [Rational(-4768519, 73786976294838206464), -0.000000])

(assert (not (distinct x w)))
(check-sat)
(exit)
