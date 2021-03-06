(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; fp.from.sbv(BitVec 32)
(declare-const x (_ BitVec 32))
(assert (= x #b10011010001010001000011010100010))
;; x should be -1708620126

(declare-const r Float64)
(assert (= r ((_ to_fp 11 53) RNA x)))
(assert (not (fp.eq r ((_ to_fp 11 53) #xC1D975DE57800000))))
(check-sat)
(exit)
