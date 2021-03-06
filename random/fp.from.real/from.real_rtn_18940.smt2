(set-info :smt-lib-version 2.6)
(set-logic QF_FPLRA)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; hard: non-literal interval check
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x004816D7)))
;; x should be Float32(0x004816D7 [Rational(4724439, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const r Real)
(assert (and (>= r (/ 4724439.0 713623846352979940529142984724747568191373312.0)) (< r (/ 590555.0 89202980794122492566142873090593446023921664.0))))
(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTN r)))
(assert (not (= x w)))
(check-sat)
(exit)
