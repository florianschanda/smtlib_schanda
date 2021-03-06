(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b1 #b11111000 #b10101000010011000100010)))
;; x should be Float32(0xFC542622 [Rational(-4406161437327390822848213591351361536), -4406161437327390822848213591351361536.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x7F7FFFFF)))
;; y should be Float32(0x7F7FFFFF [Rational(340282346638528859811704183484516925440), 340282346638528859811704183484516925440.000000])

(declare-const z Float32)
(assert (= z (fp #b0 #b00000000 #b11100000110111101100001)))
;; z should be Float32(0x00706F61 [Rational(7368545, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const result Float32)
(assert (= result (fp.fma RNA x y z)))
(assert (= result (_ -oo 8 24)))
(check-sat)
(exit)
