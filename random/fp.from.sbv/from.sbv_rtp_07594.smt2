(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; fp.from.sbv(BitVec 32)
(declare-const x (_ BitVec 32))
(assert (bvsle x #b11110100101100111000101101111110))
;; x should be -189559938

(declare-const r Float16)
(assert (= r ((_ to_fp 5 11) RTP x)))
(assert (fp.leq r (fp #b1 #b11110 #b1111111111)))
(check-sat)
(exit)
