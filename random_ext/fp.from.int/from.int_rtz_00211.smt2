(set-info :smt-lib-version 2.6)
(set-logic QF_FPLIA)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.from.int RTZ precise_int)
(declare-const x Int)
(assert (= x (- 5922301324523845)))
(declare-const y Float64)
(assert (= y ((_ to_fp 11 53) x)))
;; y should be Float64(0xC3350A4D3AB37945 [Rational(-5922301324523845), -5922301324523845.000000])

(declare-const z Float64)
(assert (= z (fp #b1 #b10000110011 #b0101000010100100110100111010101100110111100101000101)))
(assert (= y z))
