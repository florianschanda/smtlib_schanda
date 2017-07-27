(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; RTP conversion of Float32(-subnormal) -> Float64
(declare-const x Float32)
(assert (= x (fp #b1 #b00000000 #b01110011000101101000000)))
;; x should be Float32(0x80398B40 [Rational(-58925, 11150372599265311570767859136324180752990208), -0.000000])

(declare-const y Float64)
(assert (= y ((_ to_fp 11 53) RTP x)))
;; y should be Float64(0xB7FCC5A000000000 [Rational(-58925, 11150372599265311570767859136324180752990208), -0.000000])

(declare-const z Float64)
(assert (= z ((_ to_fp 11 53) #xB7FCC5A000000000)))
;; z should be y

(assert (= y z))
(check-sat)
(exit)
