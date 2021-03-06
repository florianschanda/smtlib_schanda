(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x802602F8)))
;; x should be Float32(0x802602F8 [Rational(-311391, 89202980794122492566142873090593446023921664), -0.000000])

(declare-const y Float32)
(assert (= y (fp #b0 #b10011000 #b01101010100001101000100)))
;; y should be Float32(0x4C354344 [Rational(47516944), 47516944.000000])

(declare-const result Float32)
(assert (= result (fp.add RNE x y)))
(assert (not (= result (fp #b0 #b10011000 #b01101010100001101000100))))
(check-sat)
(exit)
