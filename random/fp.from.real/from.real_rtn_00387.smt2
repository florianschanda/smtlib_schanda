(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; inside interval
(declare-const x Float32)
(assert (= x (fp #b1 #b10000010 #b10111001110010001011110)))
;; x should be Float32(0xC15CE45E [Rational(-7238191, 524288), -13.805754])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTN (- (/ 189744833216127.0 13743895347200.0)))))
;; w should be Float32(0xC15CE45E [Rational(-7238191, 524288), -13.805754])

(assert (not (= x w)))
(check-sat)
(exit)
