(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x007FFFFF)))
;; x should be Float32(0x007FFFFF [Rational(8388607, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const y Float32)
(assert (= y (fp #b0 #b10010101 #b10011011111100111000001)))
;; y should be Float32(0x4ACDF9C1 [Rational(13498817, 2), 6749408.500000])

(declare-const result Float32)
(assert (= result (fp.mul RTP x y)))
(assert (= result ((_ to_fp 8 24) #x0BCDF9C0)))
(check-sat)
(exit)
