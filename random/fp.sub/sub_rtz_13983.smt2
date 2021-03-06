(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b1 #b10010000 #b10010010011101001100000)))
;; x should be Float32(0xC8493A60 [Rational(-412115, 2), -206057.500000])

(declare-const y Float32)
(assert (= y (fp #b0 #b10010101 #b01110010101010001001001)))
;; y should be Float32(0x4AB95449 [Rational(12145737, 2), 6072868.500000])

(declare-const result Float32)
(assert (= result (fp.sub RTZ x y)))
(assert (= result ((_ to_fp 8 24) #xCABF9E1C)))
(check-sat)
(exit)
