(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; fp.from.sbv(BitVec 32)
(declare-const x (_ BitVec 32))
(assert (bvsge x #b11111101010011000101111101111000))
;; x should be -45326472

(declare-const r Float32)
(assert (= r ((_ to_fp 8 24) RNA x)))
(assert (not (fp.geq r (fp #b1 #b10011000 #b01011001110100000100010))))
(check-sat)
(exit)
