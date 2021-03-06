(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; fp.from.sbv(BitVec 128)
(declare-const x (_ BitVec 128))
(assert (= x #b10000001101000100011010110111010110011101110000111111000100111000101011000100110111011111010101010110010101010100100111000000000))
;; x should be -167969713605427358227864179101662556672

(declare-const r Float64)
(assert (= r ((_ to_fp 11 53) RTP x)))
(assert (fp.eq r ((_ to_fp 11 53) #xC7DF9772914C4781)))
(check-sat)
(exit)
