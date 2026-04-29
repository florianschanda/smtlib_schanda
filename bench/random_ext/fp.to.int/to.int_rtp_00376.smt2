(set-info :smt-lib-version 2.6)
(set-logic QF_FPLIA)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.int RTP -halfpoint)
(declare-const x Float32)
(assert (= x (fp #b1 #b10010101 #b11011000000100000100111)))
;; x should be Float32(0xCAEC0827 [Rational(-15468583, 2), -7734291.500000])

(declare-const y Int)
(assert (= y (fp.to_int x)))
;; y should be -7734291

(declare-const z Int)
(assert (= z (- 7734291)))
(assert (= y z))
