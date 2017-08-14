(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; below
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x499419B4)))
;; x should be Float32(0x499419B4 [Rational(2426477, 2), 1213238.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTN (/ 5611311.0 8.0))))
;; w should be Float32(0x492B3E5E [Rational(5611311, 8), 701413.875000])

(assert (not (distinct x w)))
(check-sat)
(exit)
