(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; fp.from.ubv(BitVec 64)
(declare-const x (_ BitVec 64))
(assert (bvuge x #b0100011011011110000000010100010011101010100000100100101000101101))
;; x should be 5106520422988532269

(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RNE x)))
(assert (not (fp.geq r ((_ to_fp 5 11) #x7C00))))
(check-sat)
(exit)
