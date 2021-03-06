(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; fp.from.sbv(BitVec 128)
(declare-const x (_ BitVec 128))
(assert (bvsge x #b01010011001111101101010010000110110101001000010111111000100000011111011010110100011100000011010001111100010110101100110111010000))
;; x should be 110652156608559710589964585558142012880

(declare-const r Float64)
(assert (= r ((_ to_fp 11 53) RTN x)))
(assert (not (fp.geq r (fp #b0 #b10001111101 #b0100110011111011010100100001101101010010000101111110))))
(check-sat)
(exit)
