(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; above
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x003EDAEF)))
;; x should be Float32(0x003EDAEF [Rational(4119279, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTN (/ 32181939.0 5575186299632655785383929568162090376495104000.0))))
;; w should be Float32(0x003EDAF8 [Rational(514911, 89202980794122492566142873090593446023921664), 0.000000])

(assert (not (distinct x w)))
(check-sat)
(exit)
