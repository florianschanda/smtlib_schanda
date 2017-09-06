(set-info :smt-lib-version 2.6)
(set-logic QF_FPLIA)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.int RTN -halfpoint)
(declare-const x Float32)
(assert (= x (fp #b1 #b10010011 #b11101100100111101101100)))
;; x should be Float32(0xC9F64F6C [Rational(-4035547, 2), -2017773.500000])

(declare-const y Int)
(assert (= y (fp.to_int x)))
;; y should be -2017774

(declare-const z Int)
(assert (= z (- 2017774)))
(assert (= y z))
