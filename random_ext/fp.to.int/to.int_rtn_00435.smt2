(set-info :smt-lib-version 2.6)
(set-logic QF_FPLIA)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.int RTN -halfpoint)
(declare-const x Float32)
(assert (= x (fp #b1 #b10010101 #b11101111101011010101101)))
;; x should be Float32(0xCAF7D6AD [Rational(-16242349, 2), -8121174.500000])

(declare-const y Int)
(assert (= y (fp.to_int x)))
;; y should be -8121175

(declare-const z Int)
(assert (= z (- 8121175)))
(assert (= y z))
