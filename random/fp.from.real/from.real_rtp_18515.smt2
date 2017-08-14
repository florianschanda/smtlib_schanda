(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; above
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xCA22492E)))
;; x should be Float32(0xCA22492E [Rational(-5317783, 2), -2658891.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTP (- (/ 7352317.0 16.0)))))
;; w should be Float32(0xC8E05FFA [Rational(-7352317, 16), -459519.812500])

(assert (distinct x w))
(check-sat)
(exit)
