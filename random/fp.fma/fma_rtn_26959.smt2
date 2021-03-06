(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x8027C6A8)))
;; x should be Float32(0x8027C6A8 [Rational(-325845, 89202980794122492566142873090593446023921664), -0.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #xFF7FFFFF)))
;; y should be Float32(0xFF7FFFFF [Rational(-340282346638528859811704183484516925440), -340282346638528859811704183484516925440.000000])

(declare-const z Float32)
(assert (= z (fp #b1 #b10110100 #b10010010100111011001110)))
;; z should be Float32(0xDA494ECE [Rational(-14165779247267840), -14165779247267840.000000])

(declare-const result Float32)
(assert (= result (fp.fma RTN x y z)))
(assert (not (= result (fp #b1 #b10110100 #b10010010100111011001110))))
(check-sat)
(exit)
