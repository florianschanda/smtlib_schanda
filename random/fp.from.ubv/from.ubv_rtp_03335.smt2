(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; fp.from.ubv(BitVec 64)
(declare-const x (_ BitVec 64))
(assert (bvuge x #b0100111101001001101100111010100111000010100001010001011001000011))
;; x should be 5713295143990531651

(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTP x)))
(assert (not (fp.geq r (fp #b0 #b10111101 #b00111101001001101101000))))
(check-sat)
(exit)
