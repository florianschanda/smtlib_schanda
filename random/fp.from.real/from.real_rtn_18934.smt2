(set-info :smt-lib-version 2.6)
(set-logic QF_FPLRA)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; hard: non-literal interval check
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x00799A18)))
;; x should be Float32(0x00799A18 [Rational(996163, 89202980794122492566142873090593446023921664), 0.000000])

(declare-const r Real)
(assert (and (>= r (/ 996163.0 89202980794122492566142873090593446023921664.0)) (< r (/ 7969305.0 713623846352979940529142984724747568191373312.0))))
(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTN r)))
(assert (= x w))
(check-sat)
(exit)
