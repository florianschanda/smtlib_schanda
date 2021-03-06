(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; fp.from.ubv(BitVec 16)
(declare-const x (_ BitVec 16))
(assert (bvule x #b0110010100000101))
;; x should be 25861

(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTN x)))
(assert (fp.leq r (fp #b0 #b10000001101 #b1001010000010100000000000000000000000000000000000000)))
(check-sat)
(exit)
