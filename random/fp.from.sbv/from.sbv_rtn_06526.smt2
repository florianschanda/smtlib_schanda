(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; fp.from.sbv(BitVec 16)
(declare-const x (_ BitVec 16))
(assert (= x #b1100101001011000))
;; x should be -13736

(declare-const r Float32)
(assert (= r ((_ to_fp 8 24) RTN x)))
(assert (fp.eq r ((_ to_fp 8 24) #xC656A000)))
(check-sat)
(exit)
