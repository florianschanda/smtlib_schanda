(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; fp.from.ubv(BitVec 64)
(declare-const x (_ BitVec 64))
(assert (= x #b1101100110001100111101101110001011001011110010000010010111100011))
;; x should be 15676175856911787491

(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTN x)))
(assert (fp.eq r (fp #b0 #b10111110 #b10110011000110011110110)))
(check-sat)
(exit)
