(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010011 #b01101101000101101000100)))
;; x should be Float32(0x49B68B44 [Rational(2990801, 2), 1495400.500000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x4A66577E)))
;; y should be Float32(0x4A66577E [Rational(7547839, 2), 3773919.500000])

(declare-const result Float32)
(assert (= result (fp.add RTN x y)))
(assert (not (= result (fp #b0 #b10010101 #b01000001100111010010000))))
(check-sat)
(exit)
