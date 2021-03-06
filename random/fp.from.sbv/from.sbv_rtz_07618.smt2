(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; fp.from.sbv(BitVec 32)
(declare-const x (_ BitVec 32))
(assert (bvsge x #b11110010000100010111101011111110))
;; x should be -233735426

(declare-const r Float16)
(assert (= r ((_ to_fp 5 11) RTZ x)))
(assert (not (fp.geq r ((_ to_fp 5 11) #xFBFF))))
(check-sat)
(exit)
