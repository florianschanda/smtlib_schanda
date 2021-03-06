(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; fp.from.sbv(BitVec 64)
(declare-const x (_ BitVec 64))
(assert (bvsge x #b1011101011010011110101101101010111010000101010011101100001001010))
;; x should be -4984404148751837110

(declare-const r Float16)
(assert (= r ((_ to_fp 5 11) RTP x)))
(assert (fp.geq r ((_ to_fp 5 11) #xFBFF)))
(check-sat)
(exit)
