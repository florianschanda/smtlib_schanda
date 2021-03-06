(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b0 #b00000000 #b10000110000111011000100)))
;; x should be Float32(0x00430EC4 [Rational(1098673, 178405961588244985132285746181186892047843328), 0.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x80428651)))
;; y should be Float32(0x80428651 [Rational(-4359761, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const result Float32)
(assert (= result (fp.mul RNE x y)))
(assert (= result (fp #b1 #b00000000 #b00000000000000000000000)))
(check-sat)
(exit)
