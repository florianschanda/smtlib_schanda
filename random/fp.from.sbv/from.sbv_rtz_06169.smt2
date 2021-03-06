(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; fp.from.sbv(BitVec 16)
(declare-const x (_ BitVec 16))
(assert (bvsle x #b0100000000000010))
;; x should be 16386

(declare-const r Float64)
(assert (= r ((_ to_fp 11 53) RTZ x)))
(assert (fp.leq r (fp #b0 #b10000001101 #b0000000000001000000000000000000000000000000000000000)))
(check-sat)
(exit)
