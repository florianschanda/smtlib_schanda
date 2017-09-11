(set-info :smt-lib-version 2.6)
(set-logic QF_FPLIA)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.int RTN +normal)
(declare-const x Float32)
(assert (= x (fp #b0 #b10101110 #b10011011101111010100101)))
;; x should be Float32(0x574DDEA5 [Rational(226356134674432), 226356134674432.000000])

(declare-const y Int)
(assert (= y (fp.to_int x)))
;; y should be 226356134674432

(declare-const z Int)
(assert (= z 226356134674432))
(assert (= y z))
