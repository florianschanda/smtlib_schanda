(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; fp.from.sbv(BitVec 32)
(declare-const x (_ BitVec 32))
(assert (= x #b11101100001110101111111101111111))
;; x should be -331677825

(declare-const r Float32)
(assert (= r ((_ to_fp 8 24) RNE x)))
(assert (fp.eq r (fp #b1 #b10011011 #b00111100010100000000100)))
(check-sat)
(exit)
