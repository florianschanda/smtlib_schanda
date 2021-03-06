(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; fp.from.ubv(BitVec 128)
(declare-const x (_ BitVec 128))
(assert (bvule x #b11001001010100011001001010001100001000000110101011000000111100011001110010010101101110111110001010011001100111111000011010010011))
;; x should be 267598375532086874234940705364812727955

(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RNA x)))
(assert (not (fp.leq r (fp #b0 #b10001111110 #b1001001010100011001001010001100001000000110101011000))))
(check-sat)
(exit)
