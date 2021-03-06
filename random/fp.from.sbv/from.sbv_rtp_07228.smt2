(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; fp.from.sbv(BitVec 32)
(declare-const x (_ BitVec 32))
(assert (bvsge x #b10101010010010110011111101000000))
;; x should be -1437909184

(declare-const r Float16)
(assert (= r ((_ to_fp 5 11) RTP x)))
(assert (not (fp.geq r (fp #b1 #b11110 #b1111111111))))
(check-sat)
(exit)
