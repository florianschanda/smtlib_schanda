(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; inside interval
(declare-const x Float32)
(assert (= x (fp #b1 #b10001111 #b00000101101011001000000)))
;; x should be Float32(0xC782D640 [Rational(-133977, 2), -66988.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTN (- (/ 42872637.0 640.0)))))
;; w should be Float32(0xC782D640 [Rational(-133977, 2), -66988.500000])

(assert (not (= x w)))
(check-sat)
(exit)
