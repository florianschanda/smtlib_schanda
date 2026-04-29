(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; inside interval
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xC9A8660C)))
;; x should be Float32(0xC9A8660C [Rational(-2759043, 2), -1379521.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTP (- (/ 551808647.0 400.0)))))
;; w should be Float32(0xC9A8660C [Rational(-2759043, 2), -1379521.500000])

(assert (= x w))
(check-sat)
(exit)
