(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; fp.from.ubv(BitVec 32)
(declare-const x (_ BitVec 32))
(assert (bvuge x #b01011001101110000011010001111010))
;; x should be 1505244282

(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RNA x)))
(assert (not (fp.geq r ((_ to_fp 5 11) #x7C00))))
(check-sat)
(exit)
