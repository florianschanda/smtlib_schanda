(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b1 #b00001001 #b01100100000000001010111)))
;; x should be Float32(0x84B20057 [Rational(-11665495, 2787593149816327892691964784081045188247552), -0.000000])

(declare-const y Float32)
(assert (= y (fp #b1 #b10010101 #b10011100110111010101101)))
;; y should be Float32(0xCACE6EAD [Rational(-13528749, 2), -6764374.500000])

(declare-const result Float32)
(assert (= result (fp.rem x y)))
(assert (= result ((_ to_fp 8 24) #x84B20057)))
(check-sat)
(exit)
