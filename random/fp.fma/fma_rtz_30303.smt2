(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b0 #b01000110 #b11010111100100110011001)))
;; x should be Float32(0x236BC999 [Rational(15452569, 1208925819614629174706176), 0.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x800527C9)))
;; y should be Float32(0x800527C9 [Rational(-337865, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const z Float32)
(assert (= z (fp #b1 #b11001101 #b11100001010100001011100)))
;; z should be Float32(0xE6F0A85C [Rational(-568236819095874772664320), -568236819095874772664320.000000])

(declare-const result Float32)
(assert (= result (fp.fma RTZ x y z)))
(assert (= result (fp #b1 #b11001101 #b11100001010100001011100)))
(check-sat)
(exit)
