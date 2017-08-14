(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; inside interval
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x12A2C4CB)))
;; x should be Float32(0x12A2C4CB [Rational(10667211, 10384593717069655257060992658440192), 0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNA (/ 11077465509401840367259859645003258478076539.0 10783978666860255917866806034807852269454857769016228992441444099686400.0))))
;; w should be Float32(0x12A2C4CB [Rational(10667211, 10384593717069655257060992658440192), 0.000000])

(assert (not (= x w)))
(check-sat)
(exit)
