(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; above
(declare-const x Float32)
(assert (= x (fp #b1 #b10010101 #b01100001111100011011101)))
;; x should be Float32(0xCAB0F8DD [Rational(-11598045, 2), -5799022.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTP (/ 7443875.0 8.0))))
;; w should be Float32(0x49632B46 [Rational(7443875, 8), 930484.375000])

(assert (distinct x w))
(check-sat)
(exit)
