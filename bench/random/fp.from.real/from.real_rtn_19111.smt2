(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; inside interval
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xA8D501F7)))
;; x should be Float32(0xA8D501F7 [Rational(-13959671, 590295810358705651712), -0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTN (- (/ 51502094158060954621208371893.0 2177807148294006166165597487563316553318400.0)))))
;; w should be Float32(0xA8D501F7 [Rational(-13959671, 590295810358705651712), -0.000000])

(assert (= x w))
(check-sat)
(exit)
