(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; inside interval
(declare-const x Float32)
(assert (= x (fp #b1 #b10101101 #b10101111010000000110001)))
;; x should be Float32(0xD6D7A031 [Rational(-118541508411392), -118541508411392.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTP (- (/ 2963537769075001.0 25.0)))))
;; w should be Float32(0xD6D7A031 [Rational(-118541508411392), -118541508411392.000000])

(assert (not (= x w)))
(check-sat)
(exit)
