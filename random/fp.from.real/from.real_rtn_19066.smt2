(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; below
(declare-const x Float32)
(assert (= x (fp #b1 #b01111100 #b10101110100110101111111)))
;; x should be Float32(0xBE574D7F [Rational(-14110079, 67108864), -0.210257])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTN (- (/ 70550396897.0 335544320000.0)))))
;; w should be Float32(0xBE574D80 [Rational(-110235, 524288), -0.210257])

(assert (not (distinct x w)))
(check-sat)
(exit)
