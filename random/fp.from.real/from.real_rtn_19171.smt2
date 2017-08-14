(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; inside interval
(declare-const x Float32)
(assert (= x (fp #b1 #b00000000 #b00110001000011010110110)))
;; x should be Float32(0x801886B6 [Rational(-803675, 356811923176489970264571492362373784095686656), -0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTN (- (/ 2867608166981125054182221892507926614277130355406583.0 1273147485209053803917778555255861350657167746041210156647587780846488312352085441364623360.0)))))
;; w should be Float32(0x801886B6 [Rational(-803675, 356811923176489970264571492362373784095686656), -0.000000])

(assert (not (= x w)))
(check-sat)
(exit)
