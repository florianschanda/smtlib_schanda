(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b1 #b10010001 #b10000000000001000100001)))
;; x should be Float32(0xC8C00221 [Rational(-12583457, 32), -393233.031250])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x006A4576)))
;; y should be Float32(0x006A4576 [Rational(3482299, 356811923176489970264571492362373784095686656), 0.000000])

(declare-const result Float32)
(assert (= result (fp.rem x y)))
(assert (= result (fp #b0 #b00000000 #b00000000010011101100110)))
(check-sat)
(exit)
