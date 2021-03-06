(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; fp.from.sbv(BitVec 128)
(declare-const x (_ BitVec 128))
(assert (bvsle x #b11101001100010111111101011010100111111010010000101010110110101111011101101001000110111000010001000001100000010010100000000000100))
;; x should be -29845427162605345954865900643165847548

(declare-const r Float64)
(assert (= r ((_ to_fp 11 53) RNA x)))
(assert (fp.leq r (fp #b1 #b10001111011 #b0110011101000000010100101011000000101101111010101001)))
(check-sat)
(exit)
