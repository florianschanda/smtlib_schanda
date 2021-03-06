(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b1 #b11011011 #b00010101001101010110001)))
;; x should be Float32(0xED8A9AB1 [Rational(-5361992723804217538015920128), -5361992723804217538015920128.000000])

(declare-const y Float32)
(assert (= y (fp #b0 #b10001011 #b11000111000110000000000)))
;; y should be Float32(0x45E38C00 [Rational(14563, 2), 7281.500000])

(declare-const result Float32)
(assert (= result (fp.add RTP x y)))
(assert (= result (fp #b1 #b11011011 #b00010101001101010110000)))
(check-sat)
(exit)
