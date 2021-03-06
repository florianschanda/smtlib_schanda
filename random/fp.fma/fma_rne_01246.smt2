(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b0 #b11111110 #b11111111111111111111111)))
;; x should be Float32(0x7F7FFFFF [Rational(340282346638528859811704183484516925440), 340282346638528859811704183484516925440.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x006C43E6)))
;; y should be Float32(0x006C43E6 [Rational(3547635, 356811923176489970264571492362373784095686656), 0.000000])

(declare-const z Float32)
(assert (= z (fp #b1 #b10010101 #b11101000001011110011101)))
;; z should be Float32(0xCAF4179D [Rational(-15996829, 2), -7998414.500000])

(declare-const result Float32)
(assert (= result (fp.fma RNE x y z)))
(assert (= result (fp #b1 #b10010101 #b11101000001011110010110)))
(check-sat)
(exit)
