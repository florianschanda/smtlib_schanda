(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x005853C4)))
;; x should be Float32(0x005853C4 [Rational(1447153, 178405961588244985132285746181186892047843328), 0.000000])

(declare-const y Float32)
(assert (= y (fp #b1 #b11011010 #b10101101001010100110110)))
;; y should be Float32(0xED569536 [Rational(-4150636066042531213435994112), -4150636066042531213435994112.000000])

(declare-const z Float32)
(assert (= z (fp #b0 #b10010101 #b00001000011101110010111)))
;; z should be Float32(0x4A843B97 [Rational(8666007, 2), 4333003.500000])

(declare-const result Float32)
(assert (= result (fp.fma RNA x y z)))
(assert (not (= result ((_ to_fp 8 24) #x4A843B97))))
(check-sat)
(exit)
