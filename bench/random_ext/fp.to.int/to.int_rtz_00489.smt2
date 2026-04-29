(set-info :smt-lib-version 2.6)
(set-logic QF_FPLIA)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.int RTZ -halfpoint)
(declare-const x Float32)
(assert (= x (fp #b1 #b10010101 #b00100101111101100110001)))
;; x should be Float32(0xCA92FB31 [Rational(-9632561, 2), -4816280.500000])

(declare-const y Int)
(assert (= y (fp.to_int x)))
;; y should be -4816280

(declare-const z Int)
(assert (= z (- 4816280)))
(assert (not (= y z)))
