(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b1 #b10010101 #b00001000100010100101011)))
;; x should be Float32(0xCA84452B [Rational(-8668459, 2), -4334229.500000])

(declare-const y Float32)
(assert (= y (fp #b1 #b00000001 #b00000000000000000000000)))
;; y should be Float32(0x80800000 [Rational(-1, 85070591730234615865843651857942052864), -0.000000])

(declare-const z Float32)
(assert (= z (fp #b1 #b11111111 #b00000000000000000000000)))
;; z should be Float32(-oo)

(declare-const result Float32)
(assert (= result (fp.fma RTP x y z)))
(assert (not (= result (_ -oo 8 24))))
(check-sat)
(exit)
