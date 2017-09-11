(set-info :smt-lib-version 2.6)
(set-logic QF_FPLIA)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.int RNE -normal)
(declare-const x Float32)
(assert (= x (fp #b1 #b01111100 #b00101001000011000001000)))
;; x should be Float32(0xBE148608 [Rational(-1216705, 8388608), -0.145043])

(declare-const y Int)
(assert (= y (fp.to_int x)))
;; y should be 0

(declare-const z Int)
(assert (= z 0))
(assert (= y z))
