(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x4A036F16)))
;; x should be Float32(0x4A036F16 [Rational(4306827, 2), 2153413.500000])

(declare-const y Float32)
(assert (= y (fp #b0 #b00111011 #b01100100010011010001000)))
;; y should be Float32(0x1DB22688 [Rational(1459409, 309485009821345068724781056), 0.000000])

(declare-const result Float32)
(assert (= result (fp.add RNA x y)))
(assert (= result (fp #b0 #b10010100 #b00000110110111100010110)))
(check-sat)
(exit)
