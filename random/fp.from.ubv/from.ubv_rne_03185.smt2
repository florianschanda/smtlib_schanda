(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; fp.from.ubv(BitVec 64)
(declare-const x (_ BitVec 64))
(assert (= x #b0111010111000111101110001111110011111000010111111010011110111101))
;; x should be 8486955419441276861

(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RNE x)))
(assert (fp.eq r (fp #b0 #b10000111101 #b1101011100011110111000111111001111100001011111101010)))
(check-sat)
(exit)
