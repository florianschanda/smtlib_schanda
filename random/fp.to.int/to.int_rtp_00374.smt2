(set-info :smt-lib-version 2.6)
(set-logic QF_FPLIA)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.int RTP -halfpoint)
(declare-const x Float32)
(assert (= x (fp #b1 #b10010101 #b10011011101011000010011)))
;; x should be Float32(0xCACDD613 [Rational(-13489683, 2), -6744841.500000])

(declare-const y Int)
(assert (= y (fp.to_int x)))
;; y should be -6744841

(declare-const z Int)
(assert (= z (- 6744841)))
(assert (not (= y z)))
