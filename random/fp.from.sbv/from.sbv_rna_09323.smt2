(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; fp.from.sbv(BitVec 128)
(declare-const x (_ BitVec 128))
(assert (bvsge x #b10101010111010110001000110001000101110001100000001111111100101111000100011011000111011111010111011011000010010110010110100001111))
;; x should be -113093062242575758458319544781146215153

(declare-const r Float64)
(assert (= r ((_ to_fp 11 53) RNA x)))
(assert (fp.geq r (fp #b1 #b10001111101 #b0101010001010011101110011101110100011100111111100000)))
(check-sat)
(exit)
