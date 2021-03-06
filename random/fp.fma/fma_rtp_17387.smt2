(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xCAD68AC3)))
;; x should be Float32(0xCAD68AC3 [Rational(-14060227, 2), -7030113.500000])

(declare-const y Float32)
(assert (= y (fp #b0 #b11111110 #b11111111111111111111111)))
;; y should be Float32(0x7F7FFFFF [Rational(340282346638528859811704183484516925440), 340282346638528859811704183484516925440.000000])

(declare-const z Float32)
(assert (= z (fp #b0 #b10010101 #b00011011010111001010111)))
;; z should be Float32(0x4A8DAE57 [Rational(9285207, 2), 4642603.500000])

(declare-const result Float32)
(assert (= result (fp.fma RTP x y z)))
(assert (= result ((_ to_fp 8 24) #xFF7FFFFF)))
(check-sat)
(exit)
