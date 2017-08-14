(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; inside interval
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xF52AD4E5)))
;; x should be Float32(0xF52AD4E5 [Rational(-216554804696316068728850125684736), -216554804696316068728850125684736.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNA (- (/ 5413869942084818016076800499922892.0 25.0)))))
;; w should be Float32(0xF52AD4E5 [Rational(-216554804696316068728850125684736), -216554804696316068728850125684736.000000])

(assert (not (= x w)))
(check-sat)
(exit)
