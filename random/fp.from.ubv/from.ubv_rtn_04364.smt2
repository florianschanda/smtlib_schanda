(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; fp.from.ubv(BitVec 128)
(declare-const x (_ BitVec 128))
(assert (= x #b10101010011011101001100000010000110111101001011001010010001101111001010011100111101111011010010110110010001101011011111100110100))
;; x should be 226542996200672284027552468477402267444

(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTN x)))
(assert (fp.eq r (fp #b0 #b10001111110 #b0101010011011101001100000010000110111101001011001010)))
(check-sat)
(exit)
