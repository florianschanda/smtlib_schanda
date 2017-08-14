(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; inside interval
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xC6245B94)))
;; x should be Float32(0xC6245B94 [Rational(-2692837, 256), -10518.894531])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTP (- (/ 344683161.0 32768.0)))))
;; w should be Float32(0xC6245B94 [Rational(-2692837, 256), -10518.894531])

(assert (= x w))
(check-sat)
(exit)
