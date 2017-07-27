(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.from.binary +normal)
;; binary interchange -> float
(declare-const x (_ BitVec 32))
(assert (= x #b00101100010100100001001100110000))
;; x should be 2c521330

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) x)))
;; y should be Float32(0x2C521330 [Rational(860467, 288230376151711744), 0.000000])

(assert (= y (fp #b0 #b01011000 #b10100100001001100110000)))
(check-sat)
(exit)
