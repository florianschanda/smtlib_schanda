(set-info :smt-lib-version 2.6)
(set-logic QF_FPLRA)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; hard: non-literal interval check
(declare-const x Float32)
(assert (= x (fp #b0 #b00000000 #b00101110110101001001111)))
;; x should be Float32(0x00176A4F [Rational(1534543, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const r Real)
(assert (and (> r (/ 3069085.0 1427247692705959881058285969449495136382746624.0)) (< r (/ 3069087.0 1427247692705959881058285969449495136382746624.0))))
(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNE r)))
(assert (not (= x w)))
(check-sat)
(exit)
