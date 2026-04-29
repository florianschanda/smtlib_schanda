(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; RTP conversion of Float32(-normal) -> Float16
(declare-const x Float32)
(assert (= x (fp #b1 #b01110000 #b10100101001110011001111)))
;; x should be Float32(0xB8529CCF [Rational(-13802703, 274877906944), -0.000050])

(declare-const y Float16)
(assert (= y ((_ to_fp 5 11) RTP x)))
;; y should be Float16(0x834A [Rational(-421, 8388608), -0.000050])

(declare-const z Float16)
(assert (= z (fp #b1 #b00000 #b1101001010)))
;; z should be y

(assert (= y z))
(check-sat)
(exit)
