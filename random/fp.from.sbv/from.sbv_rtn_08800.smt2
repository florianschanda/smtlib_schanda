(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; fp.from.sbv(BitVec 128)
(declare-const x (_ BitVec 128))
(assert (bvsge x #b00001110001010010010011101110010100011011110000110001111111111000110000010110101111101001011110101111101110101011001010100010110))
;; x should be 18822876202083893842882317081931781398

(declare-const r Float64)
(assert (= r ((_ to_fp 11 53) RTN x)))
(assert (not (fp.geq r (fp #b0 #b10001111010 #b1100010100100100111011100101000110111100001100011111))))
(check-sat)
(exit)
