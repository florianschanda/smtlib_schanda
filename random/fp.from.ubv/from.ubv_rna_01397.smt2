(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; fp.from.ubv(BitVec 16)
(declare-const x (_ BitVec 16))
(assert (= x #b0110111111001011))
;; x should be 28619

(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RNA x)))
(assert (fp.eq r (fp #b0 #b11101 #b1011111101)))
(check-sat)
(exit)
