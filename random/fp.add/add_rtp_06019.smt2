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
(assert (= y (fp #b0 #b10010100 #b00010111010111101001110)))
;; y should be Float32(0x4A0BAF4E [Rational(4577191, 2), 2288595.500000])

(declare-const result Float32)
(assert (= result (fp.add RTP x y)))
(assert (= result ((_ to_fp 8 24) #x4A0BAF4F)))
(check-sat)
(exit)
