(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; RTP conversion of Float32(+halfpoint) -> Float64
(declare-const x Float32)
(assert (= x (fp #b0 #b10010101 #b01100011100101011011101)))
;; x should be Float32(0x4AB1CADD [Rational(11651805, 2), 5825902.500000])

(declare-const y Float64)
(assert (= y ((_ to_fp 11 53) RTP x)))
;; y should be Float64(0x4156395BA0000000 [Rational(11651805, 2), 5825902.500000])

(declare-const z Float64)
(assert (= z ((_ to_fp 11 53) #x4156395BA0000000)))
;; z should be y

(assert (= y z))
(check-sat)
(exit)
