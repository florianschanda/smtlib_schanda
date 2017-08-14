(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; inside interval
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x00799A18)))
;; x should be Float32(0x00799A18 [Rational(996163, 89202980794122492566142873090593446023921664), 0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTN (/ 8886071157959099998065433009696207670406436337204939.0 795717178255658627448611597034913344160729841275756347904742363029055195220053400852889600.0))))
;; w should be Float32(0x00799A18 [Rational(996163, 89202980794122492566142873090593446023921664), 0.000000])

(assert (= x w))
(check-sat)
(exit)
