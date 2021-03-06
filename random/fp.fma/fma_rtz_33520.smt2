(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b1 #b11110101 #b01011001001110100110011)))
;; x should be Float32(0xFAAC9D33 [Rational(-448131719306025945922511178909614080), -448131719306025945922511178909614080.000000])

(declare-const y Float32)
(assert (= y (fp #b1 #b01101101 #b10101011101001111101100)))
;; y should be Float32(0xB6D5D3EC [Rational(-3503355, 549755813888), -0.000006])

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #x7F7FFFFF)))
;; z should be Float32(0x7F7FFFFF [Rational(340282346638528859811704183484516925440), 340282346638528859811704183484516925440.000000])

(declare-const result Float32)
(assert (= result (fp.fma RTZ x y z)))
(assert (= result (fp #b0 #b11111110 #b11111111111111111111111)))
(check-sat)
(exit)
