(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; inside interval
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x351311EB)))
;; x should be Float32(0x351311EB [Rational(9638379, 17592186044416), 0.000001])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNA (/ 3391203245903818049183.0 6189700196426901374495621120.0))))
;; w should be Float32(0x351311EB [Rational(9638379, 17592186044416), 0.000001])

(assert (not (= x w)))
(check-sat)
(exit)
