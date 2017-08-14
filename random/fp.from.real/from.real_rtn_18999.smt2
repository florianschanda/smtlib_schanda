(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; above
(declare-const x Float32)
(assert (= x (fp #b1 #b10010011 #b00011111011100100001100)))
;; x should be Float32(0xC98FB90C [Rational(-2354755, 2), -1177377.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTN (/ 2385251795.0 4096.0))))
;; w should be Float32(0x490E2C0D [Rational(9317389, 16), 582336.812500])

(assert (distinct x w))
(check-sat)
(exit)
