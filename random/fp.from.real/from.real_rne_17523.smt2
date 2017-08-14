(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; above
(declare-const x Float32)
(assert (= x (fp #b1 #b10010100 #b01111100101010001010110)))
;; x should be Float32(0xCA3E5456 [Rational(-6236715, 2), -3118357.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNE (- (/ 2185524399.0 1024.0)))))
;; w should be Float32(0xCA024475 [Rational(-8537205, 4), -2134301.250000])

(assert (not (distinct x w)))
(check-sat)
(exit)
