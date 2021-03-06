(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; fp.from.sbv(BitVec 64)
(declare-const x (_ BitVec 64))
(assert (bvsle x #b1101010100001100111111010010011011001000100011000101111100011010))
;; x should be -3094820500895146214

(declare-const r Float32)
(assert (= r ((_ to_fp 8 24) RNE x)))
(assert (fp.leq r ((_ to_fp 8 24) #xDE2BCC0B)))
(check-sat)
(exit)
