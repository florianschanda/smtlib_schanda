(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; fp.from.ubv(BitVec 128)
(declare-const x (_ BitVec 128))
(assert (bvuge x #b11110001000010111101001111011010011011101101100100010011111011100001100000101100101011000110011101100001000111100011011010000101))
;; x should be 320405359144080189186050938122453005957

(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RNE x)))
(assert (not (fp.geq r ((_ to_fp 8 24) #x7F710BD4))))
(check-sat)
(exit)
