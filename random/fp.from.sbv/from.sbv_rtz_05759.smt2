(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; fp.from.sbv(BitVec 8)
(declare-const x (_ BitVec 8))
(assert (bvsge x #b11100011))
;; x should be -29

(declare-const r Float32)
(assert (= r ((_ to_fp 8 24) RTZ x)))
(assert (fp.geq r (fp #b1 #b10000011 #b11010000000000000000000)))
(check-sat)
(exit)
