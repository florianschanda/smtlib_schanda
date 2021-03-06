(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; fp.from.sbv(BitVec 32)
(declare-const x (_ BitVec 32))
(assert (bvsle x #b00010111001111010010010111100100))
;; x should be 389883364

(declare-const r Float32)
(assert (= r ((_ to_fp 8 24) RNE x)))
(assert (not (fp.leq r ((_ to_fp 8 24) #x4DB9E92F))))
(check-sat)
(exit)
