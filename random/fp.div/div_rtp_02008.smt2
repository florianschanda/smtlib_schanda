(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010100 #b10000011011001111111010)))
;; x should be Float32(0x4A41B3FA [Rational(6347261, 2), 3173630.500000])

(declare-const y Float32)
(assert (= y (fp #b0 #b00000000 #b10000111001100111011101)))
;; y should be Float32(0x004399DD [Rational(4430301, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const result Float32)
(assert (= result (fp.div RTP x y)))
(assert (= result (_ +oo 8 24)))
(check-sat)
(exit)
