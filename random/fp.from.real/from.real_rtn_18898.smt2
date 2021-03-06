(set-info :smt-lib-version 2.6)
(set-logic QF_FPLRA)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; hard: non-literal interval check
(declare-const x Float32)
(assert (= x (fp #b0 #b00000000 #b00100001010100110001100)))
;; x should be Float32(0x0010A98C [Rational(272995, 178405961588244985132285746181186892047843328), 0.000000])

(declare-const r Real)
(assert (and (>= r (/ 272995.0 178405961588244985132285746181186892047843328.0)) (< r (/ 1091981.0 713623846352979940529142984724747568191373312.0))))
(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTN r)))
(assert (not (= x w)))
(check-sat)
(exit)
