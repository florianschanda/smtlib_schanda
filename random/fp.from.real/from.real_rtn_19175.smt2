(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; above
(declare-const x Float32)
(assert (= x (fp #b1 #b00000000 #b00110001000011010110110)))
;; x should be Float32(0x801886B6 [Rational(-803675, 356811923176489970264571492362373784095686656), -0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTN (/ 1958833629.0 892029807941224925661428730905934460239216640000.0))))
;; w should be Float32(0x0017E95A [Rational(783533, 356811923176489970264571492362373784095686656), 0.000000])

(assert (not (distinct x w)))
(check-sat)
(exit)
