(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; fp.from.ubv(BitVec 128)
(declare-const x (_ BitVec 128))
(assert (= x #b00001111011111100000011110010110001110101110100000001101100111000000110011001000100000011110101111101110011101111110011100110010))
;; x should be 20592803220271394705261644836800816946

(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTN x)))
(assert (not (fp.eq r ((_ to_fp 11 53) #x47AEFC0F2C75D01B))))
(check-sat)
(exit)
