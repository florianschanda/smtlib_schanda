(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; fp.from.sbv(BitVec 128)
(declare-const x (_ BitVec 128))
(assert (bvsge x #b11001101100101100010010100010000010001100111010101011010000111101010000110110111001100110001010000001101100010000010011010100001))
;; x should be -67011031517638729447351812454318856543

(declare-const r Float64)
(assert (= r ((_ to_fp 11 53) RNA x)))
(assert (not (fp.geq r (fp #b1 #b10001111100 #b1001001101001110110101110111110111001100010101010011))))
(check-sat)
(exit)
