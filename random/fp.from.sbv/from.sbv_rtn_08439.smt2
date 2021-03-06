(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; fp.from.sbv(BitVec 64)
(declare-const x (_ BitVec 64))
(assert (bvsge x #b1110111110111001110111011101101001111000100001000001010111010000))
;; x should be -1172662297558772272

(declare-const r Float16)
(assert (= r ((_ to_fp 5 11) RTN x)))
(assert (fp.geq r ((_ to_fp 5 11) #xFC00)))
(check-sat)
(exit)
