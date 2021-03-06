(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; inside interval
(declare-const x Float32)
(assert (= x (fp #b0 #b10000100 #b11011000010101000010100)))
;; x should be Float32(0x426C2A14 [Rational(3869317, 65536), 59.041092])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTZ (/ 6339489342193.0 107374182400.0))))
;; w should be Float32(0x426C2A14 [Rational(3869317, 65536), 59.041092])

(assert (not (= x w)))
(check-sat)
(exit)
