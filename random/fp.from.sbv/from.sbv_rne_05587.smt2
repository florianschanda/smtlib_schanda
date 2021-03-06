(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; fp.from.sbv(BitVec 8)
(declare-const x (_ BitVec 8))
(assert (bvsle x #b11100001))
;; x should be -31

(declare-const r Float32)
(assert (= r ((_ to_fp 8 24) RNE x)))
(assert (not (fp.leq r (fp #b1 #b10000011 #b11110000000000000000000))))
(check-sat)
(exit)
