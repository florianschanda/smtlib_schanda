(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; fp.from.sbv(BitVec 128)
(declare-const x (_ BitVec 128))
(assert (bvsge x #b01111011110111011110100101001011110011011101110011100100111011111101010000110100110111101001101111110010110110111010100101010001))
;; x should be 164647272894542160499419584127498430801

(declare-const r Float32)
(assert (= r ((_ to_fp 8 24) RNE x)))
(assert (fp.geq r ((_ to_fp 8 24) #x7EF7BBD3)))
(check-sat)
(exit)
