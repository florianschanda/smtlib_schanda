(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; fp.from.ubv(BitVec 64)
(declare-const x (_ BitVec 64))
(assert (bvuge x #b0101011010111011100011010010000100100100001000000010110010111111))
;; x should be 6249744081386220735

(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTN x)))
(assert (not (fp.geq r (fp #b0 #b11110 #b1111111111))))
(check-sat)
(exit)
