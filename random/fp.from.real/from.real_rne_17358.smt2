(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; on low bound (inclusive)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x289F808A)))
;; x should be Float32(0x289F808A [Rational(5226565, 295147905179352825856), 0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNE (/ 20906259.0 1180591620717411303424.0))))
;; w should be Float32(0x289F808A [Rational(5226565, 295147905179352825856), 0.000000])

(assert (= x w))
(check-sat)
(exit)
