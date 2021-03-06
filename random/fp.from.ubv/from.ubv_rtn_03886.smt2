(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; fp.from.ubv(BitVec 128)
(declare-const x (_ BitVec 128))
(assert (bvule x #b00010011110001001100011110100110001100100100000000010101100111110001011101111011111101000000010001010010101001000011101000001100))
;; x should be 26277071471124055698601969527355095564

(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTN x)))
(assert (not (fp.leq r ((_ to_fp 5 11) #x7BFF))))
(check-sat)
(exit)
