(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; RTN conversion of Float32(+normal) -> Float64
(declare-const x Float32)
(assert (= x (fp #b0 #b00110000 #b01001100111011001010110)))
;; x should be Float32(0x18267656 [Rational(5454635, 2535301200456458802993406410752), 0.000000])

(declare-const y Float64)
(assert (= y ((_ to_fp 11 53) RTN x)))
;; y should be Float64(0x3B04CECAC0000000 [Rational(5454635, 2535301200456458802993406410752), 0.000000])

(declare-const z Float64)
(assert (= z (fp #b0 #b01110110000 #b0100110011101100101011000000000000000000000000000000)))
;; z should be y

(assert (= y z))
(check-sat)
(exit)
