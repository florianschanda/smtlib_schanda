(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; above
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x802E3C3B)))
;; x should be Float32(0x802E3C3B [Rational(-3030075, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNA (- (/ 3924526129.0 2854495385411919762116571938898990272765493248000.0)))))
;; w should be Float32(0x800EF88C [Rational(-245283, 178405961588244985132285746181186892047843328), -0.000000])

(assert (distinct x w))
(check-sat)
(exit)
