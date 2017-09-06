(set-info :smt-lib-version 2.6)
(set-logic QF_FPLIA)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.int RNE -halfpoint)
(declare-const x Float32)
(assert (= x (fp #b1 #b10010101 #b00110111000111111011001)))
;; x should be Float32(0xCA9B8FD9 [Rational(-10194905, 2), -5097452.500000])

(declare-const y Int)
(assert (= y (fp.to_int x)))
;; y should be -5097452

(declare-const z Int)
(assert (= z (- 5097452)))
(assert (not (= y z)))
