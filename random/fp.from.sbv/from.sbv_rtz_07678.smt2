(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; fp.from.sbv(BitVec 32)
(declare-const x (_ BitVec 32))
(assert (= x #b11011000101101011000110100100011))
;; x should be -659190493

(declare-const r Float64)
(assert (= r ((_ to_fp 11 53) RTZ x)))
(assert (fp.eq r (fp #b1 #b10000011100 #b0011101001010011100101101110100000000000000000000000)))
(check-sat)
(exit)
