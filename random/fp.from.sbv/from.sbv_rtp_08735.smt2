(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; fp.from.sbv(BitVec 128)
(declare-const x (_ BitVec 128))
(assert (bvsle x #b00011011011010011010001101100000010100111010111111110001111100110010000001011110110101011101000111100000011000000110100101010001))
;; x should be 36437660720907842469871924184378009937

(declare-const r Float32)
(assert (= r ((_ to_fp 8 24) RTP x)))
(assert (not (fp.leq r ((_ to_fp 8 24) #x7DDB4D1C))))
(check-sat)
(exit)
