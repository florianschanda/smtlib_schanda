(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; fp.from.sbv(BitVec 64)
(declare-const x (_ BitVec 64))
(assert (bvsle x #b0000011001010100010110011001110011000110011111010100000011010011))
;; x should be 456087992151130323

(declare-const r Float64)
(assert (= r ((_ to_fp 11 53) RTP x)))
(assert (not (fp.leq r (fp #b0 #b10000111001 #b1001010100010110011001110011000110011111010100000100))))
(check-sat)
(exit)
