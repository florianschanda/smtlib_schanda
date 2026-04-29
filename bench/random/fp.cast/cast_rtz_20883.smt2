(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; RTZ conversion of Float32(+subnormal) -> Float64
(declare-const x Float32)
(assert (= x (fp #b0 #b00000000 #b01001011011101100100100)))
;; x should be Float32(0x0025BB24 [Rational(618185, 178405961588244985132285746181186892047843328), 0.000000])

(declare-const y Float64)
(assert (= y ((_ to_fp 11 53) RTZ x)))
;; y should be Float64(0x37F2DD9200000000 [Rational(618185, 178405961588244985132285746181186892047843328), 0.000000])

(declare-const z Float64)
(assert (= z (fp #b0 #b01101111111 #b0010110111011001001000000000000000000000000000000000)))
;; z should be y

(assert (= y z))
(check-sat)
(exit)
