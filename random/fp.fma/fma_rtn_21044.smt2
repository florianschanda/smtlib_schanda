(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010101 #b11011001101111010000011)))
;; x should be Float32(0x4AECDE83 [Rational(15523459, 2), 7761729.500000])

(declare-const y Float32)
(assert (= y (fp #b0 #b00000001 #b00000000000000000000000)))
;; y should be Float32(0x00800000 [Rational(1, 85070591730234615865843651857942052864), 0.000000])

(declare-const z Float32)
(assert (= z (fp #b1 #b10010100 #b00001100001100001101010)))
;; z should be Float32(0xCA06186A [Rational(-4394037, 2), -2197018.500000])

(declare-const result Float32)
(assert (= result (fp.fma RTN x y z)))
(assert (not (= result ((_ to_fp 8 24) #xCA06186A))))
(check-sat)
(exit)
