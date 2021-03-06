(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; fp.from.ubv(BitVec 16)
(declare-const x (_ BitVec 16))
(assert (bvuge x #b0101110101010110))
;; x should be 23894

(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTN x)))
(assert (not (fp.geq r (fp #b0 #b10000001101 #b0111010101011000000000000000000000000000000000000000))))
(check-sat)
(exit)
