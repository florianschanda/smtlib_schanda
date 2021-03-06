(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; fp.from.ubv(BitVec 64)
(declare-const x (_ BitVec 64))
(assert (bvule x #b1111111111111111111111111111111111111111111111111111111111111101))
;; x should be 18446744073709551613

(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RNA x)))
(assert (not (fp.leq r (_ +oo 5 11))))
(check-sat)
(exit)
