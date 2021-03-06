(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x49C600D4)))
;; x should be Float32(0x49C600D4 [Rational(3244085, 2), 1622042.500000])

(declare-const y Float32)
(assert (= y (fp #b0 #b00000000 #b10110010011000100111000)))
;; y should be Float32(0x00593138 [Rational(730663, 89202980794122492566142873090593446023921664), 0.000000])

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #x00000000)))
;; z should be Float32(+zero)

(declare-const result Float32)
(assert (= result (fp.fma RTZ x y z)))
(assert (not (= result (fp #b0 #b00010101 #b00010011111100010110110))))
(check-sat)
(exit)
