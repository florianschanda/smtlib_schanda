(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b0 #b00000000 #b00000000000000000000001)))
;; x should be Float32(0x00000001 [Rational(1, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const y Float32)
(assert (= y (fp #b1 #b10010101 #b11011000010000001101001)))
;; y should be Float32(0xCAEC2069 [Rational(-15474793, 2), -7737396.500000])

(declare-const result Float32)
(assert (= result (fp.add RTP x y)))
(assert (= result ((_ to_fp 8 24) #xCAEC2068)))
(check-sat)
(exit)
