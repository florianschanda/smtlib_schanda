(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; above
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x4991B034)))
;; x should be Float32(0x4991B034 [Rational(2386957, 2), 1193478.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNE (/ 39107906773.0 32768.0))))
;; w should be Float32(0x4991B035 [Rational(9547829, 8), 1193478.625000])

(assert (not (distinct x w)))
(check-sat)
(exit)
