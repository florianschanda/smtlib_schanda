(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; below
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xCACCF40B)))
;; x should be Float32(0xCACCF40B [Rational(-13431819, 2), -6715909.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNE (- (/ 1719272915.0 256.0)))))
;; w should be Float32(0xCACCF40C [Rational(-6715910), -6715910.000000])

(assert (not (distinct x w)))
(check-sat)
(exit)
