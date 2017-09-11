(set-info :smt-lib-version 2.6)
(set-logic QF_FPLIA)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.int RNE +halfpoint)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010101 #b00111011100110011001111)))
;; x should be Float32(0x4A9DCCCF [Rational(10341583, 2), 5170791.500000])

(declare-const y Int)
(assert (= y (fp.to_int x)))
;; y should be 5170792

(declare-const z Int)
(assert (= z 5170792))
(assert (= y z))
