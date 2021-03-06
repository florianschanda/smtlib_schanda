(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x4812DC60)))
;; x should be Float32(0x4812DC60 [Rational(300771, 2), 150385.500000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x8076FDC3)))
;; y should be Float32(0x8076FDC3 [Rational(-7798211, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const result Float32)
(assert (= result (fp.div RTZ x y)))
(assert (= result (fp #b1 #b11111110 #b11111111111111111111111)))
(check-sat)
(exit)
