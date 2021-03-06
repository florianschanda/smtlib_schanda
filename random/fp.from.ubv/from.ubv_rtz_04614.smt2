(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; fp.from.ubv(BitVec 128)
(declare-const x (_ BitVec 128))
(assert (bvule x #b11000000001011011101110000111010001011110110000111111000100010010010000001001011100011100011110110101010111100111110010000110100))
;; x should be 255449895289348378978164313787685135412

(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTZ x)))
(assert (not (fp.leq r (fp #b0 #b11111110 #b10000000010110111011100))))
(check-sat)
(exit)
