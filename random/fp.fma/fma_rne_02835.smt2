(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010100 #b01001101001011100110110)))
;; x should be Float32(0x4A269736 [Rational(5458843, 2), 2729421.500000])

(declare-const y Float32)
(assert (= y (fp #b1 #b10010110 #b01100010010110111111101)))
;; y should be Float32(0xCB312DFD [Rational(-11611645), -11611645.000000])

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #x7F7FFFFF)))
;; z should be Float32(0x7F7FFFFF [Rational(340282346638528859811704183484516925440), 340282346638528859811704183484516925440.000000])

(declare-const result Float32)
(assert (= result (fp.fma RNE x y z)))
(assert (= result (fp #b0 #b11111110 #b11111111111111111111111)))
(check-sat)
(exit)
