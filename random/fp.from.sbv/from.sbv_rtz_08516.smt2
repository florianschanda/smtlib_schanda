(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; fp.from.sbv(BitVec 64)
(declare-const x (_ BitVec 64))
(assert (bvsle x #b1100000010110000001101110111111101000111011011010100010111001101))
;; x should be -4562085402727594547

(declare-const r Float64)
(assert (= r ((_ to_fp 11 53) RTZ x)))
(assert (fp.leq r (fp #b1 #b10000111100 #b1111101001111110010001000000010111000100100101011101)))
(check-sat)
(exit)
