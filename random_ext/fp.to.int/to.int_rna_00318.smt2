(set-info :smt-lib-version 2.6)
(set-logic QF_FPLIA)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.int RNA -halfpoint)
(declare-const x Float32)
(assert (= x (fp #b1 #b10010011 #b01111111111011000011100)))
;; x should be Float32(0xC9BFF61C [Rational(-3145095, 2), -1572547.500000])

(declare-const y Int)
(assert (= y (fp.to_int x)))
;; y should be -1572548

(declare-const z Int)
(assert (= z (- 1572548)))
(assert (= y z))
