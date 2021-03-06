(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; fp.from.ubv(BitVec 128)
(declare-const x (_ BitVec 128))
(assert (bvuge x #b01110011000001111010110100001101011001110001101000001101111110100110111001110101010110100011001110100000010101111011001111100010))
;; x should be 152901075512011067695075442261285647330

(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTZ x)))
(assert (fp.geq r (fp #b0 #b10001111101 #b1100110000011110101101000011010110011100011010000011)))
(check-sat)
(exit)
