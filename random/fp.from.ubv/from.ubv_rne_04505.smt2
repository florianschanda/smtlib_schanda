(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; fp.from.ubv(BitVec 128)
(declare-const x (_ BitVec 128))
(assert (= x #b10110110001011010011101111011110001110001111010111111110110111110000111100101101011111111101101000000100000111011100100001110111))
;; x should be 242154362859936000698619872142795065463

(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RNE x)))
(assert (not (fp.eq r ((_ to_fp 11 53) #x47E6C5A77BC71EC0))))
(check-sat)
(exit)
