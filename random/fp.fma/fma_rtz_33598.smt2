(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b1 #b00000000 #b11011011000010110001010)))
;; x should be Float32(0x806D858A [Rational(-3588805, 356811923176489970264571492362373784095686656), -0.000000])

(declare-const y Float32)
(assert (= y (fp #b0 #b10010101 #b01001011110100100011111)))
;; y should be Float32(0x4AA5E91F [Rational(10873119, 2), 5436559.500000])

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #x00800000)))
;; z should be Float32(0x00800000 [Rational(1, 85070591730234615865843651857942052864), 0.000000])

(declare-const result Float32)
(assert (= result (fp.fma RTZ x y z)))
(assert (= result (fp #b1 #b00010111 #b00011011111010110011001)))
(check-sat)
(exit)
