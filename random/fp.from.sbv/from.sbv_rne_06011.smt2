(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; fp.from.sbv(BitVec 16)
(declare-const x (_ BitVec 16))
(assert (= x #b0100010001110000))
;; x should be 17520

(declare-const r Float64)
(assert (= r ((_ to_fp 11 53) RNE x)))
(assert (not (fp.eq r ((_ to_fp 11 53) #x40D11C0000000000))))
(check-sat)
(exit)
