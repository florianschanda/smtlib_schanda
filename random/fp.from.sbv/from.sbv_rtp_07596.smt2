(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; fp.from.sbv(BitVec 32)
(declare-const x (_ BitVec 32))
(assert (bvsge x #b11001000111110001010000011111010))
;; x should be -923229958

(declare-const r Float64)
(assert (= r ((_ to_fp 11 53) RTP x)))
(assert (not (fp.geq r (fp #b1 #b10000011100 #b1011100000111010111110000011000000000000000000000000))))
(check-sat)
(exit)
