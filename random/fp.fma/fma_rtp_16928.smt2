(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b0 #b00000000 #b00000010110011010010001)))
;; x should be Float32(0x00016691 [Rational(91793, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const y Float32)
(assert (= y (fp #b1 #b11001000 #b00110011101101110110011)))
;; y should be Float32(0xE419DBB3 [Rational(-11352731361570795290624), -11352731361570795290624.000000])

(declare-const z Float32)
(assert (= z (fp #b1 #b00000000 #b00010001010111010010011)))
;; z should be Float32(0x8008AE93 [Rational(-568979, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const result Float32)
(assert (= result (fp.fma RTP x y z)))
(assert (not (= result (fp #b1 #b01000011 #b10101111000000001100001))))
(check-sat)
(exit)
