(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; fp.from.ubv(BitVec 16)
(declare-const x (_ BitVec 16))
(assert (bvule x #b1111110100101100))
;; x should be 64812

(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RNE x)))
(assert (not (fp.leq r ((_ to_fp 8 24) #x477D2C00))))
(check-sat)
(exit)
