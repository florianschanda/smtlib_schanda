(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x8004357C)))
;; x should be Float32(0x8004357C [Rational(-68959, 178405961588244985132285746181186892047843328), -0.000000])

(declare-const y Float32)
(assert (= y (fp #b0 #b00000000 #b00110111110100001101111)))
;; y should be Float32(0x001BE86F [Rational(1828975, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const result Float32)
(assert (= result (fp.div RTZ x y)))
(assert (= result (fp #b1 #b01111100 #b00110100110111100011111)))
(check-sat)
(exit)
