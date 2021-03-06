(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x80000000)))
;; x should be Float32(-zero)

(declare-const y Float32)
(assert (= y (fp #b0 #b00000000 #b00010011000100111101100)))
;; y should be Float32(0x000989EC [Rational(156283, 178405961588244985132285746181186892047843328), 0.000000])

(declare-const z Float32)
(assert (= z (fp #b1 #b00000000 #b00010001000010010000101)))
;; z should be Float32(0x80088485 [Rational(-558213, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const result Float32)
(assert (= result (fp.fma RTZ x y z)))
(assert (= result ((_ to_fp 8 24) #x80088485)))
(check-sat)
(exit)
