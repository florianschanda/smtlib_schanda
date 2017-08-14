(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; below
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x0001AEC4)))
;; x should be Float32(0x0001AEC4 [Rational(27569, 178405961588244985132285746181186892047843328), 0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTN (/ 31489819.0 892029807941224925661428730905934460239216640000.0))))
;; w should be Float32(0x00006267 [Rational(25191, 713623846352979940529142984724747568191373312), 0.000000])

(assert (not (distinct x w)))
(check-sat)
(exit)
