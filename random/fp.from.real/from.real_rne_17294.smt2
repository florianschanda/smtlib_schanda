(set-info :smt-lib-version 2.6)
(set-logic QF_FPLRA)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; hard: non-literal interval check
(declare-const x Float32)
(assert (= x (fp #b0 #b10010101 #b11110100010000001110111)))
;; x should be Float32(0x4AFA2077 [Rational(16392311, 2), 8196155.500000])

(declare-const r Real)
(assert (and (> r (/ 32784621.0 4.0)) (< r (/ 32784623.0 4.0))))
(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNE r)))
(assert (not (= x w)))
(check-sat)
(exit)
