(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; fp.from.sbv(BitVec 8)
(declare-const x (_ BitVec 8))
(assert (bvsge x #b01110010))
;; x should be 114

(declare-const r Float16)
(assert (= r ((_ to_fp 5 11) RTN x)))
(assert (not (fp.geq r (fp #b0 #b10101 #b1100100000))))
(check-sat)
(exit)
