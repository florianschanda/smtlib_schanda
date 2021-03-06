(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; fp.from.ubv(BitVec 128)
(declare-const x (_ BitVec 128))
(assert (bvule x #b01001010110001010010101000001111100110100101101000010100001111101100011110111010111011100011011101000010001101001100010001001100))
;; x should be 99386607266610517163497424577868645452

(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTP x)))
(assert (fp.leq r (fp #b0 #b10001111101 #b0010101100010100101010000011111001101001011010000110)))
(check-sat)
(exit)
