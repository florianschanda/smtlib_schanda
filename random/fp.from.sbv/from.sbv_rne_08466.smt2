(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; fp.from.sbv(BitVec 64)
(declare-const x (_ BitVec 64))
(assert (= x #b1100001001110011101111110101111010011011101101000111110011001001))
;; x should be -4434990794969678647

(declare-const r Float16)
(assert (= r ((_ to_fp 5 11) RNE x)))
(assert (not (fp.eq r ((_ to_fp 5 11) #xFC00))))
(check-sat)
(exit)
