(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; fp.from.sbv(BitVec 128)
(declare-const x (_ BitVec 128))
(assert (= x #b00110100101101111000000000011010101010111110111110101100011000001010010010100111000001111101111100011011100111011001110110110000))
;; x should be 70072644367500675611830938821071838640

(declare-const r Float32)
(assert (= r ((_ to_fp 8 24) RTN x)))
(assert (not (fp.eq r (fp #b0 #b11111100 #b10100101101111000000000))))
(check-sat)
(exit)
