(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; fp.from.sbv(BitVec 32)
(declare-const x (_ BitVec 32))
(assert (bvsle x #b11111111111111111111111111111101))
;; x should be -3

(declare-const r Float16)
(assert (= r ((_ to_fp 5 11) RTZ x)))
(assert (not (fp.leq r (fp #b1 #b10000 #b1000000000))))
(check-sat)
(exit)
