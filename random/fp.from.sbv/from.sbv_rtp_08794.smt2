(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; fp.from.sbv(BitVec 128)
(declare-const x (_ BitVec 128))
(assert (= x #b00110110010010111110111101011100001000011001010111100110100010010011101110100001110101001001001000001110111010011111111101110110))
;; x should be 72172588832056017217514664853756313462

(declare-const r Float16)
(assert (= r ((_ to_fp 5 11) RTP x)))
(assert (not (fp.eq r (fp #b0 #b11111 #b0000000000))))
(check-sat)
(exit)
