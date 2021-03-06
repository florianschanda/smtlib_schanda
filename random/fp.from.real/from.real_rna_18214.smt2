(set-info :smt-lib-version 2.6)
(set-logic QF_FPLRA)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; hard: non-literal interval check
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x802E3C3B)))
;; x should be Float32(0x802E3C3B [Rational(-3030075, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const r Real)
(assert (and (> r (- (/ 6060151.0 1427247692705959881058285969449495136382746624.0))) (<= r (- (/ 6060149.0 1427247692705959881058285969449495136382746624.0)))))
(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNA r)))
(assert (= x w))
(check-sat)
(exit)
