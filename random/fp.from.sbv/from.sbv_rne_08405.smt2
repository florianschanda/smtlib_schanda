(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; fp.from.sbv(BitVec 64)
(declare-const x (_ BitVec 64))
(assert (bvsle x #b1100101001010010101010001101110110011101110110011100011000110000))
;; x should be -3867843460168301008

(declare-const r Float64)
(assert (= r ((_ to_fp 11 53) RNE x)))
(assert (fp.leq r ((_ to_fp 11 53) #xC3CAD6AB9131131D)))
(check-sat)
(exit)
