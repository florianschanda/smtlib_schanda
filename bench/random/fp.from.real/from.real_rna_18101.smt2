(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; inside interval
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xA6A910F9)))
;; x should be Float32(0xA6A910F9 [Rational(-11079929, 9444732965739290427392), -0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNA (- (/ 5232348523826562055024821565049.0 4460149039706124628307143654529672301196083200.0)))))
;; w should be Float32(0xA6A910F9 [Rational(-11079929, 9444732965739290427392), -0.000000])

(assert (not (= x w)))
(check-sat)
(exit)
