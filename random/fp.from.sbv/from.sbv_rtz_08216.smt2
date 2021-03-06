(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; fp.from.sbv(BitVec 64)
(declare-const x (_ BitVec 64))
(assert (= x #b1010110011111001111010010001011000001110110010100010111010100000))
;; x should be -5982494349038309728

(declare-const r Float16)
(assert (= r ((_ to_fp 5 11) RTZ x)))
(assert (fp.eq r (fp #b1 #b11110 #b1111111111)))
(check-sat)
(exit)
