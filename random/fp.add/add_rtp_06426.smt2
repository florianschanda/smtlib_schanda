(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b1 #b10111101 #b01011100110000111001011)))
;; x should be Float32(0xDEAE61CB [Rational(-6282773818100416512), -6282773818100416512.000000])

(declare-const y Float32)
(assert (= y (fp #b0 #b10010101 #b01101000010101000110011)))
;; y should be Float32(0x4AB42A33 [Rational(11807283, 2), 5903641.500000])

(declare-const result Float32)
(assert (= result (fp.add RTP x y)))
(assert (= result ((_ to_fp 8 24) #xDEAE61CA)))
(check-sat)
(exit)
