(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; above
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xD33E65C9)))
;; x should be Float32(0xD33E65C9 [Rational(-817751457792), -817751457792.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTP 197600875073.0)))
;; w should be Float32(0x523807B9 [Rational(197600886784), 197600886784.000000])

(assert (distinct x w))
(check-sat)
(exit)
