(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; above
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x8014B4B9)))
;; x should be Float32(0x8014B4B9 [Rational(-1356985, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTN (/ 42444873.0 27875931498163278926919647840810451882475520000.0))))
;; w should be Float32(0x0010947C [Rational(271647, 178405961588244985132285746181186892047843328), 0.000000])

(assert (not (distinct x w)))
(check-sat)
(exit)
