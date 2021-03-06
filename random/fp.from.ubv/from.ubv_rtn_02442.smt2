(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; fp.from.ubv(BitVec 32)
(declare-const x (_ BitVec 32))
(assert (bvuge x #b10100010001001110110011110011000))
;; x should be 2720491416

(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTN x)))
(assert (fp.geq r (fp #b0 #b10000011110 #b0100010001001110110011110011000000000000000000000000)))
(check-sat)
(exit)
