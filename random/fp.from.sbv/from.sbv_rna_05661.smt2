(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; fp.from.sbv(BitVec 8)
(declare-const x (_ BitVec 8))
(assert (= x #b11110010))
;; x should be -14

(declare-const r Float64)
(assert (= r ((_ to_fp 11 53) RNA x)))
(assert (not (fp.eq r (fp #b1 #b10000000010 #b1100000000000000000000000000000000000000000000000000))))
(check-sat)
(exit)
