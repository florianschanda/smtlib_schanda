(set-info :smt-lib-version 2.6)
(set-logic QF_FPLIA)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.int RNA +halfpoint)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010101 #b10011001010100000011111)))
;; x should be Float32(0x4ACCA81F [Rational(13412383, 2), 6706191.500000])

(declare-const y Int)
(assert (= y (fp.to_int x)))
;; y should be 6706192

(declare-const z Int)
(assert (= z 6706192))
(assert (= y z))
