(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; fp.from.sbv(BitVec 16)
(declare-const x (_ BitVec 16))
(assert (bvsle x #b1000110001100100))
;; x should be -29596

(declare-const r Float16)
(assert (= r ((_ to_fp 5 11) RTP x)))
(assert (not (fp.leq r ((_ to_fp 5 11) #xF739))))
(check-sat)
(exit)
