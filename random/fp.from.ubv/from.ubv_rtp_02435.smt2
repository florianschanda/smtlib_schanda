(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; fp.from.ubv(BitVec 32)
(declare-const x (_ BitVec 32))
(assert (= x #b10010010011111011100010111101100))
;; x should be 2457716204

(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTP x)))
(assert (not (fp.eq r (_ +oo 5 11))))
(check-sat)
(exit)
