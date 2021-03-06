(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b1 #b10010101 #b10100000001011110010001)))
;; x should be Float32(0xCAD01791 [Rational(-13637521, 2), -6818760.500000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x80800000)))
;; y should be Float32(0x80800000 [Rational(-1, 85070591730234615865843651857942052864), -0.000000])

(declare-const z Float32)
(assert (= z (fp #b0 #b00101110 #b00001111111101001101111)))
;; z should be Float32(0x1707FA6F [Rational(8911471, 20282409603651670423947251286016), 0.000000])

(declare-const result Float32)
(assert (= result (fp.fma RTP x y z)))
(assert (not (= result (fp #b0 #b00101110 #b00001111111101001110001))))
(check-sat)
(exit)
