(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; below
(declare-const x Float32)
(assert (= x (fp #b0 #b00000000 #b00101000101010000001000)))
;; x should be Float32(0x00145408 [Rational(166529, 89202980794122492566142873090593446023921664), 0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNE (/ 12855568373.0 7136238463529799405291429847247475681913733120000.0))))
;; w should be Float32(0x00139DB5 [Rational(1285557, 713623846352979940529142984724747568191373312), 0.000000])

(assert (distinct x w))
(check-sat)
(exit)
