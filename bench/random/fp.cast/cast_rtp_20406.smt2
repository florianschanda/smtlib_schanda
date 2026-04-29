(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; RTP conversion of Float32(-normal) -> Float64
(declare-const x Float32)
(assert (= x (fp #b1 #b01110000 #b10100101001110011001111)))
;; x should be Float32(0xB8529CCF [Rational(-13802703, 274877906944), -0.000050])

(declare-const y Float64)
(assert (= y ((_ to_fp 11 53) RTP x)))
;; y should be Float64(0xBF0A5399E0000000 [Rational(-13802703, 274877906944), -0.000050])

(declare-const z Float64)
(assert (= z (fp #b1 #b01111110000 #b1010010100111001100111100000000000000000000000000000)))
;; z should be y

(assert (= y z))
(check-sat)
(exit)
