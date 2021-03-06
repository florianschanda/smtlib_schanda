(set-info :smt-lib-version 2.6)
(set-logic QF_FPLRA)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x803FD53C)))
;; x should be Float32(0x803FD53C [Rational(-1045839, 178405961588244985132285746181186892047843328), -0.000000])

(declare-const y Real)
(assert (= y (fp.to_real x)))
;; y should be Rational(-1045839, 178405961588244985132285746181186892047843328)

(assert (= y (- (/ 1045839.0 178405961588244985132285746181186892047843328.0))))
(check-sat)
(exit)
