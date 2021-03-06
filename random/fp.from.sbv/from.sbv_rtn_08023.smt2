(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; fp.from.sbv(BitVec 64)
(declare-const x (_ BitVec 64))
(assert (= x #b0100010101000110111000111100111010101001011111001110001111100101))
;; x should be 4991927713733075941

(declare-const r Float16)
(assert (= r ((_ to_fp 5 11) RTN x)))
(assert (not (fp.eq r (fp #b0 #b11110 #b1111111111))))
(check-sat)
(exit)
