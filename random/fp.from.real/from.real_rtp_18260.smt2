(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; below
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x48318E60)))
;; x should be Float32(0x48318E60 [Rational(363635, 2), 181817.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTP (- (/ 96985717701.0 640000.0)))))
;; w should be Float32(0xC813FD0B [Rational(-9698571, 64), -151540.171875])

(assert (distinct x w))
(check-sat)
(exit)
