(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; RTN conversion of Float32(-halfpoint) -> Float64
(declare-const x Float32)
(assert (= x (fp #b1 #b10010101 #b00010011110011010001101)))
;; x should be Float32(0xCA89E68D [Rational(-9037453, 2), -4518726.500000])

(declare-const y Float64)
(assert (= y ((_ to_fp 11 53) RTN x)))
;; y should be Float64(0xC1513CD1A0000000 [Rational(-9037453, 2), -4518726.500000])

(declare-const z Float64)
(assert (= z ((_ to_fp 11 53) #xC1513CD1A0000000)))
;; z should be y

(assert (= y z))
(check-sat)
(exit)
