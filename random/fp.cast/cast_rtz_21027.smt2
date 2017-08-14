(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; RTZ conversion of Float32(-subnormal) -> Float64
(declare-const x Float32)
(assert (= x (fp #b1 #b00000000 #b11001011110000010101100)))
;; x should be Float32(0x8065E0AC [Rational(-1669163, 178405961588244985132285746181186892047843328), -0.000000])

(declare-const y Float64)
(assert (= y ((_ to_fp 11 53) RTZ x)))
;; y should be Float64(0xB809782B00000000 [Rational(-1669163, 178405961588244985132285746181186892047843328), -0.000000])

(declare-const z Float64)
(assert (= z ((_ to_fp 11 53) #xB809782B00000000)))
;; z should be y

(assert (= y z))
(check-sat)
(exit)
