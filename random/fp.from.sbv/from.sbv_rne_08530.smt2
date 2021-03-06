(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; fp.from.sbv(BitVec 64)
(declare-const x (_ BitVec 64))
(assert (= x #b1100111101001001001000001100011011000111100000100000001010011110))
;; x should be -3510238396435791202

(declare-const r Float16)
(assert (= r ((_ to_fp 5 11) RNE x)))
(assert (fp.eq r (fp #b1 #b11111 #b0000000000)))
(check-sat)
(exit)
