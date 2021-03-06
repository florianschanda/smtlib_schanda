(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010101 #b00111101010011111000101)))
;; x should be Float32(0x4A9EA7C5 [Rational(10397637, 2), 5198818.500000])

(declare-const y Float32)
(assert (= y (fp #b1 #b10010101 #b00000101010001100110111)))
;; y should be Float32(0xCA82A337 [Rational(-8561463, 2), -4280731.500000])

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #x8053A0FA)))
;; z should be Float32(0x8053A0FA [Rational(-2740349, 356811923176489970264571492362373784095686656), -0.000000])

(declare-const result Float32)
(assert (= result (fp.fma RTP x y z)))
(assert (= result (fp #b1 #b10101011 #b01000011110110010110001)))
(check-sat)
(exit)
