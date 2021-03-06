(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; fp.from.sbv(BitVec 64)
(declare-const x (_ BitVec 64))
(assert (bvsle x #b0001011111111101110101100110011111110110000111110111000000111101))
;; x should be 1728773573979369533

(declare-const r Float16)
(assert (= r ((_ to_fp 5 11) RNA x)))
(assert (fp.leq r (_ +oo 5 11)))
(check-sat)
(exit)
