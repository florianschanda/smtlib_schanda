(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; fp.from.sbv(BitVec 32)
(declare-const x (_ BitVec 32))
(assert (= x #b11000011101001111000011100010111))
;; x should be -1012431081

(declare-const r Float16)
(assert (= r ((_ to_fp 5 11) RNE x)))
(assert (not (fp.eq r (_ -oo 5 11))))
(check-sat)
(exit)
