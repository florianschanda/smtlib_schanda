(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b0 #b00000000 #b00110101010100001111011)))
;; x should be Float32(0x001AA87B [Rational(1747067, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const y Float32)
(assert (= y (fp #b1 #b10010101 #b01110010110101011010011)))
;; y should be Float32(0xCAB96AD3 [Rational(-12151507, 2), -6075753.500000])

(declare-const result Float32)
(assert (= result (fp.mul RTN x y)))
(assert (= result (fp #b1 #b00010101 #b00110100111011100000101)))
(check-sat)
(exit)
