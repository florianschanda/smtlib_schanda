(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; fp.from.sbv(BitVec 64)
(declare-const x (_ BitVec 64))
(assert (= x #b0001010010100111010110010000110001100000100111011111001101111100))
;; x should be 1488256111564682108

(declare-const r Float64)
(assert (= r ((_ to_fp 11 53) RNE x)))
(assert (fp.eq r (fp #b0 #b10000111011 #b0100101001110101100100001100011000001001110111110011)))
(check-sat)
(exit)
