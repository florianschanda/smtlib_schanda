(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; fp.from.ubv(BitVec 8)
(declare-const x (_ BitVec 8))
(assert (bvule x #b01111100))
;; x should be 124

(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTZ x)))
(assert (fp.leq r ((_ to_fp 11 53) #x405F000000000000)))
(check-sat)
(exit)
