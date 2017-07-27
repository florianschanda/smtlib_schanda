(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; above
(declare-const x Float32)
(assert (= x (fp #b1 #b10010100 #b11110101100110010101110)))
;; x should be Float32(0xCA7ACCAE [Rational(-8218199, 2), -4109099.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTN (- (/ 619911741.0 256.0)))))
;; w should be Float32(0xCA13CC69 [Rational(-9686121, 4), -2421530.250000])

(assert (not (distinct x w)))
(check-sat)
(exit)
