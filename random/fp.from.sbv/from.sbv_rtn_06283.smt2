(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; fp.from.sbv(BitVec 16)
(declare-const x (_ BitVec 16))
(assert (bvsge x #b1000101010010100))
;; x should be -30060

(declare-const r Float32)
(assert (= r ((_ to_fp 8 24) RTN x)))
(assert (not (fp.geq r (fp #b1 #b10001101 #b11010101101100000000000))))
(check-sat)
(exit)
