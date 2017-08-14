(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; inside interval
(declare-const x Float32)
(assert (= x (fp #b1 #b10010101 #b10001100101001100111001)))
;; x should be Float32(0xCAC65339 [Rational(-12997433, 2), -6498716.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTZ (- (/ 324935833.0 50.0)))))
;; w should be Float32(0xCAC65339 [Rational(-12997433, 2), -6498716.500000])

(assert (not (= x w)))
(check-sat)
(exit)
