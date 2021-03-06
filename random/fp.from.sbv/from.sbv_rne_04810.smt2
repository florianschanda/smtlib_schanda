(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; fp.from.sbv(BitVec 8)
(declare-const x (_ BitVec 8))
(assert (bvsge x #b00100100))
;; x should be 36

(declare-const r Float64)
(assert (= r ((_ to_fp 11 53) RNE x)))
(assert (not (fp.geq r ((_ to_fp 11 53) #x4042000000000000))))
(check-sat)
(exit)
