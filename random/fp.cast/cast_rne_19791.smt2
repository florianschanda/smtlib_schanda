(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; RNE conversion of Float32(-halfpoint) -> Float64
(declare-const x Float32)
(assert (= x (fp #b1 #b10010101 #b11101101101001101011111)))
;; x should be Float32(0xCAF6D35F [Rational(-16175967, 2), -8087983.500000])

(declare-const y Float64)
(assert (= y ((_ to_fp 11 53) RNE x)))
;; y should be Float64(0xC15EDA6BE0000000 [Rational(-16175967, 2), -8087983.500000])

(declare-const z Float64)
(assert (= z ((_ to_fp 11 53) #xC15EDA6BE0000000)))
;; z should be y

(assert (= y z))
(check-sat)
(exit)
