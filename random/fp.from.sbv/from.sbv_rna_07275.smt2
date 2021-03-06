(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; fp.from.sbv(BitVec 32)
(declare-const x (_ BitVec 32))
(assert (bvsge x #b10010110010010111100101110010101))
;; x should be -1773417579

(declare-const r Float32)
(assert (= r ((_ to_fp 8 24) RNA x)))
(assert (fp.geq r ((_ to_fp 8 24) #xCED36869)))
(check-sat)
(exit)
