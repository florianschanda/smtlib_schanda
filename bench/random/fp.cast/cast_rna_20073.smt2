(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; RNA conversion of Float32(-halfpoint) -> Float64
(declare-const x Float32)
(assert (= x (fp #b1 #b10010100 #b00100100001011000110110)))
;; x should be Float32(0xCA121636 [Rational(-4786971, 2), -2393485.500000])

(declare-const y Float64)
(assert (= y ((_ to_fp 11 53) RNA x)))
;; y should be Float64(0xC14242C6C0000000 [Rational(-4786971, 2), -2393485.500000])

(declare-const z Float64)
(assert (= z (fp #b1 #b10000010100 #b0010010000101100011011000000000000000000000000000000)))
;; z should be y

(assert (= y z))
(check-sat)
(exit)
