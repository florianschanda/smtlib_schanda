(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; fp.from.ubv(BitVec 32)
(declare-const x (_ BitVec 32))
(assert (bvule x #b01111101000001110101111010101100))
;; x should be 2097634988

(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTP x)))
(assert (not (fp.leq r ((_ to_fp 8 24) #x4EFA0EBE))))
(check-sat)
(exit)
