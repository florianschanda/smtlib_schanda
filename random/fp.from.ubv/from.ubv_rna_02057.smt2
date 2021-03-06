(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; fp.from.ubv(BitVec 32)
(declare-const x (_ BitVec 32))
(assert (bvule x #b00011010111010111101101011110010))
;; x should be 451664626

(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RNA x)))
(assert (not (fp.leq r (fp #b0 #b10011011 #b10101110101111011011000))))
(check-sat)
(exit)
