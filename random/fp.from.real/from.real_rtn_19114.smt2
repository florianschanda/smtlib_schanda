(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; below
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xA8D501F7)))
;; x should be Float32(0xA8D501F7 [Rational(-13959671, 590295810358705651712), -0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTN (- (/ 69798357409.0 2951479051793528258560000.0)))))
;; w should be Float32(0xA8D501F8 [Rational(-1744959, 73786976294838206464), -0.000000])

(assert (distinct x w))
(check-sat)
(exit)
