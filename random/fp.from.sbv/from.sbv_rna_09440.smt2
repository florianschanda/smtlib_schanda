(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; fp.from.sbv(BitVec 128)
(declare-const x (_ BitVec 128))
(assert (bvsge x #b11101101101001001010000000010101000110111001000110010100111000110011001010100011011110010001000010101011110100011111100000110101))
;; x should be -24400548377253600176954710961635067851

(declare-const r Float16)
(assert (= r ((_ to_fp 5 11) RNA x)))
(assert (not (fp.geq r (fp #b1 #b11111 #b0000000000))))
(check-sat)
(exit)
