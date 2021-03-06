(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; fp.from.sbv(BitVec 64)
(declare-const x (_ BitVec 64))
(assert (bvsle x #b1000000100101010010110010101000001001000110010111110100000111110))
;; x should be -9139394292441421762

(declare-const r Float16)
(assert (= r ((_ to_fp 5 11) RNE x)))
(assert (not (fp.leq r ((_ to_fp 5 11) #xFC00))))
(check-sat)
(exit)
