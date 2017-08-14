(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; above
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x47CF6FC0)))
;; x should be Float32(0x47CF6FC0 [Rational(212415, 2), 106207.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTP (/ 1699325.0 16.0))))
;; w should be Float32(0x47CF6FE8 [Rational(1699325, 16), 106207.812500])

(assert (distinct x w))
(check-sat)
(exit)
