(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; fp.from.ubv(BitVec 128)
(declare-const x (_ BitVec 128))
(assert (bvuge x #b10110001000011100101111011110001001101001111010101110000010010100000000110110011000000100101110001101001001001111010100110100011))
;; x should be 235347973066829443892241602490998958499

(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTZ x)))
(assert (not (fp.geq r (fp #b0 #b11110 #b1111111111))))
(check-sat)
(exit)
