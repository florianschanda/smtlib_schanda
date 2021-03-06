(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b1 #b00110100 #b00100011001101110010110)))
;; x should be Float32(0x9A119B96 [Rational(-4771275, 158456325028528675187087900672), -0.000000])

(declare-const y Float32)
(assert (= y (fp #b1 #b01100001 #b11001111101000000110011)))
;; y should be Float32(0xB0E7D033 [Rational(-15192115, 9007199254740992), -0.000000])

(declare-const result Float32)
(assert (= result (fp.mul RTZ x y)))
(assert (= result ((_ to_fp 8 24) #x0B83D9CF)))
(check-sat)
(exit)
