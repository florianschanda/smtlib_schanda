(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; fp.from.sbv(BitVec 64)
(declare-const x (_ BitVec 64))
(assert (bvsge x #b1111101110110100111101001101010001101010110010110111110001101111))
;; x should be -309353281219756945

(declare-const r Float16)
(assert (= r ((_ to_fp 5 11) RTN x)))
(assert (fp.geq r ((_ to_fp 5 11) #xFC00)))
(check-sat)
(exit)
