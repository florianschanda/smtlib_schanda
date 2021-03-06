(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; fp.from.ubv(BitVec 16)
(declare-const x (_ BitVec 16))
(assert (bvuge x #b0101111110011000))
;; x should be 24472

(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTP x)))
(assert (fp.geq r (fp #b0 #b11101 #b0111111010)))
(check-sat)
(exit)
