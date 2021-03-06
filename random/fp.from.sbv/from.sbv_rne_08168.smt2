(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; fp.from.sbv(BitVec 64)
(declare-const x (_ BitVec 64))
(assert (= x #b1001101000001100100000000110101011000001001011110011101000100100))
;; x should be -7346355696152135132

(declare-const r Float16)
(assert (= r ((_ to_fp 5 11) RNE x)))
(assert (not (fp.eq r (_ -oo 5 11))))
(check-sat)
(exit)
