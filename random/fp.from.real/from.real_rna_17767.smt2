(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; inside interval
(declare-const x Float32)
(assert (= x (fp #b0 #b10010101 #b00001011000011010000011)))
;; x should be Float32(0x4A858683 [Rational(8750723, 2), 4375361.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNA (/ 1750144681.0 400.0))))
;; w should be Float32(0x4A858683 [Rational(8750723, 2), 4375361.500000])

(assert (= x w))
(check-sat)
(exit)
