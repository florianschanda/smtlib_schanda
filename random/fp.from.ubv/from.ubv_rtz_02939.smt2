(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; fp.from.ubv(BitVec 64)
(declare-const x (_ BitVec 64))
(assert (= x #b0001010010010010111100110010100000100111101100101010101110010100))
;; x should be 1482514581148576660

(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTZ x)))
(assert (not (fp.eq r (fp #b0 #b11110 #b1111111111))))
(check-sat)
(exit)
