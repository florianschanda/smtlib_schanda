(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; fp.from.sbv(BitVec 64)
(declare-const x (_ BitVec 64))
(assert (= x #b0001010101010100111110100100111010111000001000001110000101111100))
;; x should be 1537128588843737468

(declare-const r Float16)
(assert (= r ((_ to_fp 5 11) RTZ x)))
(assert (not (fp.eq r (fp #b0 #b11110 #b1111111111))))
(check-sat)
(exit)
