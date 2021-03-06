(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; fp.from.sbv(BitVec 64)
(declare-const x (_ BitVec 64))
(assert (= x #b0010101001100101001010011101111010000101101001011010110011001111))
;; x should be 3054893957942455503

(declare-const r Float64)
(assert (= r ((_ to_fp 11 53) RTN x)))
(assert (not (fp.eq r (fp #b0 #b10000111100 #b0101001100101001010011101111010000101101001011010110))))
(check-sat)
(exit)
