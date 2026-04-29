(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; inside interval
(declare-const x Float32)
(assert (= x (fp #b1 #b10010100 #b10101010101100111100110)))
;; x should be Float32(0xCA5559E6 [Rational(-6991091, 2), -3495545.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNE (- (/ 1398218229.0 400.0)))))
;; w should be Float32(0xCA5559E6 [Rational(-6991091, 2), -3495545.500000])

(assert (not (= x w)))
(check-sat)
(exit)
