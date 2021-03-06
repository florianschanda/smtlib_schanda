(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b1 #b00000000 #b11111111111111111111111)))
;; x should be Float32(0x807FFFFF [Rational(-8388607, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const y Float32)
(assert (= y (fp #b0 #b10010101 #b10010101011011111000101)))
;; y should be Float32(0x4ACAB7C5 [Rational(13285317, 2), 6642658.500000])

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #x80055644)))
;; z should be Float32(0x80055644 [Rational(-87441, 178405961588244985132285746181186892047843328), -0.000000])

(declare-const result Float32)
(assert (= result (fp.fma RTP x y z)))
(assert (= result (fp #b1 #b00010111 #b10010101011011111000011)))
(check-sat)
(exit)
