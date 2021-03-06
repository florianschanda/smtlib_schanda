(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010010 #b00110000100110101111000)))
;; x should be Float32(0x49184D78 [Rational(1247663, 2), 623831.500000])

(declare-const y Float32)
(assert (= y (fp #b1 #b11000001 #b11101111010000111001110)))
;; y should be Float32(0xE0F7A1CE [Rational(-142750157584111501312), -142750157584111501312.000000])

(declare-const z Float32)
(assert (= z (fp #b0 #b11111111 #b00000000000000000000000)))
;; z should be Float32(+oo)

(declare-const result Float32)
(assert (= result (fp.fma RNE x y z)))
(assert (= result ((_ to_fp 8 24) #x7F800000)))
(check-sat)
(exit)
