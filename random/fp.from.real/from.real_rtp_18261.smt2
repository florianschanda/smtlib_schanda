(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; above
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x48318E60)))
;; x should be Float32(0x48318E60 [Rational(363635, 2), 181817.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTP (/ 1454543.0 8.0))))
;; w should be Float32(0x48318E78 [Rational(1454543, 8), 181817.875000])

(assert (distinct x w))
(check-sat)
(exit)
