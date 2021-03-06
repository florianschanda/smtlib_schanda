(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; fp.from.sbv(BitVec 16)
(declare-const x (_ BitVec 16))
(assert (= x #b1010111011001110))
;; x should be -20786

(declare-const r Float32)
(assert (= r ((_ to_fp 8 24) RNA x)))
(assert (not (fp.eq r (fp #b1 #b10001101 #b01000100110010000000000))))
(check-sat)
(exit)
