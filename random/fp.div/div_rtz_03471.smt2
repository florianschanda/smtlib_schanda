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
(assert (= y (fp #b0 #b01101101 #b11100101010001001000100)))
;; y should be Float32(0x36F2A244 [Rational(3975313, 549755813888), 0.000007])

(declare-const result Float32)
(assert (= result (fp.div RTZ x y)))
(assert (= result (fp #b0 #b00000000 #b00000100001110000110100)))
(check-sat)
(exit)
