(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; fp.from.ubv(BitVec 64)
(declare-const x (_ BitVec 64))
(assert (= x #b1011110111100001010000111001010000110101100001010101000000011110))
;; x should be 13682291446760427550

(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RNE x)))
(assert (not (fp.eq r (fp #b0 #b10111110 #b01111011110000101000100))))
(check-sat)
(exit)
