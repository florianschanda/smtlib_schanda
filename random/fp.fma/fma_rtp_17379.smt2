(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xCA7C5BCE)))
;; x should be Float32(0xCA7C5BCE [Rational(-8269287, 2), -4134643.500000])

(declare-const y Float32)
(assert (= y (fp #b0 #b11111111 #b00000000000000000000000)))
;; y should be Float32(+oo)

(declare-const z Float32)
(assert (= z (fp #b1 #b11111110 #b11111111111111111111111)))
;; z should be Float32(0xFF7FFFFF [Rational(-340282346638528859811704183484516925440), -340282346638528859811704183484516925440.000000])

(declare-const result Float32)
(assert (= result (fp.fma RTP x y z)))
(assert (not (= result (fp #b1 #b11111111 #b00000000000000000000000))))
(check-sat)
(exit)
