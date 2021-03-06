(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; fp.from.sbv(BitVec 64)
(declare-const x (_ BitVec 64))
(assert (= x #b0111010001100110111100111001100110001010001111011001111011110110))
;; x should be 8387659196798967542

(declare-const r Float16)
(assert (= r ((_ to_fp 5 11) RNA x)))
(assert (not (fp.eq r (_ +oo 5 11))))
(check-sat)
(exit)
