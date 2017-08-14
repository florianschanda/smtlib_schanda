(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; RTP conversion of Float32(+halfpoint) -> Float64
(declare-const x Float32)
(assert (= x (fp #b0 #b10010101 #b00000011000010110001001)))
;; x should be Float32(0x4A818589 [Rational(8488329, 2), 4244164.500000])

(declare-const y Float64)
(assert (= y ((_ to_fp 11 53) RTP x)))
;; y should be Float64(0x415030B120000000 [Rational(8488329, 2), 4244164.500000])

(declare-const z Float64)
(assert (= z (fp #b0 #b10000010101 #b0000001100001011000100100000000000000000000000000000)))
;; z should be y

(assert (= y z))
(check-sat)
(exit)
