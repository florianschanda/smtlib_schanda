(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; above
(declare-const x Float32)
(assert (= x (fp #b1 #b10111011 #b10111110010010001000000)))
;; x should be Float32(0xDDDF2440 [Rational(-2009880867295461376), -2009880867295461376.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTN 777058840026356805.0)))
;; w should be Float32(0x5D2C8AAE [Rational(777058814770806784), 777058814770806784.000000])

(assert (not (distinct x w)))
(check-sat)
(exit)
