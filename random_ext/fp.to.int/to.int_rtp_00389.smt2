(set-info :smt-lib-version 2.6)
(set-logic QF_FPLIA)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.int RTP -normal)
(declare-const x Float32)
(assert (= x (fp #b1 #b10000010 #b01000011111111000001110)))
;; x should be Float32(0xC121FE0E [Rational(-5308167, 524288), -10.124525])

(declare-const y Int)
(assert (= y (fp.to_int x)))
;; y should be -10

(declare-const z Int)
(assert (= z (- 10)))
(assert (= y z))
