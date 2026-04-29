(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; above
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x00797E27)))
;; x should be Float32(0x00797E27 [Rational(7962151, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTP (/ 79621513761.0 7136238463529799405291429847247475681913733120000.0))))
;; w should be Float32(0x00797E28 [Rational(995269, 89202980794122492566142873090593446023921664), 0.000000])

(assert (distinct x w))
(check-sat)
(exit)
