(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; fp.from.sbv(BitVec 64)
(declare-const x (_ BitVec 64))
(assert (bvsle x #b1011010001110100000111000001001000111101110011111011100110101110))
;; x should be -5443695184912074322

(declare-const r Float32)
(assert (= r ((_ to_fp 8 24) RTP x)))
(assert (not (fp.leq r (fp #b1 #b10111101 #b00101110001011111000111))))
(check-sat)
(exit)
