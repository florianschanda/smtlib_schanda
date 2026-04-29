(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; inside interval
(declare-const x Float32)
(assert (= x (fp #b0 #b00110001 #b00110100110011101011001)))
;; x should be Float32(0x189A6759 [Rational(10119001, 2535301200456458802993406410752), 0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTN (/ 40085494087209803709222838927366674731.0 10043362776618689222137263077132266265763768711142455220633600.0))))
;; w should be Float32(0x189A6759 [Rational(10119001, 2535301200456458802993406410752), 0.000000])

(assert (not (= x w)))
(check-sat)
(exit)
