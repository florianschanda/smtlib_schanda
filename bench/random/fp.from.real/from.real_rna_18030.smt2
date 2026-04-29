(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; below
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xCA2494C6)))
;; x should be Float32(0xCA2494C6 [Rational(-5392995, 2), -2696497.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNA (- (/ 11044854453.0 4096.0)))))
;; w should be Float32(0xCA2494C7 [Rational(-10785991, 4), -2696497.750000])

(assert (not (distinct x w)))
(check-sat)
(exit)
