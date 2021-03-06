(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; fp.from.sbv(BitVec 32)
(declare-const x (_ BitVec 32))
(assert (= x #b11000000000000000000000000000011))
;; x should be -1073741821

(declare-const r Float32)
(assert (= r ((_ to_fp 8 24) RTZ x)))
(assert (fp.eq r (fp #b1 #b10011100 #b11111111111111111111111)))
(check-sat)
(exit)
