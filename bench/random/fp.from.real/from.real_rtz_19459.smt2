(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; above
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xCAC65339)))
;; x should be Float32(0xCAC65339 [Rational(-12997433, 2), -6498716.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTZ (- (/ 14616347.0 8.0)))))
;; w should be Float32(0xC9DF071B [Rational(-14616347, 8), -1827043.375000])

(assert (not (distinct x w)))
(check-sat)
(exit)
