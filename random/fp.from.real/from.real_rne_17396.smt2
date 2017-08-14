(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; below
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x42B2832A)))
;; x should be Float32(0x42B2832A [Rational(5849493, 65536), 89.256180])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNE (/ 25351939177.0 327680000.0))))
;; w should be Float32(0x429ABC68 [Rational(1267597, 16384), 77.367981])

(assert (not (distinct x w)))
(check-sat)
(exit)
