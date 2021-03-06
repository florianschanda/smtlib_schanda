(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; fp.from.sbv(BitVec 32)
(declare-const x (_ BitVec 32))
(assert (= x #b10010011101001001001101011100010))
;; x should be -1817928990

(declare-const r Float64)
(assert (= r ((_ to_fp 11 53) RTP x)))
(assert (fp.eq r ((_ to_fp 11 53) #xC1DB16D947800000)))
(check-sat)
(exit)
