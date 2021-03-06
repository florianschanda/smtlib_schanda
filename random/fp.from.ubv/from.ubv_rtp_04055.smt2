(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; fp.from.ubv(BitVec 128)
(declare-const x (_ BitVec 128))
(assert (bvule x #b00010001000011000111011110001001010101111010000110111110111000011011100101001011010101101010011111101000100001101001111110110111))
;; x should be 22661607978767821098817784911994724279

(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTP x)))
(assert (fp.leq r ((_ to_fp 11 53) #x47B10C778957A1BF)))
(check-sat)
(exit)
