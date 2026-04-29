(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; inside interval
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xBE574D7F)))
;; x should be Float32(0xBE574D7F [Rational(-14110079, 67108864), -0.210257])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTN (- (/ 2367278402221553.0 11258999068426240.0)))))
;; w should be Float32(0xBE574D7F [Rational(-14110079, 67108864), -0.210257])

(assert (not (= x w)))
(check-sat)
(exit)
