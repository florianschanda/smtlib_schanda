(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; fp.from.sbv(BitVec 16)
(declare-const x (_ BitVec 16))
(assert (bvsge x #b1110010000011000))
;; x should be -7144

(declare-const r Float16)
(assert (= r ((_ to_fp 5 11) RTN x)))
(assert (fp.geq r (fp #b1 #b11011 #b1011111010)))
(check-sat)
(exit)
