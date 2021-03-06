(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; fp.from.ubv(BitVec 16)
(declare-const x (_ BitVec 16))
(assert (= x #b0100100101011100))
;; x should be 18780

(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTN x)))
(assert (not (fp.eq r (fp #b0 #b10001101 #b00100101011100000000000))))
(check-sat)
(exit)
