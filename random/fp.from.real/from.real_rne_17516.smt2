(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; below
(declare-const x Float32)
(assert (= x (fp #b1 #b10010100 #b10101010101100111100110)))
;; x should be Float32(0xCA5559E6 [Rational(-6991091, 2), -3495545.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNE (- (/ 14317755021.0 4096.0)))))
;; w should be Float32(0xCA5559E7 [Rational(-13982183, 4), -3495545.750000])

(assert (not (distinct x w)))
(check-sat)
(exit)
