(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; fp.from.sbv(BitVec 64)
(declare-const x (_ BitVec 64))
(assert (= x #b1000000000000000000000000000000000000000000000000000000000000011))
;; x should be -9223372036854775805

(declare-const r Float32)
(assert (= r ((_ to_fp 8 24) RNE x)))
(assert (not (fp.eq r (fp #b1 #b10111110 #b00000000000000000000000))))
(check-sat)
(exit)
