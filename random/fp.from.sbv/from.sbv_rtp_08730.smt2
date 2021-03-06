(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; fp.from.sbv(BitVec 128)
(declare-const x (_ BitVec 128))
(assert (= x #b00110010101111101110111110000100110111011111101010011111001100001010010000010100001010100011001101001111110100110110111110101101))
;; x should be 67452794215079305905693563672553811885

(declare-const r Float32)
(assert (= r ((_ to_fp 8 24) RTP x)))
(assert (fp.eq r (fp #b0 #b11111100 #b10010101111101110111111)))
(check-sat)
(exit)
