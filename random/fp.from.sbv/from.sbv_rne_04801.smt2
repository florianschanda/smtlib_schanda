(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; fp.from.sbv(BitVec 8)
(declare-const x (_ BitVec 8))
(assert (= x #b00000000))
;; x should be 0

(declare-const r Float16)
(assert (= r ((_ to_fp 5 11) RNE x)))
(assert (fp.eq r (fp #b0 #b00000 #b0000000000)))
(check-sat)
(exit)
