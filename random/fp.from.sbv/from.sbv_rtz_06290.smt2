(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; fp.from.sbv(BitVec 16)
(declare-const x (_ BitVec 16))
(assert (= x #b1011111111111100))
;; x should be -16388

(declare-const r Float32)
(assert (= r ((_ to_fp 8 24) RTZ x)))
(assert (fp.eq r (fp #b1 #b10001101 #b00000000000100000000000)))
(check-sat)
(exit)
