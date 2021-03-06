(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b0 #b00000001 #b00000000000000000000000)))
;; x should be Float32(0x00800000 [Rational(1, 85070591730234615865843651857942052864), 0.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x4AE3D76B)))
;; y should be Float32(0x4AE3D76B [Rational(14931819, 2), 7465909.500000])

(declare-const z Float32)
(assert (= z (fp #b1 #b00001000 #b01101011011101001000000)))
;; z should be Float32(0x8435BA40 [Rational(-186089, 87112285931760246646623899502532662132736), -0.000000])

(declare-const result Float32)
(assert (= result (fp.fma RNE x y z)))
(assert (= result ((_ to_fp 8 24) #x0BE3D600)))
(check-sat)
(exit)
