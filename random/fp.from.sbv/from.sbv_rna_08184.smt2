(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; fp.from.sbv(BitVec 64)
(declare-const x (_ BitVec 64))
(assert (bvsle x #b1001001111011001010101011010000011111010000000101000101100011100))
;; x should be -7793103530310333668

(declare-const r Float16)
(assert (= r ((_ to_fp 5 11) RNA x)))
(assert (not (fp.leq r (fp #b1 #b11111 #b0000000000))))
(check-sat)
(exit)
