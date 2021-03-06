(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; fp.from.sbv(BitVec 64)
(declare-const x (_ BitVec 64))
(assert (= x #b1111101000100101011001001010010000000110010101010011111101001001))
;; x should be -421820334445609143

(declare-const r Float16)
(assert (= r ((_ to_fp 5 11) RNA x)))
(assert (fp.eq r ((_ to_fp 5 11) #xFC00)))
(check-sat)
(exit)
