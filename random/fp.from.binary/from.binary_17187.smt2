(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.from.binary -normal)
;; binary interchange -> float
(declare-const x (_ BitVec 32))
(assert (= x #b10101111100011001000111010011011))
;; x should be af8c8e9b

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) x)))
;; y should be Float32(0xAF8C8E9B [Rational(-9211547, 36028797018963968), -0.000000])

(assert (= y (fp #b1 #b01011111 #b00011001000111010011011)))
(check-sat)
(exit)
