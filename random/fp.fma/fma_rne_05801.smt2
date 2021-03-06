(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x8BFDCC80)))
;; x should be Float32(0x8BFDCC80 [Rational(-129945, 1329227995784915872903807060280344576), -0.000000])

(declare-const y Float32)
(assert (= y (fp #b0 #b10010100 #b01110010100010111001010)))
;; y should be Float32(0x4A3945CA [Rational(6071013, 2), 3035506.500000])

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #x00800000)))
;; z should be Float32(0x00800000 [Rational(1, 85070591730234615865843651857942052864), 0.000000])

(declare-const result Float32)
(assert (= result (fp.fma RNE x y z)))
(assert (not (= result (fp #b1 #b00101101 #b01101111010110111111001))))
(check-sat)
(exit)
