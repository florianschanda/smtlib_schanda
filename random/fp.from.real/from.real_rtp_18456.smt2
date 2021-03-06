(set-info :smt-lib-version 2.6)
(set-logic QF_FPLRA)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; hard: non-literal interval check
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x00797E27)))
;; x should be Float32(0x00797E27 [Rational(7962151, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const r Real)
(assert (and (> r (/ 3981075.0 356811923176489970264571492362373784095686656.0)) (<= r (/ 7962151.0 713623846352979940529142984724747568191373312.0))))
(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTP r)))
(assert (= x w))
(check-sat)
(exit)
