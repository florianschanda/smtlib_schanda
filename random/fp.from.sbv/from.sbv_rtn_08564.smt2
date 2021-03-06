(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; fp.from.sbv(BitVec 64)
(declare-const x (_ BitVec 64))
(assert (= x #b1110110011101000100101101000100000110111010100100000111101110010))
;; x should be -1375684174373843086

(declare-const r Float16)
(assert (= r ((_ to_fp 5 11) RTN x)))
(assert (not (fp.eq r ((_ to_fp 5 11) #xFC00))))
(check-sat)
(exit)
