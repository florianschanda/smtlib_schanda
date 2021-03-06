(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; fp.from.sbv(BitVec 32)
(declare-const x (_ BitVec 32))
(assert (bvsle x #b10110100010110011000111111111111))
;; x should be -1269198849

(declare-const r Float32)
(assert (= r ((_ to_fp 8 24) RNE x)))
(assert (fp.leq r ((_ to_fp 8 24) #xCE974CE0)))
(check-sat)
(exit)
