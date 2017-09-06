(set-info :smt-lib-version 2.6)
(set-logic QF_FPLIA)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.int RTZ -halfpoint)
(declare-const x Float32)
(assert (= x (fp #b1 #b10010101 #b11100011011001110101101)))
;; x should be Float32(0xCAF1B3AD [Rational(-15840173, 2), -7920086.500000])

(declare-const y Int)
(assert (= y (fp.to_int x)))
;; y should be -7920086

(declare-const z Int)
(assert (= z (- 7920086)))
(assert (not (= y z)))
