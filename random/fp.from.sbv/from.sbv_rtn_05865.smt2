(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; fp.from.sbv(BitVec 16)
(declare-const x (_ BitVec 16))
(assert (bvsge x #b0011011100010001))
;; x should be 14097

(declare-const r Float16)
(assert (= r ((_ to_fp 5 11) RTN x)))
(assert (not (fp.geq r ((_ to_fp 5 11) #x72E2))))
(check-sat)
(exit)
