(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; fp.from.ubv(BitVec 128)
(declare-const x (_ BitVec 128))
(assert (bvule x #b10011111010001111110111010100011100111101010001110100010000111010000001110000100101001011110110000000111110101111011111000100010))
;; x should be 211720744583530207494927933363715554850

(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RNA x)))
(assert (fp.leq r ((_ to_fp 8 24) #x7F1F47EF)))
(check-sat)
(exit)
