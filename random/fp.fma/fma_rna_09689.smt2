(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x50129AC6)))
;; x should be Float32(0x50129AC6 [Rational(9838467072), 9838467072.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x80000001)))
;; y should be Float32(0x80000001 [Rational(-1, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #x802F6AC4)))
;; z should be Float32(0x802F6AC4 [Rational(-776881, 178405961588244985132285746181186892047843328), -0.000000])

(declare-const result Float32)
(assert (= result (fp.fma RNA x y z)))
(assert (= result (fp #b1 #b00001011 #b00100101010011010100001)))
(check-sat)
(exit)
