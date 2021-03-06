(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; fp.from.ubv(BitVec 128)
(declare-const x (_ BitVec 128))
(assert (bvuge x #b00101101111000101000111000100011110111011001101001001001001110101110001110100010110100110111001110110101000101101010011011111001))
;; x should be 60991601844082199426976450293825709817

(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTN x)))
(assert (not (fp.geq r (fp #b0 #b11110 #b1111111111))))
(check-sat)
(exit)
