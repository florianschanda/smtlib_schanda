(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; fp.from.ubv(BitVec 128)
(declare-const x (_ BitVec 128))
(assert (bvule x #b01110001011001101001000110000011100001000110000011100010100110100001110011001010111100011000011111011110111101011011011100001111))
;; x should be 150735329172517013189879011050706548495

(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTP x)))
(assert (fp.leq r (fp #b0 #b10001111101 #b1100010110011010010001100000111000010001100000111001)))
(check-sat)
(exit)
