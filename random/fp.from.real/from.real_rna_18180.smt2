(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; on low bound (exclusive)
(declare-const x Float32)
(assert (= x (fp #b1 #b00000000 #b01110011110011011000111)))
;; x should be Float32(0x8039E6C7 [Rational(-3794631, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNA (- (/ 7589263.0 1427247692705959881058285969449495136382746624.0)))))
;; w should be Float32(0x8039E6C8 [Rational(-474329, 89202980794122492566142873090593446023921664), -0.000000])

(assert (distinct x w))
(check-sat)
(exit)
