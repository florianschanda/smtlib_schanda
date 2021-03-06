(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010101 #b00111010000010011000111)))
;; x should be Float32(0x4A9D04C7 [Rational(10290375, 2), 5145187.500000])

(declare-const y Float32)
(assert (= y (fp #b0 #b11100001 #b00010110001100101001111)))
;; y should be Float32(0x708B194F [Rational(344392100620875815872672825344), 344392100620875815872672825344.000000])

(declare-const z Float32)
(assert (= z (fp #b1 #b10010011 #b00101010011101001110100)))
;; z should be Float32(0xC9953A74 [Rational(-2444957, 2), -1222478.500000])

(declare-const result Float32)
(assert (= result (fp.fma RTZ x y z)))
(assert (not (= result ((_ to_fp 8 24) #x7BAAA23B))))
(check-sat)
(exit)
