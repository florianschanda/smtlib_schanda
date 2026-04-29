(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; above
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x00201A4F)))
;; x should be Float32(0x00201A4F [Rational(2103887, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTZ (/ 32873319.0 11150372599265311570767859136324180752990208000.0))))
;; w should be Float32(0x00201A54 [Rational(525973, 178405961588244985132285746181186892047843328), 0.000000])

(assert (not (distinct x w)))
(check-sat)
(exit)
