(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; fp.from.ubv(BitVec 128)
(declare-const x (_ BitVec 128))
(assert (bvule x #b11100011000101000101111001111111111100101000100100110100111010011010110001101100111111011011011111010110001110110011001011101100))
;; x should be 301840517663887227357951311694157001452

(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RNE x)))
(assert (fp.leq r (fp #b0 #b11111110 #b11000110001010001011110)))
(check-sat)
(exit)
