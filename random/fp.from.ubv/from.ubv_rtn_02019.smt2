(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; fp.from.ubv(BitVec 32)
(declare-const x (_ BitVec 32))
(assert (bvule x #b00111111001011000000001000010101))
;; x should be 1059848725

(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTN x)))
(assert (not (fp.leq r (fp #b0 #b10011100 #b11111001011000000001000))))
(check-sat)
(exit)
