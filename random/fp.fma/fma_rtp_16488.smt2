(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x1B0BEF5A)))
;; x should be Float32(0x1B0BEF5A [Rational(4585389, 39614081257132168796771975168), 0.000000])

(declare-const y Float32)
(assert (= y (fp #b1 #b11111110 #b11111111111111111111111)))
;; y should be Float32(0xFF7FFFFF [Rational(-340282346638528859811704183484516925440), -340282346638528859811704183484516925440.000000])

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #x80800000)))
;; z should be Float32(0x80800000 [Rational(-1, 85070591730234615865843651857942052864), -0.000000])

(declare-const result Float32)
(assert (= result (fp.fma RTP x y z)))
(assert (not (= result ((_ to_fp 8 24) #xDB0BEF59))))
(check-sat)
(exit)
