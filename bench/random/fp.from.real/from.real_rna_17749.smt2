(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; inside interval
(declare-const x Float32)
(assert (= x (fp #b0 #b10010100 #b01100001001100110101010)))
;; x should be Float32(0x4A3099AA [Rational(5786837, 2), 2893418.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNA (/ 4629469727.0 1600.0))))
;; w should be Float32(0x4A3099AA [Rational(5786837, 2), 2893418.500000])

(assert (not (= x w)))
(check-sat)
(exit)
