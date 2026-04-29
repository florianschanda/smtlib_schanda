(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; RTZ conversion of Float32(-normal) -> Float64
(declare-const x Float32)
(assert (= x (fp #b1 #b10100001 #b00110100001110101110000)))
;; x should be Float32(0xD09A1D70 [Rational(-20684963840), -20684963840.000000])

(declare-const y Float64)
(assert (= y ((_ to_fp 11 53) RTZ x)))
;; y should be Float64(0xC21343AE00000000 [Rational(-20684963840), -20684963840.000000])

(declare-const z Float64)
(assert (= z (fp #b1 #b10000100001 #b0011010000111010111000000000000000000000000000000000)))
;; z should be y

(assert (= y z))
(check-sat)
(exit)
