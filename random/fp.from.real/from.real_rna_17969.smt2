(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; on high bound (exclusive)
(declare-const x Float32)
(assert (= x (fp #b0 #b00000000 #b01001001111100011101000)))
;; x should be Float32(0x0024F8E8 [Rational(302877, 89202980794122492566142873090593446023921664), 0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNA (/ 4846033.0 1427247692705959881058285969449495136382746624.0))))
;; w should be Float32(0x0024F8E9 [Rational(2423017, 713623846352979940529142984724747568191373312), 0.000000])

(assert (not (distinct x w)))
(check-sat)
(exit)
