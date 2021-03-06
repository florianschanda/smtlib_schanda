(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; fp.from.sbv(BitVec 128)
(declare-const x (_ BitVec 128))
(assert (bvsle x #b10010000101010001001101000100100010000100000000000001110000001000101010100110110100010011010110011111111001001101110110101110101))
;; x should be -147998103291957837011605068600028238475

(declare-const r Float16)
(assert (= r ((_ to_fp 5 11) RTZ x)))
(assert (fp.leq r (fp #b1 #b11110 #b1111111111)))
(check-sat)
(exit)
