(set-info :smt-lib-version 2.6)
(set-logic QF_FPLIA)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.int RNE +halfpoint)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010100 #b00101001001111001001110)))
;; x should be Float32(0x4A149E4E [Rational(4869927, 2), 2434963.500000])

(declare-const y Int)
(assert (= y (fp.to_int x)))
;; y should be 2434964

(declare-const z Int)
(assert (= z 2434964))
(assert (= y z))
