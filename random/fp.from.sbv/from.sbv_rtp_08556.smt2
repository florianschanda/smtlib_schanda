(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; fp.from.sbv(BitVec 64)
(declare-const x (_ BitVec 64))
(assert (= x #b1111100101011010010111001101101001000010010110101100001101000010))
;; x should be -478968317875666110

(declare-const r Float64)
(assert (= r ((_ to_fp 11 53) RTP x)))
(assert (fp.eq r ((_ to_fp 11 53) #xC39A968C96F694F2)))
(check-sat)
(exit)
