(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x00800000)))
;; x should be Float32(0x00800000 [Rational(1, 85070591730234615865843651857942052864), 0.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x4AA988AD)))
;; y should be Float32(0x4AA988AD [Rational(11110573, 2), 5555286.500000])

(declare-const result Float32)
(assert (= result (fp.sub RTN x y)))
(assert (not (= result (fp #b1 #b10010101 #b01010011000100010101101))))
(check-sat)
(exit)
