(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; above
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x32219407)))
;; x should be Float32(0x32219407 [Rational(10589191, 1125899906842624), 0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTN (/ 13236498327.0 1407374883553280000.0))))
;; w should be Float32(0x3221940E [Rational(5294599, 562949953421312), 0.000000])

(assert (distinct x w))
(check-sat)
(exit)
