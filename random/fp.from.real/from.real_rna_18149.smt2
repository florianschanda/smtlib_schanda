(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; inside interval
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xAAA88E79)))
;; x should be Float32(0xAAA88E79 [Rational(-11046521, 36893488147419103232), -0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNA (- (/ 10188617632091605261133238699.0 34028236692093846346337460743176821145600.0)))))
;; w should be Float32(0xAAA88E79 [Rational(-11046521, 36893488147419103232), -0.000000])

(assert (not (= x w)))
(check-sat)
(exit)
