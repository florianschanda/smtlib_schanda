(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; fp.from.ubv(BitVec 32)
(declare-const x (_ BitVec 32))
(assert (bvuge x #b10110001111100100000001100001101))
;; x should be 2985427725

(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTZ x)))
(assert (fp.geq r ((_ to_fp 8 24) #x4F31F203)))
(check-sat)
(exit)
