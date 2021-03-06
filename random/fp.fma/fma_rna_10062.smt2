(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b0 #b00000000 #b01011110000011101110011)))
;; x should be Float32(0x002F0773 [Rational(3082099, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const y Float32)
(assert (= y (fp #b1 #b10110000 #b01110101110110110110011)))
;; y should be Float32(0xD83AEDB3 [Rational(-822120292548608), -822120292548608.000000])

(declare-const z Float32)
(assert (= z (fp #b1 #b10010101 #b11000011011000100011101)))
;; z should be Float32(0xCAE1B11D [Rational(-14790941, 2), -7395470.500000])

(declare-const result Float32)
(assert (= result (fp.fma RNA x y z)))
(assert (not (= result ((_ to_fp 8 24) #xCAE1B11D))))
(check-sat)
(exit)
