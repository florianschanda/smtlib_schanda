(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; fp.from.sbv(BitVec 32)
(declare-const x (_ BitVec 32))
(assert (bvsge x #b10010110110111011011111010110010))
;; x should be -1763852622

(declare-const r Float64)
(assert (= r ((_ to_fp 11 53) RNE x)))
(assert (not (fp.geq r ((_ to_fp 11 53) #xC1DA489053800000))))
(check-sat)
(exit)
