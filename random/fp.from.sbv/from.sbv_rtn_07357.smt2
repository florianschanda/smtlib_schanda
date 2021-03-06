(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; fp.from.sbv(BitVec 32)
(declare-const x (_ BitVec 32))
(assert (= x #b10000000000000000000000000000010))
;; x should be -2147483646

(declare-const r Float64)
(assert (= r ((_ to_fp 11 53) RTN x)))
(assert (not (fp.eq r (fp #b1 #b10000011101 #b1111111111111111111111111111100000000000000000000000))))
(check-sat)
(exit)
