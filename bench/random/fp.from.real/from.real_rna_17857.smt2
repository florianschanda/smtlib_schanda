(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; above
(declare-const x Float32)
(assert (= x (fp #b0 #b00100101 #b01000101100010011001011)))
;; x should be Float32(0x12A2C4CB [Rational(10667211, 10384593717069655257060992658440192), 0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNA (/ 213344237709.0 207691874341393105141219853168803840000.0))))
;; w should be Float32(0x12A2C4CC [Rational(2666803, 2596148429267413814265248164610048), 0.000000])

(assert (not (distinct x w)))
(check-sat)
(exit)
