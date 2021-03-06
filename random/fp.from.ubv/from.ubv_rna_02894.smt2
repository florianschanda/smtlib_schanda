(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; fp.from.ubv(BitVec 64)
(declare-const x (_ BitVec 64))
(assert (bvuge x #b0011111111111111111111111111111111111111111111111111111111111100))
;; x should be 4611686018427387900

(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RNA x)))
(assert (fp.geq r (fp #b0 #b11111 #b0000000000)))
(check-sat)
(exit)
