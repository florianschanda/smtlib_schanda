(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; RTZ conversion of Float32(-subnormal) -> Float128
(declare-const x Float32)
(assert (= x (fp #b1 #b00000000 #b01110000101111001001100)))
;; x should be Float32(0x80385E4C [Rational(-923539, 178405961588244985132285746181186892047843328), -0.000000])

(declare-const y Float128)
(assert (= y ((_ to_fp 15 113) RTZ x)))
;; y should be Float128(0xBF7FC2F2600000000000000000000000 [Rational(-923539, 178405961588244985132285746181186892047843328), -0.000000])

(declare-const z Float128)
(assert (= z ((_ to_fp 15 113) #xBF7FC2F2600000000000000000000000)))
;; z should be y

(assert (= y z))
(check-sat)
(exit)
