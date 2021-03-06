(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; fp.from.ubv(BitVec 128)
(declare-const x (_ BitVec 128))
(assert (bvule x #b01001110100001100100011011001111100100001011100100000001111011100100111010000100001111110010111101110011111100010100111100111011))
;; x should be 104376987663958502867619280592303116091

(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTP x)))
(assert (fp.leq r (fp #b0 #b10001111101 #b0011101000011001000110110011111001000010111001000001)))
(check-sat)
(exit)
