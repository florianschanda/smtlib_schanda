(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; fp.from.ubv(BitVec 16)
(declare-const x (_ BitVec 16))
(assert (bvuge x #b0101010101011000))
;; x should be 21848

(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RNA x)))
(assert (fp.geq r ((_ to_fp 5 11) #x7556)))
(check-sat)
(exit)
