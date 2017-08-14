(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; inside interval
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x80720C61)))
;; x should be Float32(0x80720C61 [Rational(-7474273, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTZ (- (/ 13334548922311685959025463289131966893608477271871421.0 1273147485209053803917778555255861350657167746041210156647587780846488312352085441364623360.0)))))
;; w should be Float32(0x80720C61 [Rational(-7474273, 713623846352979940529142984724747568191373312), -0.000000])

(assert (= x w))
(check-sat)
(exit)
