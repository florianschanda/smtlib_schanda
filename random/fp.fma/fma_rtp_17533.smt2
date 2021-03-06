(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b1 #b10001011 #b10001101101010000000000)))
;; x should be Float32(0xC5C6D400 [Rational(-12725, 2), -6362.500000])

(declare-const y Float32)
(assert (= y (fp #b1 #b10010001 #b11000011101111110010000)))
;; y should be Float32(0xC8E1DF90 [Rational(-925177, 2), -462588.500000])

(declare-const z Float32)
(assert (= z (fp #b1 #b00000001 #b00000000000000000000000)))
;; z should be Float32(0x80800000 [Rational(-1, 85070591730234615865843651857942052864), -0.000000])

(declare-const result Float32)
(assert (= result (fp.fma RTP x y z)))
(assert (= result ((_ to_fp 8 24) #x4F2F6DF7)))
(check-sat)
(exit)
