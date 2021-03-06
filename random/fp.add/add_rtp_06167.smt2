(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b0 #b00000000 #b11110110100000001111011)))
;; x should be Float32(0x007B407B [Rational(8077435, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const y Float32)
(assert (= y (fp #b0 #b00000000 #b10001000111001010110011)))
;; y should be Float32(0x004472B3 [Rational(4485811, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const result Float32)
(assert (= result (fp.add RTP x y)))
(assert (not (= result (fp #b0 #b00000001 #b01111111011001100101110))))
(check-sat)
(exit)
