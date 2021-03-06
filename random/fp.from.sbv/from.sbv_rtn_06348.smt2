(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; fp.from.sbv(BitVec 16)
(declare-const x (_ BitVec 16))
(assert (bvsge x #b1001111111000001))
;; x should be -24639

(declare-const r Float32)
(assert (= r ((_ to_fp 8 24) RTN x)))
(assert (fp.geq r (fp #b1 #b10001101 #b10000000111111000000000)))
(check-sat)
(exit)
