(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; fp.from.sbv(BitVec 64)
(declare-const x (_ BitVec 64))
(assert (= x #b0000000101000110110001110000111100000000010011101001101111000110))
;; x should be 91979709651262406

(declare-const r Float64)
(assert (= r ((_ to_fp 11 53) RTZ x)))
(assert (fp.eq r (fp #b0 #b10000110111 #b0100011011000111000011110000000001001110100110111100)))
(check-sat)
(exit)
