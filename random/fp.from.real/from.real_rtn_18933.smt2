(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; above
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x00799A18)))
;; x should be Float32(0x00799A18 [Rational(996163, 89202980794122492566142873090593446023921664), 0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTN (/ 39846525253.0 3568119231764899702645714923623737840956866560000.0))))
;; w should be Float32(0x00799A19 [Rational(7969305, 713623846352979940529142984724747568191373312), 0.000000])

(assert (distinct x w))
(check-sat)
(exit)
