(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; fp.from.sbv(BitVec 32)
(declare-const x (_ BitVec 32))
(assert (bvsge x #b10101011110101110100011010111101))
;; x should be -1411955011

(declare-const r Float16)
(assert (= r ((_ to_fp 5 11) RNE x)))
(assert (fp.geq r (fp #b1 #b11111 #b0000000000)))
(check-sat)
(exit)
