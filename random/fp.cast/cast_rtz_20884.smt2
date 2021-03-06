(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; RTZ conversion of Float32(+subnormal) -> Float128
(declare-const x Float32)
(assert (= x (fp #b0 #b00000000 #b01001011011101100100100)))
;; x should be Float32(0x0025BB24 [Rational(618185, 178405961588244985132285746181186892047843328), 0.000000])

(declare-const y Float128)
(assert (= y ((_ to_fp 15 113) RTZ x)))
;; y should be Float128(0x3F7F2DD9200000000000000000000000 [Rational(618185, 178405961588244985132285746181186892047843328), 0.000000])

(declare-const z Float128)
(assert (= z ((_ to_fp 15 113) #x3F7F2DD9200000000000000000000000)))
;; z should be y

(assert (= y z))
(check-sat)
(exit)
