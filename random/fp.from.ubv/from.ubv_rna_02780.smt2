(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; fp.from.ubv(BitVec 32)
(declare-const x (_ BitVec 32))
(assert (= x #b11000000001111101011001110011110))
;; x should be 3225334686

(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RNA x)))
(assert (not (fp.eq r (fp #b0 #b10011110 #b10000000011111010110100))))
(check-sat)
(exit)
