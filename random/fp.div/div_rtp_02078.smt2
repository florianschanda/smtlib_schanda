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
(assert (= y ((_ to_fp 8 24) #xCA80CFFF)))
;; y should be Float32(0xCA80CFFF [Rational(-8441855, 2), -4220927.500000])

(declare-const result Float32)
(assert (= result (fp.div RTP x y)))
(assert (= result (fp #b1 #b11101000 #b11111100110001010100000)))
(check-sat)
(exit)
