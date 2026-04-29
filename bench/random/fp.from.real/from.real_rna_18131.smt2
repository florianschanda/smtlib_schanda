(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; inside interval
(declare-const x Float32)
(assert (= x (fp #b1 #b11010111 #b00011001110111011110111)))
;; x should be Float32(0xEB8CEEF7 [Rational(-340756188629514532557946880), -340756188629514532557946880.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNA (- (/ 8518904701562306314572449733.0 25.0)))))
;; w should be Float32(0xEB8CEEF7 [Rational(-340756188629514532557946880), -340756188629514532557946880.000000])

(assert (not (= x w)))
(check-sat)
(exit)
