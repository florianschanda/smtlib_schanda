(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; fp.from.sbv(BitVec 64)
(declare-const x (_ BitVec 64))
(assert (= x #b1100001010010100100100100001000000110111011000001011110010010100))
;; x should be -4425751935452136300

(declare-const r Float32)
(assert (= r ((_ to_fp 8 24) RTN x)))
(assert (not (fp.eq r (fp #b1 #b10111100 #b11101011010110110111000))))
(check-sat)
(exit)
