(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; fp.from.ubv(BitVec 32)
(declare-const x (_ BitVec 32))
(assert (bvuge x #b01000000000000000000000000000011))
;; x should be 1073741827

(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RNA x)))
(assert (fp.geq r (fp #b0 #b11111 #b0000000000)))
(check-sat)
(exit)
