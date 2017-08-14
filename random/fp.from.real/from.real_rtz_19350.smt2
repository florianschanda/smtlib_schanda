(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; below
(declare-const x Float32)
(assert (= x (fp #b0 #b10000100 #b11011000010101000010100)))
;; x should be Float32(0x426C2A14 [Rational(3869317, 65536), 59.041092])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTZ (/ 5468891321.0 655360000.0))))
;; w should be Float32(0x41058492 [Rational(4375113, 524288), 8.344866])

(assert (not (distinct x w)))
(check-sat)
(exit)
