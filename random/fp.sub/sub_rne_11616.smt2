(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b1 #b01000011 #b01011101100100110101000)))
;; x should be Float32(0xA1AEC9A8 [Rational(-1431861, 1208925819614629174706176), -0.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x6EFC7E9B)))
;; y should be Float32(0x6EFC7E9B [Rational(39071639547527622694832963584), 39071639547527622694832963584.000000])

(declare-const result Float32)
(assert (= result (fp.sub RNE x y)))
(assert (= result ((_ to_fp 8 24) #xEEFC7E9B)))
(check-sat)
(exit)
