(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; above
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xCABC8F43)))
;; x should be Float32(0xCABC8F43 [Rational(-12357443, 2), -6178721.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTZ (/ 19972331.0 8.0))))
;; w should be Float32(0x4A186075 [Rational(9986165, 4), 2496541.250000])

(assert (not (distinct x w)))
(check-sat)
(exit)
