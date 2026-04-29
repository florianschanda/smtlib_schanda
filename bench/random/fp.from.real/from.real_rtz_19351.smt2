(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; above
(declare-const x Float32)
(assert (= x (fp #b0 #b10000100 #b11011000010101000010100)))
;; x should be Float32(0x426C2A14 [Rational(3869317, 65536), 59.041092])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTZ (/ 9673293431.0 163840000.0))))
;; w should be Float32(0x426C2A15 [Rational(15477269, 262144), 59.041096])

(assert (not (distinct x w)))
(check-sat)
(exit)
