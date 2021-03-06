(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x43A1EF1F)))
;; x should be Float32(0x43A1EF1F [Rational(10612511, 32768), 323.868134])

(declare-const y Float32)
(assert (= y (fp #b0 #b10010011 #b00111000110010111110100)))
;; y should be Float32(0x499C65F4 [Rational(2562429, 2), 1281214.500000])

(declare-const result Float32)
(assert (= result (fp.add RNE x y)))
(assert (not (= result (fp #b0 #b10010011 #b00111000111000000010011))))
(check-sat)
(exit)
