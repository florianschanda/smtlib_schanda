(set-info :smt-lib-version 2.6)
(set-logic QF_FPLIA)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.int RTP -normal)
(declare-const x Float32)
(assert (= x (fp #b1 #b01110001 #b00001111110110100110001)))
;; x should be Float32(0xB887ED31 [Rational(-8908081, 137438953472), -0.000065])

(declare-const y Int)
(assert (= y (fp.to_int x)))
;; y should be 0

(declare-const z Int)
(assert (= z 0))
(assert (= y z))
