(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; fp.from.sbv(BitVec 128)
(declare-const x (_ BitVec 128))
(assert (bvsge x #b01011100100110010000010101100101111101111101100001011001101111001111000001101100011010100001000000011101011000110110111100010111))
;; x should be 123083506522364870312203823784967499543

(declare-const r Float16)
(assert (= r ((_ to_fp 5 11) RNE x)))
(assert (not (fp.geq r (fp #b0 #b11111 #b0000000000))))
(check-sat)
(exit)
