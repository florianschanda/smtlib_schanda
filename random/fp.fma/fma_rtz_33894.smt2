(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b1 #b00000000 #b10011101111010110001011)))
;; x should be Float32(0x804EF58B [Rational(-5174667, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const y Float32)
(assert (= y (fp #b1 #b10100000 #b11111110110111001100010)))
;; y should be Float32(0xD07F6E62 [Rational(-17141696512), -17141696512.000000])

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #xA6F67812)))
;; z should be Float32(0xA6F67812 [Rational(-8076297, 4722366482869645213696), -0.000000])

(declare-const result Float32)
(assert (= result (fp.fma RTZ x y z)))
(assert (= result (fp #b1 #b01001101 #b11101100111100000010001)))
(check-sat)
(exit)
