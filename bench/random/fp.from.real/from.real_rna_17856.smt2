(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; below
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x12A2C4CB)))
;; x should be Float32(0x12A2C4CB [Rational(10667211, 10384593717069655257060992658440192), 0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNA (/ 35565144267.0 51922968585348276285304963292200960000.0))))
;; w should be Float32(0x1259128A [Rational(7113029, 10384593717069655257060992658440192), 0.000000])

(assert (not (distinct x w)))
(check-sat)
(exit)
