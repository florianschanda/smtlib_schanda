(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b0 #b00000000 #b01011000100110110101000)))
;; x should be Float32(0x002C4DA8 [Rational(362933, 89202980794122492566142873090593446023921664), 0.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x0014E791)))
;; y should be Float32(0x0014E791 [Rational(1370001, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const result Float32)
(assert (= result (fp.mul RTP x y)))
(assert (= result (fp #b0 #b00000000 #b00000000000000000000001)))
(check-sat)
(exit)
