(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; RTN conversion of Float32(+subnormal) -> Float64
(declare-const x Float32)
(assert (= x (fp #b0 #b00000000 #b11001011111001000011100)))
;; x should be Float32(0x0065F21C [Rational(1670279, 178405961588244985132285746181186892047843328), 0.000000])

(declare-const y Float64)
(assert (= y ((_ to_fp 11 53) RTN x)))
;; y should be Float64(0x38097C8700000000 [Rational(1670279, 178405961588244985132285746181186892047843328), 0.000000])

(declare-const z Float64)
(assert (= z (fp #b0 #b01110000000 #b1001011111001000011100000000000000000000000000000000)))
;; z should be y

(assert (= y z))
(check-sat)
(exit)
