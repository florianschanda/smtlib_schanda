(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b0 #b00000000 #b00111001100001011100101)))
;; x should be Float32(0x001CC2E5 [Rational(1884901, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const y Float32)
(assert (= y (fp #b1 #b00101110 #b11011110010011111110010)))
;; y should be Float32(0x976F27F2 [Rational(-7836665, 10141204801825835211973625643008), -0.000000])

(declare-const result Float32)
(assert (= result (fp.add RTP x y)))
(assert (= result (fp #b1 #b00101110 #b11011110010011111110001)))
(check-sat)
(exit)
