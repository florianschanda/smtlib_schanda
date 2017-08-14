(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; above
(declare-const x Float32)
(assert (= x (_ +zero 8 24)))
;; x should be Float32(+zero)

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTN (/ 453.0 285449538541191976211657193889899027276549324800.0))))
;; w should be Float32(0x00000001 [Rational(1, 713623846352979940529142984724747568191373312), 0.000000])

(assert (distinct x w))
(check-sat)
(exit)
