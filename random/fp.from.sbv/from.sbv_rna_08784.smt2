(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; fp.from.sbv(BitVec 128)
(declare-const x (_ BitVec 128))
(assert (bvsge x #b00111111000011110111101011100100111001010011111000111110000000010110000000110101001111100010100000111110000101101000010100001010))
;; x should be 83821740776267734625433820417765049610

(declare-const r Float64)
(assert (= r ((_ to_fp 11 53) RNA x)))
(assert (not (fp.geq r (fp #b0 #b10001111100 #b1111100001111011110101110010011100101001111100011111))))
(check-sat)
(exit)
