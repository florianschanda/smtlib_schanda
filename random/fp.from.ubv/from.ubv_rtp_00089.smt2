(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; fp.from.ubv(BitVec 8)
(declare-const x (_ BitVec 8))
(assert (bvuge x #b00101001))
;; x should be 41

(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTP x)))
(assert (not (fp.geq r (fp #b0 #b10100 #b0100100000))))
(check-sat)
(exit)
