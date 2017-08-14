(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; above
(declare-const x Float32)
(assert (= x (fp #b0 #b10010101 #b00001011000011010000011)))
;; x should be Float32(0x4A858683 [Rational(8750723, 2), 4375361.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNA (/ 560046319.0 128.0))))
;; w should be Float32(0x4A858684 [Rational(4375362), 4375362.000000])

(assert (distinct x w))
(check-sat)
(exit)
