(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; fp.from.sbv(BitVec 64)
(declare-const x (_ BitVec 64))
(assert (bvsle x #b1000000000000000000000000000000000000000000000000000000000000011))
;; x should be -9223372036854775805

(declare-const r Float64)
(assert (= r ((_ to_fp 11 53) RTP x)))
(assert (fp.leq r (fp #b1 #b10000111101 #b1111111111111111111111111111111111111111111111111111)))
(check-sat)
(exit)
