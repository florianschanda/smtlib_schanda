(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; inside interval
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xCAB0F8DD)))
;; x should be Float32(0xCAB0F8DD [Rational(-11598045, 2), -5799022.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTP (- (/ 57990229.0 10.0)))))
;; w should be Float32(0xCAB0F8DD [Rational(-11598045, 2), -5799022.500000])

(assert (= x w))
(check-sat)
(exit)
