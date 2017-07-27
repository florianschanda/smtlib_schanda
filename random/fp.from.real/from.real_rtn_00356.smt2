(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; below
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xCA7ACCAE)))
;; x should be Float32(0xCA7ACCAE [Rational(-8218199, 2), -4109099.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTN (- (/ 16436399.0 4.0)))))
;; w should be Float32(0xCA7ACCAF [Rational(-16436399, 4), -4109099.750000])

(assert (not (distinct x w)))
(check-sat)
(exit)
